module Euclid
import ProjectiveGeometricAlgebra3d as PGA
using .PGA
using .PGA: sandwich
using .PGA: MultiVector3, MultiVector1, MultiVector2, MultiVectorEven, ∨
using .PGA: normalize, scalartype, normalize_ideal
using .PGA: random
using ArgCheck

export Point, Plane, Direction, Line
export meet, orthogonal_through, join, distance, project
export Motor, translator, rotator
export random

function pga end

struct Point{T}
    data::MultiVector3{T}
    function Point(data::MultiVector3)
        data1 = normalize(data)
        T = scalartype(typeof(data1))
        return new{T}(data1)
    end
end
Point(pt::Point) = pt
function Point(itr)
    @argcheck length(itr) == 3
    x,y,z = itr
    Point(x,y,z)
end
function Point(x,y,z)
    Point(MultiVector3(e023=-x, e013=y, e012=-z, e123=oneunit(x)))
end

struct Direction{T}
    data::MultiVector3{T}
    function Direction(data::MultiVector3)
        data1 = normalize_ideal(data)
        T = scalartype(typeof(data1))
        return new{T}(data1)
    end
end
Direction(o::Direction) = o
function Direction(itr)
    @argcheck length(itr) == 3
    x,y,z = itr
    Direction(x,y,z)
end
function Direction(x,y,z)
    data::MultiVector3 = MultiVector3(e023=-x, e013=y, e012=-z)
    Direction(data)
end

struct Line{T}
    data::MultiVector2{T}
    function Line(data::MultiVector2)
        data1 = normalize(data)
        T = scalartype(typeof(data1))
        return new{T}(data1)
    end
end
Line(o::Line) = o
function Line(;point=nothing, direction=nothing)
    has_point = point !== nothing
    has_direction = direction !== nothing
    if has_point && has_direction
        Line_point_direction(point, direction)
    else
        throw(ArgumentError("Cannot construct Line from arguments"))
    end
end
function Line_point_direction(point, direction)
    data::MultiVector2 = pga(Point(point)) ∨ pga(Direction(direction))
    Line(data)
end

struct Plane{T}
    data::MultiVector1{T}
    function Plane(data::MultiVector1)
        data1 = normalize(data)
        T = scalartype(typeof(data1))
        return new{T}(data1)
    end
end
Plane(o::Plane) = o
function Plane(;point, directions)
    Plane_point_directions(point, directions)
end
function Plane_point_directions(point, directions)
    @argcheck length(directions) == 2
    dir1, dir2 = directions
    pt::MultiVector3 = pga(Point(point))
    d1::MultiVector3 = pga(Direction(dir1))
    d2::MultiVector3 = pga(Direction(dir2))
    data::MultiVector1 = pt ∨ d1 ∨ d2
    Plane(data)
end

################################################################################
##### Motor
################################################################################
struct Motor{T}
    data::MultiVectorEven{T}
end
Motor(m::Motor) = m

function rotator(;axis, angle)
    l = Line(axis)
    s,c = sincos(1//2*angle)
    data = c + s*pga(l)
    return Motor(data)
end

function translator end

(m::Motor)(o::Point) = Point(sandwich(pga(o), pga(m)))
(m::Motor)(o::Direction) = Direction(sandwich(pga(o), pga(m)))
(m::Motor)(o::Line)  = Line(sandwich(pga(o), pga(m)))
(m::Motor)(o::Plane) = Plane(sandwich(pga(o), pga(m)))
(m::Motor)(o::Motor) = Motor(sandwich(pga(o), pga(m)))

Base.:(∘)(m2::Motor, m1::Motor) = Motor(pga(m1) * pga(m2))

pgatype(::Type{Point{T}}     ) where {T} = MultiVector3{T}
pgatype(::Type{Direction{T}} ) where {T} = MultiVector3{T}
pgatype(::Type{Line{T}}      ) where {T} = MultiVector2{T}
pgatype(::Type{Plane{T}}     ) where {T} = MultiVector1{T}
pgatype(::Type{Motor{T}}     ) where {T} = MultiVectorEven{T}

for Geo in [:Point, :Direction, :Line, :Plane, :Motor]
    @eval function pga(x::$Geo)
        x.data
    end
    @eval function PGA.random(rng::PGA.AbstractRNG, G::Type{<:$Geo})
        $Geo(PGA.random(rng, pgatype(G)))::G
    end
    @eval function Base.isapprox(o1::$Geo, o2::$Geo; kw...)
        isapprox(pga(o1), pga(o2); kw...)
    end
end

meet(o1::Plane, o2::Plane) = Line( pga(o1) ∧ pga(o2))
meet(o1::Line, o2::Plane)  = Point(pga(o1) ∧ pga(o2))
meet(o1::Plane, o2::Line)  = Point(pga(o1) ∧ pga(o2))

# TODO join
join(o::Union{Point, Line, Plane}) = o
join(o1::Point, o2::Point) = Line(pga(o1) ∨ pga(o2))
join(o1::Point, o2::Line) = Plane(pga(o1) ∨ pga(o2))
join(o1::Line, o2::Point) = Plane(pga(o1) ∨ pga(o2))
join(o1::Point, o2::Point, o3::Point) = Plane(pga(o1) ∨ pga(o2) ∨ pga(o3))

orthogonal_through(orth::Plane, through::Line) = Plane(inner(orth, through))
orthogonal_through(orth::Plane, through::Point) = Line(inner(orth, through))
orthogonal_through(orth::Line, through::Point) = Plane(inner(orth, through))

project(onto::Union{Point, Line, Plane}, obj::Point) = Point(PGA.project(pga(onto), pga(obj)))
project(onto::Plane, obj::Line) = Line(PGA.project(pga(onto), pga(obj)))

################################################################################
##### metric
################################################################################
function cos_angle(o1::Plane, o2::Plane)
    inner(pga(o1), pga(o2)).e
end
function cos_angle(o1::Line, o2::Plane)
    inner(pga(o1), pga(o2)).e
end
function cos_angle(o1::Plane, o2::Line)
    inner(pga(o1), pga(o2)).e
end

function distance(o1::Point, o2::Point)
    norm(pga(o1) ∨ pga(o2))
end

end #module
