module ProjectiveGeometricAlgebra3d
using ArgCheck
using LinearAlgebra
using Random: AbstractRNG, GLOBAL_RNG

include("auto.jl")
export rev, dual
export ∨, ∧ , wedge, anti_wedge
export inner
export norm, normalize

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

function ideal_norm(v::MultiVector)
    TODO
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

function random(rng::AbstractRNG, ::Type{MultiVector{T}}) where {T}
    MV = rand(rng,_MultiVectorTypes(T))
    N = basislength(MV)
    if MV === MultiVectorZero
        MultiVectorZero()
    else
        MV(randn(rng, T,N)...)
    end
end
function random(MV::Type{MultiVector{T}}) where {T}
    random(GLOBAL_RNG, MV)
end

################################################################################
##### euclidean
################################################################################
export point, ideal_point

function point(xyz)
    @argcheck length(xyz) == 3
    x,y,z = xyz
    MultiVector3(e023=-x, e013=y, e012=-z, e123=oneunit(x))
end
function ideal_point(xyz)
    @argcheck length(xyz) == 3
    x,y,z = xyz
    MultiVector3(e023=-x, e013=y, e012=-z)
end
function line_from_to(pt_from, pt_to)
    point(pt_from) ∨ point(pt_to)
end
function line_point_direction(pt, direction)
    point(pt) ∨ ideal_point(direction)
end
function plane_point_directions(pt, dir1, dir2)
    point(pt) ∨ ideal_point(dir1) ∨ ideal_point(dir2)
end

end
