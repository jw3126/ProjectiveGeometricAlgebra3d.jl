module TestCas
using ProjectiveGeometricAlgebra3d.CAS
using .CAS: BasisBlade, rev, dual, geomul, wedge, anti_wedge
using Accessors
using Test

function e(inds...;gendim, coeff=1)
    mask = CAS.create_mask(1:gendim, inds...)
    BasisBlade(coeff, mask)
end

@testset "BasisBlade" begin
    @testset "rev" begin
        e = BasisBlade(1, [false])
        e1 = BasisBlade(1, [true])
        e2 = BasisBlade(1, [false, true])
        e12 = BasisBlade(1, [true, true])
        e14 = BasisBlade(1, [true, false, false, true])
        e123 = BasisBlade(1, [true, false, false, true, true])
        e145 = BasisBlade(1, [true, false, false, true, true])
        e2456 = BasisBlade(1, [false, true, false, true, true, true])
        @test rev(e) == e
        @test rev(e1) == e1
        @test rev(e2) == e2
        @test rev(e12) == @set e12.coeff *= -1
        @test rev(e14) == @set e14.coeff *= -1
        @test rev(e123) == @set e123.coeff *= -1
        @test rev(e145) == @set e145.coeff *= -1
        @test rev(e2456) == e2456

    end

    b1 = BasisBlade(5, [true, true, ]) #e12
    b2 = BasisBlade(3, [true, true]) #scalar
    b = wedge(b1, b2)
    @test b.coeff == 0
    g = geomul(b1, b2, [1,1])
    @test g.coeff == -15
    @test g.mask == [false,false]
    g = geomul(b1, b2, [2,-1])
    @test g.coeff == 30
    @test g.mask == [false,false]

    b1 = BasisBlade(1, [true, false, true ]) # e13
    b2 = BasisBlade(1, [true, false, false]) # e1
    w = wedge(b1, b2)
    @test w.coeff == 0
    g = geomul(b1, b2, [1,1,1])
    @test g.coeff == -1
    @test g.mask == [false, false, true]
    g = geomul(b1, b2, [10,11,12])
    @test g.coeff == -10
    @test g.mask == [false, false, true]
    g = geomul(b1, b2, [0,11,12])
    @test g.coeff == 0


    b1 = BasisBlade(1, [true, false, true ]) #e13
    b2 = BasisBlade(1, [false, true, false]) #e2
    w = wedge(b1, b2)
    @test w.coeff == -1
    @test w.mask == [true,true,true]
    w = wedge(b2, b1)
    @test w.coeff == -1
    g = geomul(b1, b2, [1,1,1])
    @test g.coeff == -1
    @test g.mask == [true,true,true]



    b1 = BasisBlade(5, [true, true, ]) #e12
    b2 = BasisBlade(3, [false, false]) #scalar
    b = wedge(b1, b2)
    @test b.coeff == 15
    @test b.mask == [true,true]
end


@testset "dual 4d" begin
    @test dual(e(;gendim=4))    == e(1,2,3,4, gendim=4)

    @test dual(e(1;gendim=4))   == e(2,3,4, gendim=4)
    @test dual(e(2;gendim=4))   == e(1,3,4, gendim=4, coeff=-1)
    @test dual(e(3;gendim=4))   == e(1,2,4, gendim=4)
    @test dual(e(4;gendim=4))   == e(1,2,3, gendim=4, coeff=-1)

    @test dual(e(1,2;gendim=4)) == e(3,4, gendim=4)
    @test dual(e(1,3;gendim=4)) == e(2,4, gendim=4, coeff=-1)
    @test dual(e(1,4;gendim=4)) == e(2,3, gendim=4)

    @test dual(e(1,2,3,4, gendim=4))          == e(;gendim=4)

    @test dual(e(2,3,4, gendim=4))           == e(1;gendim=4)
    @test dual(e(1,3,4, gendim=4, coeff=-1))  == e(2;gendim=4)
    @test dual(e(1,2,4, gendim=4)          )  == e(3;gendim=4)
    @test dual(e(1,2,3, gendim=4, coeff=-1))  == e(4;gendim=4)

    @test dual(e(3,4, gendim=4)            )  == e(1,2;gendim=4)
    @test dual(e(2,4, gendim=4, coeff=-1)  )  == e(1,3;gendim=4)
    @test dual(e(2,3, gendim=4)            )  == e(1,4;gendim=4)
end

end#module
