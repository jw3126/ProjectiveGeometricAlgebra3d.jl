using ProjectiveGeometricAlgebra3d
using ProjectiveGeometricAlgebra3d: sandwich, MultiVectorEven, MultiVector2, geomul, sandwich, MultiVector3, MultiVectorAll
const PGA = ProjectiveGeometricAlgebra3d
using Test

e = MultiVectorAll(e=1)
e0 = MultiVectorAll(e0=1)
e1 = MultiVectorAll(e1=1)
e2 = MultiVectorAll(e2=1)
e3 = MultiVectorAll(e3=1)

e01 = MultiVectorAll(e01=1)
e02 = MultiVectorAll(e02=1)
e03 = MultiVectorAll(e03=1)

e12 = MultiVectorAll(e12=1)
e13 = MultiVectorAll(e13=1)
e23 = MultiVectorAll(e23=1)

e012 = MultiVectorAll(e012=1)
e013 = MultiVectorAll(e013=1)
e023 = MultiVectorAll(e023=1)
e123 = MultiVectorAll(e123=1)

e0123=MultiVectorAll(e0123=1)
z=MultiVectorAll()

@test e0*e0 === z
@test e0*e1 === e01
@test e0*e2 === e02
@test e2*e0 === -e02
@test e0*e3 === e03
@test e0*e1*e2*e2 === e01

@test e0∧e1 === e01
@test e1∧e0 === -e01
@test e1∧e2∧e3 === e123

@test rev(e) === e
@test rev(e3) === e3
@test rev(e13) === -e13
@test rev(e123) === -e123
@test rev(e0123) === e0123

@test e*dual(e) === e0123
@test e0*dual(e0) === e0123
@test e1*dual(e1) === e0123
@test e2*dual(e2) === e0123

@test e ≈ e
@test !(e≈ e1)
@test e ≈ e1 atol=2

@testset "laws" begin
    for _ in 1:1000
        a = PGA.random(PGA.MultiVector{Float64})
        b = PGA.random(PGA.MultiVector{Float64})
        c = PGA.random(PGA.MultiVector{Float64})

        ### associativity
        @test (a∧b)∧c ≈ a∧(b∧c)
        @test (a*b)*c ≈ a*(b*c)
        @test (a∨b)∨c ≈ a∨(b∨c)

        ### involutions
        @test dual(dual(a)) === a
        @test dual(a∧b) ≈ dual(a) ∨ dual(b)
        @test rev(rev(a)) === a

        λ = randn()
        μ = randn()
        @test (λ*a + μ*b)*c ≈ (λ*a*c) + (μ*b*c)
        @test (λ*a + μ*b)∧c ≈ (λ*a∧c) + (μ*b∧c)
        @test (λ*a + μ*b)∨c ≈ (λ*a∨c) + (μ*b∨c)
    end
end

include("test_euclid.jl")
