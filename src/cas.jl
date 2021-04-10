module CAS
using SymbolicUtils
using ArgCheck
using Accessors
using OffsetArrays

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

function Base.isequal(b1::BasisBlade, b2::BasisBlade)
    isequal(b1.coeff, b2.coeff) && isequal(b1.mask, b2.mask)
end


function Base.:(==)(b1::BasisBlade, b2::BasisBlade)
    ==(b1.coeff, b2.coeff) && ==(b1.mask, b2.mask)
end

function gendim(o::BasisBlade)
    length(o.mask)
end

function degree(o::BasisBlade)
    sum(o.mask)
end

function zerobasisblade(gendim)
    BasisBlade(0, fill(false, gendim))
end

function Base.:(-)(b::BasisBlade)
    @set b.coeff *= -1
end

function count_transpositions(mask1, mask2)
    @argcheck length(mask1) == length(mask2)
    transpositions = 0
    disjoint = true
    n = length(mask1)
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
    @argcheck gendim(b1) == gendim(b2)
    intel = count_transpositions(b1.mask, b2.mask)
    if intel.disjoint
        coeff = (-1)^(intel.transpositions) * b1.coeff * b2.coeff
        mask = xor.(b1.mask, b2.mask)
        ret = BasisBlade(coeff, mask)
        @check degree(ret) == degree(b1) + degree(b2)
        return ret
    else
        return zerobasisblade(gendim(b1))
    end
end

function geomul(b1::BasisBlade, b2::BasisBlade, metric::AbstractVector)
    @argcheck gendim(b1) == gendim(b2) == length(metric)
    mask = Vector{Bool}(undef, gendim(b1))
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
    TODO
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
    N = gendim(b1)
    @assert gendim(b1) == 4
    d = degree(b1)
    mask = map((!), b1.mask)
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
struct MultiVector
    summands::Dict{Vector{Bool}, Any}
    metric::Union{Vector{Bool}}
end

function check_compatible(m1::MultiVector, m2::MultiVector)
    @argcheck m1.metric == m2.metric
end

const ∧ = wedge
const ∨ = anti_wedge

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
    res = Dict{Vector{Bool}, Any}()
    for (mask, coeff) in pairs(m.summands)
        b = f(BasisBlade(coeff, mask))
        if haskey(res, b.mask)
            res[b.mask] += b.coeff
        else
            res[b.mask] = b.coeff
        end
    end
    return prunezeros!(MultiVector(res, m.metric))
end

function operate_on_basis(f, m1::MultiVector, m2::MultiVector)
    check_compatible(m1, m2)
    res = Dict{Vector{Bool}, Any}()
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
    return prunezeros!(MultiVector(res, m1.metric))
end

function MultiVector(b::BasisBlade, metric)
    d = Dict(b.mask => b.coeff)
    prunezeros!(MultiVector(d, metric))
end
function mergewith_multivectors(f, ms...)
    m1 = first(ms)
    check_compatible(ms...)
    d = mergewith(f, map(m -> m.summands, ms)...)
    prunezeros!(MultiVector(d, m1.metric))
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

function geomul(m1::MultiVector, m2::MultiVector)
    check_compatible(m1, m2)
    operate_on_basis(m1, m2) do b1, b2
        geomul(b1, b2, m1.metric)
    end
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

const METRIC_PGA2D = [1,1,0]
const METRIC_PGA3D = [1,1,1,0]

function pga2d(args...)
    b = e(args..., gendim=3)
    prunezeros!(MultiVector(b, METRIC_PGA2D))
end
function pga3d(args...)
    b = e(args..., gendim=4)
    prunezeros!(MultiVector(b, METRIC_PGA3D))
end

function sandwich(x::MultiVector,g::MultiVector)
    rev(g)*x*g
end

function Base.show(io::IO, x::MultiVector)
    pieces = String[]
    d = sort(x.summands)
    for (mask, val) in pairs(d)
        inds = (1:length(mask))[mask]
        push!(pieces, "($val)*e$(inds...)")
    end
    println(io, join(pieces, " + "))
end

################################################################################
##### Code gen
################################################################################
using SymbolicUtils.Code

function basisblade_symbol_from_mask(prefix, mask)
    inds = eachindex(mask)[mask]
    Symbol(prefix, inds...)
end
basisblade_symbol_from_mask(mask) = basisblade_symbol_from_mask(:e, mask)

basisblade_symbol_from_mask([true, false, false, true])

function sym_getproperty_from_mask(mask)
    ei = basisblade_symbol_from_mask(mask)
    S = SymbolicUtils.Sym{SymbolicUtils.FnType{Tuple{Any},Real}}
    S(ei)
end

struct SubAll end
struct SubEven end
struct SubDeg{N} end
SubDeg(N) = SubDeg{N}
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
    [[a,b,c,d] for a in ft for b in ft for c in ft for d in ft if iseven(a+b+c+d)]
end

function masks_inside(::SubDeg{N}) where {N}
    ft = (false, true)
    [[a,b,c,d] for a in ft for b in ft for c in ft for d in ft if a+b+c+d == N]
end

function masks_inside(::SubAll)
    ft = (false, true)
    [[a,b,c,d] for a in ft for b in ft for c in ft for d in ft]
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
    ctor1 = :(
              function $MV{$T}($(fields...)) where {$T}
                  new{$T}($(eijs...))
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
    if sub isa SubZero
        return ret
    end
    kws = map(masks) do mask
        eij = basisblade_symbol_from_mask(mask)
        Expr(:kw, eij, 0)
    end
    kwconstructor = :(
      function $MV(;$(kws...))
          return $MV($(map(basisblade_symbol_from_mask, masks)...))

      end
     )
    push!(ret, kwconstructor)
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
            #(inner, :inner),

        ]
        for sub1 in SUBS
            for sub2 in SUBS
                ex = expr_fundef(op, opsym, :x => sub1, :y => sub2)
                push!(ret, ex)
            end
        end
    end
    return ret
end

function print_everything(io::IO)
    for ex in exprs_everything()
        s = string(ex)
        println(io, s)
    end
end

end#module
