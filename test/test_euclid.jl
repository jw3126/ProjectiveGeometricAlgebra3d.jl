module TestEuclid
import ProjectiveGeometricAlgebra3d as PGA
using .PGA.Euclid
using .PGA.Euclid: pga, norm, join, random
using .PGA: ∨
using Test

E0 = Point(0,0,0)
E1 = Point(1,0,0)
E2 = Point(0,1,0)
E3 = Point(0,0,1)

@testset "distance" begin
    @test distance(E0, E1) ≈ 1
    @test distance(E0, E2) ≈ 1
    @test distance(E0, E3) ≈ 1

    @test distance(E1, E0) ≈ 1
    @test distance(E1, E2) ≈ sqrt(2)
    @test distance(E1, E3) ≈ sqrt(2)

    @test distance(E2, E0) ≈ 1
    @test distance(E2, E1) ≈ sqrt(2)
    @test distance(E2, E3) ≈ sqrt(2)

    @test distance(E3, E0) ≈ 1
    @test distance(E3, E1) ≈ sqrt(2)
    @test distance(E3, E2) ≈ sqrt(2)
end

@testset "norm" begin
    @test norm(pga(E0) ∨ pga(E1)) ≈ 1
    @test norm(pga(E1) ∨ pga(E2)) ≈ sqrt(2)
    c1 = randn(3)
    c2 = randn(3)
    @test norm(c1 - c2) ≈ norm(pga(Point(c1)) ∨ pga(Point(c2)))
end

@testset "angle between planes" begin
    p_yz = Plane(point=randn(3), directions=([0,0,rand()], (0,rand(),0)))
    p_2  = Plane(point=randn(3), directions=([0,0,rand()], rand()*[1,1,0]))
    @test Euclid.cos_angle(p_yz, p_2) ≈ cos(pi/4)

end

@testset "join and meet" begin
    @test join(E0,E1) ≈ Line(point=[0,0,0], direction=[1,0,0])
    @test join(E0,E1,E2) ≈ Plane(point=[0,0,0], directions=([1,0,0], [0,1,0]))

    pxy = join(E0,E1,E2)
    pyz = join(E0,E2,E3)
    @test meet(pxy, pyz) ≈ join(E0, E2)
end

@testset "project" begin
    x,y,z = randn(3)
    pt = Point(x,y,z)
    qt = project(join(E0,E1,E2), pt)
    @test qt ≈ Point([x,y,0])
    l1 = join(Point(0,0,0), Point(1,2,3))
    l2 = project(join(E0,E1,E2), l1)
    l3 = join(Point(0,0,0), Point(1,2,0))
    @test l2 ≈ l3
end

@testset "Motor" begin
    m = rotator(axis=join(E0, E1), angle=pi/2)
    @test m(Point(0,0,1)) ≈ Point(0,-1,0)

    for _ in 1:100
        m1 = random(Motor{Float64})
        pt1, pt2 = random(Point{Float64}, 2)
        m1(join(pt1, pt2)) ≈ join(m1(pt1), m1(pt2))
    end
    for Geo in [Point{Float32}, Line{Float32}, Plane{Float32}, Motor{Float32}]
        m1, m2 = random(Motor{Float32}, 2)
        geo = random(Geo)
        @test m1(m2(geo)) ≈ (m1∘m2)(geo)
    end
end

end#module
