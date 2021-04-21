module ProjectiveGeometricAlgebra3d
using ArgCheck
using LinearAlgebra
using Random: AbstractRNG, GLOBAL_RNG

include("auto.jl")
export rev, dual
export ∨, ∧ , wedge, anti_wedge
export inner
export norm, normalize
export polar, ⟂

const ∨ = anti_wedge
const ∧ = wedge

const MultiVector{T} = Union{
                             MultiVector0{T},
                             MultiVector1{T},
                             MultiVector2{T},
                             MultiVector3{T},
                             MultiVector4{T},
                             MultiVectorZero,
                             MultiVectorEven{T},
                             MultiVectorAll{T},
                            }

################################################################################
##### Vec
################################################################################
struct Vec{T,N} <: AbstractVector{T}
    data::NTuple{N,T}
end
Base.Tuple(v::Vec) = v.data
function Base.getindex(v::Vec, i::Int)
    @boundscheck checkbounds(v, i)
    @inbounds v.data[i]
end
Base.size(v::Vec) = (length(v.data),)
Vec(o::MultiVector) = Vec(Tuple(o))

################################################################################
##### MultiVector
################################################################################

function Base.promote_type(::Type{MultiVectorZero},::Type{MV}) where {MV <: MultiVector}
    MV
end
function Base.promote_type(::Type{MV},::Type{MultiVectorZero}) where {MV <: MultiVector}
    MV
end
function Base.promote_type(::Type{MultiVectorZero},::Type{MultiVectorZero})
    MultiVectorZero
end
function Base.promote_type(::Type{MV1}, ::Type{MV2}) where {MV1 <: MultiVector, MV2<:MultiVector}
    T = promote_type(scalartype(MV1), scalartype(MV2))
    MultiVectorAll{T}
end
function Base.promote_type(::Type{MV}, ::Type{MV}) where {MV <: MultiVector}
    MV
end

function scalarmul(scalar, v)
    MultiVector0(scalar)*v
end
function scalaradd(scalar, v)
    MultiVector0(scalar) + v
end

const ANTI_ONE = MultiVector4(e0123=1)
function polar(v::MultiVector)
    v*ANTI_ONE
end
const ⟂ = polar

Base.:*(v1::MultiVector, v2::MultiVector) = geomul(v1,v2)
Base.:*(s::Number, v::MultiVector) = scalarmul(s,v)
Base.:*(v::MultiVector, s::Number) = scalarmul(s,v)

Base.:+(s::Number, v::MultiVector) = scalaradd(s,v)
Base.:+(v::MultiVector, s::Number) = scalaradd(s,v)
Base.:/(v::MultiVector, s::Number) = scalarmul(inv(s), v)

basislength(v::MultiVector) = basislength(typeof(v))

function LinearAlgebra.norm(v::MultiVector)
    v2 = inner(v,v)::MultiVector0
    sqrt(abs(v2.e))
end
function LinearAlgebra.normalize(v::MultiVector)
    v/norm(v)
end

function norm_ideal(v::MultiVector)
    norm(dual(v))
end

function normalize_ideal(v::MultiVector)
    v / norm_ideal(v)
end
function Base.isapprox(v1::MultiVectorZero, v2::MultiVector; kw...)
    true
end
function Base.isapprox(v1::MultiVector, v2::MultiVector; kw...)
    w1,w2 = promote(v1,v2)
    isapprox(Vec(w1), Vec(w2); kw...)
end

function Base.show(io::IO, v::MultiVector)
    print(io, typeof(v), "(")
    for pname in propertynames(v)
        pval = getproperty(v, pname)
        if pval != 0
            print(io, "$pname=$pval,")
        end
    end
    print(io, ")")
end

function _MultiVectorTypes(T)
    (
        MultiVector0{T},
        MultiVector1{T},
        MultiVector2{T},
        MultiVector3{T},
        MultiVector4{T},
        MultiVectorZero,
        MultiVectorEven{T},
        MultiVectorAll{T},

    )
end

function random(rng::AbstractRNG, ::Type{MultiVectorZero})
    MultiVectorZero()
end
function random(rng::AbstractRNG, ::Type{MV}) where {MV <: MultiVector}
    T = scalartype(MV)
    N = basislength(MV)
    return MV(randn(rng, T,N)...)
end
function random(rng::AbstractRNG, ::Type{MultiVector{T}}) where {T}
    MV = rand(rng,_MultiVectorTypes(T))
    return random(rng, MV)
end
function random(::Type{T}, args...) where {T}
    random(GLOBAL_RNG, T, args...)
end
function random(rng::AbstractRNG, ::Type{T}, shape::Integer...) where {T}
    N = length(shape)
    ret = Array{T,N}(undef, shape)
    for i in eachindex(ret)
        ret[i] = random(rng, T)
    end
    return ret
end

include("Euclid.jl")

end#module
