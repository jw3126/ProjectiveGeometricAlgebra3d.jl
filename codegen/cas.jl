module CAS

export SubDeg, SubZero, SubAll, SubEven
export sym_multivector



using SymbolicUtils
using ArgCheck
using Accessors
using OffsetArrays
using SymbolicUtils.Code

################################################################################
##### BasisBlade
################################################################################
struct BasisBlade
    # Given a basis e1,e2,e3,e4,e5
    #
    # The 5*e214 would be encoded as follows:
    # First normalize to sorted wedge: 5*e214 =  -5 *e124
    # coeff = -5
    # mask = [true, true, false, true, false] # no e3,e5
    coeff
    mask
end

function check_compatible(b1::BasisBlade, b2::BasisBlade)
    @argcheck axes(b1.mask) == axes(b2.mask)
end

function Base.isequal(b1::BasisBlade, b2::BasisBlade)
    isequal(b1.coeff, b2.coeff) && isequal(b1.mask, b2.mask)
end


function Base.:(==)(b1::BasisBlade, b2::BasisBlade)
    ==(b1.coeff, b2.coeff) && ==(b1.mask, b2.mask)
end

function genindices(o::BasisBlade)
    axes(o.mask,1)
end

function degree(o::BasisBlade)
    sum(o.mask)
end

function zerobasisblade(r::AbstractUnitRange)
    BasisBlade(0, fill(false, r))
end

function Base.:(-)(b::BasisBlade)
    @set b.coeff *= -1
end

function count_transpositions(mask1, mask2)
    @argcheck axes(mask1) == axes(mask2)
    transpositions = 0
    disjoint = true
    n = lastindex(mask1)
    for i in eachindex(mask1, mask2)
        if mask2[i]
            if mask1[i]
                disjoint = false
            end
            for j in (i+1):n
                if mask1[j]
                    transpositions += 1
                end
            end
        end
    end
    return (;transpositions, disjoint)
end

function wedge(b1::BasisBlade, b2::BasisBlade)
    @argcheck genindices(b1) == genindices(b2)
    intel = count_transpositions(b1.mask, b2.mask)
    if intel.disjoint
        coeff = (-1)^(intel.transpositions) * b1.coeff * b2.coeff
        mask::Mask = map(xor, b1.mask, b2.mask)
        ret = BasisBlade(coeff, mask)
        @check degree(ret) == degree(b1) + degree(b2)
        return ret
    else
        return zerobasisblade(genindices(b1))
    end
end

function geomul(b1::BasisBlade, b2::BasisBlade, metric::AbstractVector)
    @argcheck axes(b1.mask) == axes(b2.mask) == axes(metric)

    mask = fill(false, genindices(b1))
    coeff = b1.coeff * b2.coeff
    mask1 = b1.mask
    mask2 = b2.mask
    for i in eachindex(mask)
        if (mask1[i]) && (mask2[i])
            coeff *= metric[i]
            mask[i] = false
        elseif (mask1[i] && (!mask2[i]))
            mask[i] = true
        elseif (!mask1[i]) && mask2[i]
            mask[i] = true
        elseif (!mask1[i]) && (!mask2[i])
            mask[i] = false
        else
            error("Unreachable")
        end
    end
    sign = (-1)^count_transpositions(mask1, mask2).transpositions
    coeff *= sign
    return BasisBlade(coeff, mask)
end

function inner(b1::BasisBlade, b2::BasisBlade, metric)
    ret = geomul(b1, b2, metric)
    g1 = degree(b1)
    g2 = degree(b2)
    if degree(ret) == abs(g1 - g2)
        return ret
    else
        return zerobasisblade(eachindex(b1.mask))
    end
end

function anti_wedge(b1::BasisBlade, b2::BasisBlade)
    dual(wedge(dual(b1), dual(b2)))
end

function rev(b::BasisBlade)
    sign = (-1)^(degree(b)÷2)
    return BasisBlade(sign * b.coeff, b.mask)
end

function dual(b1::BasisBlade)
    # TODO figure out good sign convention for dual
    @assert genindices(b1) == 0:3
    d = degree(b1)
    mask::Mask = map((!), b1.mask)
    ntrans = if sum(b1.mask) <= sum(mask)
        count_transpositions(b1.mask, mask).transpositions
    else
        count_transpositions(mask, b1.mask).transpositions
    end
    sign = (-1)^ntrans
    return BasisBlade(sign*b1.coeff, mask)
end

function create_mask(r::AbstractUnitRange, inds...)
    @argcheck issorted(inds)
    mask = fill(false,r)
    for i in inds
        mask[i] = true
    end
    return mask
end

function add(b1::BasisBlade, b2::BasisBlade)
    @argcheck b1.mask == b2.mask
    BasisBlade(b1.coeff + b2.coeff, b1.mask)
end

################################################################################
##### MultiVector
################################################################################

const Mask = OffsetVector{Bool, Vector{Bool}}

struct MultiVector
    summands::Dict{Mask, Any}
    metric::OffsetVector{Float64, Vector{Float64}}
end

function check_compatible(m1::MultiVector, m2::MultiVector)
    @argcheck m1.metric == m2.metric
end

const ∧ = wedge
const ∨ = anti_wedge

function optimize!(m::MultiVector)
    for (key,val) in pairs(m.summands)
        m.summands[key] = simplify(val, expand=true)
    end
    prunezeros!(m)
end

function prunezeros!(m::MultiVector)
    filter!(m.summands) do (key, val)
        if val isa Number
            !iszero(val)
        else
            true
        end
    end
    m
end

function operate_on_basis(f, m::MultiVector)
    res = Dict{Mask, Any}()
    for (mask, coeff) in pairs(m.summands)
        b = f(BasisBlade(coeff, mask))
        if haskey(res, b.mask)
            res[b.mask] += b.coeff
        else
            res[b.mask] = b.coeff
        end
    end
    return optimize!(MultiVector(res, m.metric))
end

function operate_on_basis(f, m1::MultiVector, m2::MultiVector)
    check_compatible(m1, m2)
    res = Dict{Mask, Any}()
    for (mask1, coeff1) in pairs(m1.summands)
        for (mask2, coeff2) in pairs(m2.summands)
            b = f(BasisBlade(coeff1, mask1), BasisBlade(coeff2, mask2))
            if haskey(res, b.mask)
                res[b.mask] += b.coeff
            else
                res[b.mask] = b.coeff
            end
        end
    end
    return optimize!(MultiVector(res, m1.metric))
end

function MultiVector(b::BasisBlade, metric)
    d = Dict(b.mask => b.coeff)
    optimize!(MultiVector(d, metric))
end
function mergewith_multivectors(f, ms...)
    m1 = first(ms)
    check_compatible(ms...)
    d = mergewith(f, map(m -> m.summands, ms)...)
    optimize!(MultiVector(d, m1.metric))
end

for op in [
        :(Base.:(+)),
        :(Base.:(-)),
    ]
    @eval function $(op)(m1::MultiVector, m2::MultiVector)
        mergewith_multivectors($op, m1, m2)
    end
end

for f in [:dual, :rev, :(Base.:(-))]
    @eval $f(m::MultiVector) = operate_on_basis($f, m)
end

for op in [:wedge, :anti_wedge]
    @eval $op(m1::MultiVector, m2::MultiVector) = operate_on_basis($op, m1, m2)
end
function inner(m1::MultiVector, m2::MultiVector)
    check_compatible(m1, m2)
    operate_on_basis(m1, m2) do b1, b2
        inner(b1, b2, m1.metric)
    end
end

function geomul(m1::MultiVector, m2::MultiVector)
    check_compatible(m1, m2)
    operate_on_basis(m1, m2) do b1, b2
        geomul(b1, b2, m1.metric)
    end
end

function project(onto::MultiVector, obj::MultiVector)
    geomul(inner(obj, onto), onto)
end

function Base.:(*)(m1::MultiVector, m2::MultiVector)
    geomul(m1, m2)
end
function scalar_mul(s, m2::MultiVector)
    d = Dict(key => s*val for (key, val) in pairs(m2.summands))
    MultiVector(d, m2.metric)
end
function Base.:(*)(s::Union{SymbolicUtils.Symbolic{Real}, Real}, m::MultiVector)
    scalar_mul(s, m)
end
function Base.:(*)(m::MultiVector, s::Real)
    scalar_mul(s, m)
end

#operate_on_basis(dual, m)

function Vector0(itr)
    OffsetArray(itr, (0:length(itr)-1))
end
const METRIC_PGA3D = Vector0([0.,1,1,1])

function sandwich(x::MultiVector,g::MultiVector)
    rev(g)*x*g
end

function Base.show(io::IO, x::MultiVector)
    pieces = String[]
    d = sort(x.summands)
    for (mask, val) in pairs(d)
        inds = eachindex(mask)[mask]
        push!(pieces, "($val)*e$(inds...)")
    end
    println(io, join(pieces, " + "))
end

################################################################################
##### Code gen
################################################################################

function basisblade_symbol_from_mask(prefix, mask)
    inds = eachindex(mask)[mask]
    Symbol(prefix, inds...)
end
basisblade_symbol_from_mask(mask) = basisblade_symbol_from_mask(:e, mask)

function sym_getproperty_from_mask(mask)
    ei = basisblade_symbol_from_mask(mask)
    S = SymbolicUtils.Sym{SymbolicUtils.FnType{Tuple{Any},Real}}
    return S(ei)
end

struct SubAll end
struct SubEven end
struct SubDeg{N} end
SubDeg(N) = SubDeg{N}()
struct SubZero end


const SUBS = [SubAll(),
              SubEven(),
              SubDeg{0}(),
              SubDeg{1}(),
              SubDeg{2}(),
              SubDeg{3}(),
              SubDeg{4}(),
              SubZero(),
             ]

function masks_inside(::SubEven)
    ft = (false, true)
    [Vector0([a,b,c,d]) for a in ft for b in ft for c in ft for d in ft if iseven(a+b+c+d)]
end

function masks_inside(::SubDeg{N}) where {N}
    ft = (false, true)
    [Vector0([a,b,c,d]) for a in ft for b in ft for c in ft for d in ft if a+b+c+d == N]
end

function masks_inside(::SubAll)
    ft = (false, true)
    [Vector0([a,b,c,d]) for a in ft for b in ft for c in ft for d in ft]
end
function masks_inside(::SubZero)
    []
end

function sym_multivector(symbol_type::Pair)
    symbol, sub = symbol_type
    d = Dict(
        mask => begin
            xijk::Symbol = basisblade_symbol_from_mask(symbol, mask)
            SymbolicUtils.Sym{Real}(xijk)
        end
        for mask in masks_inside(sub)
    )
    metric = METRIC_PGA3D
    return MultiVector(d, metric)
end

function expr_from_arg(arg::Pair)
    argname, TODO = arg
    argname
end

function symbol_MultiVectorSub(sub)
    @argcheck !(sub isa DataType)
    if sub isa SubZero
        :MultiVectorZero
    elseif sub isa SubDeg{0}
        :MultiVector0
    elseif sub isa SubDeg{1}
        :MultiVector1
    elseif sub isa SubDeg{2}
        :MultiVector2
    elseif sub isa SubDeg{3}
        :MultiVector3
    elseif sub isa SubDeg{4}
        :MultiVector4
    elseif sub isa SubEven
        :MultiVectorEven
    elseif sub isa SubAll
        :MultiVectorAll
    else
        error("Unreachable sub = $sub")
    end
end

function expr_structdef(sub)
    if sub isa SubZero
        return :(struct MultiVectorZero end)
    end
    MV = symbol_MultiVectorSub(sub)
    masks = masks_inside(sub)
    T = :T
    eijs = map(basisblade_symbol_from_mask, masks)
    fields = map(eijs) do eij
        :($eij::$T)
    end
    _eijs= map(masks) do mask
        basisblade_symbol_from_mask("_e", mask)
    end
    eijsT = map(eijs) do eij
        :(convert($T, $eij))
    end
    ctor1 = :(
              function $MV{$T}($(eijs...)) where {$T}
                  new{$T}($(eijsT...))
              end
    )
    ctor2 = :(
        function $MV($(eijs...))
            $(Expr(:tuple, _eijs...)) = promote($(eijs...))
            T = typeof($(first(_eijs)))
            new{$T}($(_eijs...))
        end
    )
    ret = Expr(:struct, false, :($MV{$T}), Expr(:block, fields..., ctor1, ctor2))
    Base.remove_linenums!(ret)
    return ret
end

function exprs_structdef_batteries(sub)
    MV = symbol_MultiVectorSub(sub)
    masks = masks_inside(sub)
    ret = []
    push!(ret, expr_structdef(sub))
    #if sub isa SubZero
    #    return ret
    #end
    kws = map(masks) do mask
        eij = basisblade_symbol_from_mask(mask)
        Expr(:kw, eij, 0)
    end
    if sub != SubZero()
        kwconstructor = :(
          function $MV(;$(kws...))
              return $MV($(map(basisblade_symbol_from_mask, masks)...))

          end
         )
        push!(ret, kwconstructor)
    end

    N = length(masks)
    tuple_access = [:(t[$i]) for i in 1:N]
    from_Tuple = :(
        function $MV(t::NTuple{$N,Any})
            $MV($(tuple_access...))
        end
    )
    push!(ret, from_Tuple)

    field_accesses = map(masks) do mask
        eij = basisblade_symbol_from_mask(mask)
        :(x.$eij)
    end
    to_Tuple = :(
        function Base.Tuple(x::$MV)
            tuple($(field_accesses...))
        end
    )
    push!(ret, to_Tuple)

    nb = length(masks_inside(sub))
    def_basislength = :(
        function basislength(::Type{<:$MV})
            $nb
        end
    )
    push!(ret, def_basislength)
    if sub !== SubZero()
        def_scalartype = :(
        function scalartype(::Type{$MV{T}}) where {T}
            T
        end
        )
        push!(ret, def_scalartype)
        def_ctor = :(
            function $MV{T}(x::$MV) where {T}
                $MV{T}($(field_accesses...))
            end
        )
        push!(ret, def_ctor)
    end

    foreach(Base.remove_linenums!, ret)
    ret
end

function expr_fundef(f_symbolic, f_name, args::Pair...)
    notation = []
    arg_multivectors = []
    arg_exprs = []
    for (argsymbol, sub) in args
        d = Dict()
        for mask in masks_inside(sub)
            argsymbol_ = Symbol(argsymbol, "_")
            lhs = basisblade_symbol_from_mask(argsymbol_, mask)
            d[mask] = SymbolicUtils.Sym{Real}(lhs)
            rhs = :($(argsymbol).$(basisblade_symbol_from_mask(:e, mask)))
            push!(notation, :($lhs = $rhs))
        end
        mv = MultiVector(d, METRIC_PGA3D)
        push!(arg_multivectors,mv)
        T = symbol_MultiVectorSub(sub)
        push!(arg_exprs, :($argsymbol::$T))
    end
    body = []
    append!(body, notation)
    sym_ret::MultiVector = f_symbolic(arg_multivectors...)
    notation_ret = []
    ret_masks = sort!(collect(keys(sym_ret.summands)))
    for mask in ret_masks
        sym = sym_ret.summands[mask]
        lhs = basisblade_symbol_from_mask(:ret_, mask)
        rhs = toexpr(sym)
        ex = :($lhs = $rhs)
        push!(notation_ret, ex)
    end
    append!(body, notation_ret)
    sub = minimal_sub_containing_masks(ret_masks)
    ctor = symbol_MultiVectorSub(sub)

    kws = map(ret_masks) do mask
        # eij = retij
        Expr(:kw,
                basisblade_symbol_from_mask(:e, mask),
                basisblade_symbol_from_mask(:ret_, mask)
        )
    end

    construct_ret = Expr(:call, ctor, Expr(:parameters, kws...))
    if sub isa SubZero
        empty!(body)
    end
    push!(body, :(return $construct_ret))
    ex = :(function $f_name($(arg_exprs...)) $(body...) end)
    Base.remove_linenums!(ex)
    ex
end

function minimal_sub_containing_masks(masks::AbstractArray)
    grades = unique(map(sum, masks))
    if length(grades) == 0
        SubZero()
    elseif length(grades) == 1
        SubDeg{only(grades)}()
    elseif all(iseven, grades)
        SubEven()
    else
        SubAll()
    end
end

function exprs_everything()
    ret = []
    for sub in SUBS
        exs = exprs_structdef_batteries(sub)
        append!(ret, exs)
    end
    for (f, fsym) in [
            (dual, :dual),
            (rev, :rev),
            (-, :(Base.:-)),

        ]
        for sub in SUBS
            ex = expr_fundef(f, fsym, :x => sub)
            push!(ret, ex)
        end
    end
    for (op, opsym) in [
            (+, :(Base.:+)),
            (-, :(Base.:-)),
            (geomul, :geomul),
            (wedge, :wedge),
            (sandwich, :sandwich),
            (anti_wedge, :anti_wedge),
            (inner, :inner),

        ]
        for sub1 in SUBS
            for sub2 in SUBS
                ex = expr_fundef(op, opsym, :x => sub1, :y => sub2)
                push!(ret, ex)
            end
        end
    end
    GRADE_SUBS = [SubDeg(0), SubDeg(1), SubDeg(2), SubDeg(3), SubDeg(4)]
    for sub1 in GRADE_SUBS
        for sub2 in GRADE_SUBS
            ex = expr_fundef(project, :project, :onto=>sub1, :obj => sub2)
            push!(ret, ex)
        end
    end
    # conversion
    for sub in SUBS
        sub == SubZero() && continue
        ex = expr_convert(SubAll(), sub)
        push!(ret, ex)
    end
    for sub in SUBS
        ex = expr_convert(sub, SubZero())
        push!(ret, ex)
    end
    for sub in [SubDeg(0), SubDeg(2), SubDeg(4)]
        ex = expr_convert(SubEven(), sub)
        push!(ret, ex)
    end
    return ret
end

function expr_convert(sub_big, sub_small)
    MV_big = symbol_MultiVectorSub(sub_big)
    MV_small = symbol_MultiVectorSub(sub_small)
    masks = masks_inside(sub_small)
    kws = map(masks) do mask
        eij = basisblade_symbol_from_mask(mask)
        Expr(:kw, eij, :(x.$eij))
    end
    ex = :(
        function Base.convert(MV::Type{<:$(MV_big)}, x::$MV_small)
            MV($MV_big(;$(kws...)))
        end
    )
    Base.remove_linenums!(ex)
    ex
end

function print_everything(io::IO)
    for ex in exprs_everything()
        s = string(ex)
        println(io, s)
    end
end

end#module
