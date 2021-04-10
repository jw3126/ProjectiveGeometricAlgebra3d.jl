using ProjectiveGeometricAlgebra3d
using ProjectiveGeometricAlgebra3d: sandwich, MultiVectorEven, MultiVector2, geomul, sandwich, MultiVector3, MultiVectorAll
using Test
using BenchmarkTools
v1 = MultiVectorEven(e=1.0)
v2 = MultiVectorEven(e=1.0)
a = MultiVectorAll(e=1.0)
l = MultiVector2(e12=3.0)
P = MultiVector3(e123=1.2)
@show geomul(v1,v2)
@show sandwich(v1,v2)
@inferred geomul(v1,v2)
sandwich(v1, v2)
@btime $sandwich($P,$v2)
@btime $sandwich($a,$a)





#include("test_cas.jl")
