struct MultiVectorAll{T}
    e::T
    e4::T
    e3::T
    e34::T
    e2::T
    e24::T
    e23::T
    e234::T
    e1::T
    e14::T
    e13::T
    e134::T
    e12::T
    e124::T
    e123::T
    e1234::T
    function MultiVectorAll{T}(e::T, e4::T, e3::T, e34::T, e2::T, e24::T, e23::T, e234::T, e1::T, e14::T, e13::T, e134::T, e12::T, e124::T, e123::T, e1234::T) where T
        new{T}(e, e4, e3, e34, e2, e24, e23, e234, e1, e14, e13, e134, e12, e124, e123, e1234)
    end
    function MultiVectorAll(e, e4, e3, e34, e2, e24, e23, e234, e1, e14, e13, e134, e12, e124, e123, e1234)
        (_e, _e4, _e3, _e34, _e2, _e24, _e23, _e234, _e1, _e14, _e13, _e134, _e12, _e124, _e123, _e1234) = promote(e, e4, e3, e34, e2, e24, e23, e234, e1, e14, e13, e134, e12, e124, e123, e1234)
        T = typeof(_e)
        new{T}(_e, _e4, _e3, _e34, _e2, _e24, _e23, _e234, _e1, _e14, _e13, _e134, _e12, _e124, _e123, _e1234)
    end
end
function MultiVectorAll(; e = 0, e4 = 0, e3 = 0, e34 = 0, e2 = 0, e24 = 0, e23 = 0, e234 = 0, e1 = 0, e14 = 0, e13 = 0, e134 = 0, e12 = 0, e124 = 0, e123 = 0, e1234 = 0)
    return MultiVectorAll(e, e4, e3, e34, e2, e24, e23, e234, e1, e14, e13, e134, e12, e124, e123, e1234)
end
struct MultiVectorEven{T}
    e::T
    e34::T
    e24::T
    e23::T
    e14::T
    e13::T
    e12::T
    e1234::T
    function MultiVectorEven{T}(e::T, e34::T, e24::T, e23::T, e14::T, e13::T, e12::T, e1234::T) where T
        new{T}(e, e34, e24, e23, e14, e13, e12, e1234)
    end
    function MultiVectorEven(e, e34, e24, e23, e14, e13, e12, e1234)
        (_e, _e34, _e24, _e23, _e14, _e13, _e12, _e1234) = promote(e, e34, e24, e23, e14, e13, e12, e1234)
        T = typeof(_e)
        new{T}(_e, _e34, _e24, _e23, _e14, _e13, _e12, _e1234)
    end
end
function MultiVectorEven(; e = 0, e34 = 0, e24 = 0, e23 = 0, e14 = 0, e13 = 0, e12 = 0, e1234 = 0)
    return MultiVectorEven(e, e34, e24, e23, e14, e13, e12, e1234)
end
struct MultiVector0{T}
    e::T
    function MultiVector0{T}(e::T) where T
        new{T}(e)
    end
    function MultiVector0(e)
        (_e,) = promote(e)
        T = typeof(_e)
        new{T}(_e)
    end
end
function MultiVector0(; e = 0)
    return MultiVector0(e)
end
struct MultiVector1{T}
    e4::T
    e3::T
    e2::T
    e1::T
    function MultiVector1{T}(e4::T, e3::T, e2::T, e1::T) where T
        new{T}(e4, e3, e2, e1)
    end
    function MultiVector1(e4, e3, e2, e1)
        (_e4, _e3, _e2, _e1) = promote(e4, e3, e2, e1)
        T = typeof(_e4)
        new{T}(_e4, _e3, _e2, _e1)
    end
end
function MultiVector1(; e4 = 0, e3 = 0, e2 = 0, e1 = 0)
    return MultiVector1(e4, e3, e2, e1)
end
struct MultiVector2{T}
    e34::T
    e24::T
    e23::T
    e14::T
    e13::T
    e12::T
    function MultiVector2{T}(e34::T, e24::T, e23::T, e14::T, e13::T, e12::T) where T
        new{T}(e34, e24, e23, e14, e13, e12)
    end
    function MultiVector2(e34, e24, e23, e14, e13, e12)
        (_e34, _e24, _e23, _e14, _e13, _e12) = promote(e34, e24, e23, e14, e13, e12)
        T = typeof(_e34)
        new{T}(_e34, _e24, _e23, _e14, _e13, _e12)
    end
end
function MultiVector2(; e34 = 0, e24 = 0, e23 = 0, e14 = 0, e13 = 0, e12 = 0)
    return MultiVector2(e34, e24, e23, e14, e13, e12)
end
struct MultiVector3{T}
    e234::T
    e134::T
    e124::T
    e123::T
    function MultiVector3{T}(e234::T, e134::T, e124::T, e123::T) where T
        new{T}(e234, e134, e124, e123)
    end
    function MultiVector3(e234, e134, e124, e123)
        (_e234, _e134, _e124, _e123) = promote(e234, e134, e124, e123)
        T = typeof(_e234)
        new{T}(_e234, _e134, _e124, _e123)
    end
end
function MultiVector3(; e234 = 0, e134 = 0, e124 = 0, e123 = 0)
    return MultiVector3(e234, e134, e124, e123)
end
struct MultiVector4{T}
    e1234::T
    function MultiVector4{T}(e1234::T) where T
        new{T}(e1234)
    end
    function MultiVector4(e1234)
        (_e1234,) = promote(e1234)
        T = typeof(_e1234)
        new{T}(_e1234)
    end
end
function MultiVector4(; e1234 = 0)
    return MultiVector4(e1234)
end
struct MultiVectorZero
    #= /home/jan/.julia/dev/ProjectiveGeometricAlgebra3d/src/cas.jl:376 =#
end
function dual(x::MultiVectorAll)
    x_ = x.e
    x_4 = x.e4
    x_3 = x.e3
    x_34 = x.e34
    x_2 = x.e2
    x_24 = x.e24
    x_23 = x.e23
    x_234 = x.e234
    x_1 = x.e1
    x_14 = x.e14
    x_13 = x.e13
    x_134 = x.e134
    x_12 = x.e12
    x_124 = x.e124
    x_123 = x.e123
    x_1234 = x.e1234
    ret_ = x_1234
    ret_4 = (*)(-1, x_123)
    ret_3 = x_124
    ret_34 = x_12
    ret_2 = (*)(-1, x_134)
    ret_24 = (*)(-1, x_13)
    ret_23 = x_14
    ret_234 = x_1
    ret_1 = x_234
    ret_14 = x_23
    ret_13 = (*)(-1, x_24)
    ret_134 = (*)(-1, x_2)
    ret_12 = x_34
    ret_124 = x_3
    ret_123 = (*)(-1, x_4)
    ret_1234 = x_
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function dual(x::MultiVectorEven)
    x_ = x.e
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    x_1234 = x.e1234
    ret_ = x_1234
    ret_34 = x_12
    ret_24 = (*)(-1, x_13)
    ret_23 = x_14
    ret_14 = x_23
    ret_13 = (*)(-1, x_24)
    ret_12 = x_34
    ret_1234 = x_
    return MultiVectorEven(; e = ret_, e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12, e1234 = ret_1234)
end
function dual(x::MultiVector0)
    x_ = x.e
    ret_1234 = x_
    return MultiVector4(; e1234 = ret_1234)
end
function dual(x::MultiVector1)
    x_4 = x.e4
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    ret_234 = x_1
    ret_134 = (*)(-1, x_2)
    ret_124 = x_3
    ret_123 = (*)(-1, x_4)
    return MultiVector3(; e234 = ret_234, e134 = ret_134, e124 = ret_124, e123 = ret_123)
end
function dual(x::MultiVector2)
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    ret_34 = x_12
    ret_24 = (*)(-1, x_13)
    ret_23 = x_14
    ret_14 = x_23
    ret_13 = (*)(-1, x_24)
    ret_12 = x_34
    return MultiVector2(; e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12)
end
function dual(x::MultiVector3)
    x_234 = x.e234
    x_134 = x.e134
    x_124 = x.e124
    x_123 = x.e123
    ret_4 = (*)(-1, x_123)
    ret_3 = x_124
    ret_2 = (*)(-1, x_134)
    ret_1 = x_234
    return MultiVector1(; e4 = ret_4, e3 = ret_3, e2 = ret_2, e1 = ret_1)
end
function dual(x::MultiVector4)
    x_1234 = x.e1234
    ret_ = x_1234
    return MultiVector0(; e = ret_)
end
function dual(x::MultiVectorZero)
    return MultiVectorZero(; )
end
function rev(x::MultiVectorAll)
    x_ = x.e
    x_4 = x.e4
    x_3 = x.e3
    x_34 = x.e34
    x_2 = x.e2
    x_24 = x.e24
    x_23 = x.e23
    x_234 = x.e234
    x_1 = x.e1
    x_14 = x.e14
    x_13 = x.e13
    x_134 = x.e134
    x_12 = x.e12
    x_124 = x.e124
    x_123 = x.e123
    x_1234 = x.e1234
    ret_ = x_
    ret_4 = x_4
    ret_3 = x_3
    ret_34 = (*)(-1, x_34)
    ret_2 = x_2
    ret_24 = (*)(-1, x_24)
    ret_23 = (*)(-1, x_23)
    ret_234 = (*)(-1, x_234)
    ret_1 = x_1
    ret_14 = (*)(-1, x_14)
    ret_13 = (*)(-1, x_13)
    ret_134 = (*)(-1, x_134)
    ret_12 = (*)(-1, x_12)
    ret_124 = (*)(-1, x_124)
    ret_123 = (*)(-1, x_123)
    ret_1234 = x_1234
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function rev(x::MultiVectorEven)
    x_ = x.e
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    x_1234 = x.e1234
    ret_ = x_
    ret_34 = (*)(-1, x_34)
    ret_24 = (*)(-1, x_24)
    ret_23 = (*)(-1, x_23)
    ret_14 = (*)(-1, x_14)
    ret_13 = (*)(-1, x_13)
    ret_12 = (*)(-1, x_12)
    ret_1234 = x_1234
    return MultiVectorEven(; e = ret_, e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12, e1234 = ret_1234)
end
function rev(x::MultiVector0)
    x_ = x.e
    ret_ = x_
    return MultiVector0(; e = ret_)
end
function rev(x::MultiVector1)
    x_4 = x.e4
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    ret_4 = x_4
    ret_3 = x_3
    ret_2 = x_2
    ret_1 = x_1
    return MultiVector1(; e4 = ret_4, e3 = ret_3, e2 = ret_2, e1 = ret_1)
end
function rev(x::MultiVector2)
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    ret_34 = (*)(-1, x_34)
    ret_24 = (*)(-1, x_24)
    ret_23 = (*)(-1, x_23)
    ret_14 = (*)(-1, x_14)
    ret_13 = (*)(-1, x_13)
    ret_12 = (*)(-1, x_12)
    return MultiVector2(; e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12)
end
function rev(x::MultiVector3)
    x_234 = x.e234
    x_134 = x.e134
    x_124 = x.e124
    x_123 = x.e123
    ret_234 = (*)(-1, x_234)
    ret_134 = (*)(-1, x_134)
    ret_124 = (*)(-1, x_124)
    ret_123 = (*)(-1, x_123)
    return MultiVector3(; e234 = ret_234, e134 = ret_134, e124 = ret_124, e123 = ret_123)
end
function rev(x::MultiVector4)
    x_1234 = x.e1234
    ret_1234 = x_1234
    return MultiVector4(; e1234 = ret_1234)
end
function rev(x::MultiVectorZero)
    return MultiVectorZero(; )
end
function Base.:-(x::MultiVectorAll)
    x_ = x.e
    x_4 = x.e4
    x_3 = x.e3
    x_34 = x.e34
    x_2 = x.e2
    x_24 = x.e24
    x_23 = x.e23
    x_234 = x.e234
    x_1 = x.e1
    x_14 = x.e14
    x_13 = x.e13
    x_134 = x.e134
    x_12 = x.e12
    x_124 = x.e124
    x_123 = x.e123
    x_1234 = x.e1234
    ret_ = (*)(-1, x_)
    ret_4 = (*)(-1, x_4)
    ret_3 = (*)(-1, x_3)
    ret_34 = (*)(-1, x_34)
    ret_2 = (*)(-1, x_2)
    ret_24 = (*)(-1, x_24)
    ret_23 = (*)(-1, x_23)
    ret_234 = (*)(-1, x_234)
    ret_1 = (*)(-1, x_1)
    ret_14 = (*)(-1, x_14)
    ret_13 = (*)(-1, x_13)
    ret_134 = (*)(-1, x_134)
    ret_12 = (*)(-1, x_12)
    ret_124 = (*)(-1, x_124)
    ret_123 = (*)(-1, x_123)
    ret_1234 = (*)(-1, x_1234)
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function Base.:-(x::MultiVectorEven)
    x_ = x.e
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    x_1234 = x.e1234
    ret_ = (*)(-1, x_)
    ret_34 = (*)(-1, x_34)
    ret_24 = (*)(-1, x_24)
    ret_23 = (*)(-1, x_23)
    ret_14 = (*)(-1, x_14)
    ret_13 = (*)(-1, x_13)
    ret_12 = (*)(-1, x_12)
    ret_1234 = (*)(-1, x_1234)
    return MultiVectorEven(; e = ret_, e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12, e1234 = ret_1234)
end
function Base.:-(x::MultiVector0)
    x_ = x.e
    ret_ = (*)(-1, x_)
    return MultiVector0(; e = ret_)
end
function Base.:-(x::MultiVector1)
    x_4 = x.e4
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    ret_4 = (*)(-1, x_4)
    ret_3 = (*)(-1, x_3)
    ret_2 = (*)(-1, x_2)
    ret_1 = (*)(-1, x_1)
    return MultiVector1(; e4 = ret_4, e3 = ret_3, e2 = ret_2, e1 = ret_1)
end
function Base.:-(x::MultiVector2)
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    ret_34 = (*)(-1, x_34)
    ret_24 = (*)(-1, x_24)
    ret_23 = (*)(-1, x_23)
    ret_14 = (*)(-1, x_14)
    ret_13 = (*)(-1, x_13)
    ret_12 = (*)(-1, x_12)
    return MultiVector2(; e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12)
end
function Base.:-(x::MultiVector3)
    x_234 = x.e234
    x_134 = x.e134
    x_124 = x.e124
    x_123 = x.e123
    ret_234 = (*)(-1, x_234)
    ret_134 = (*)(-1, x_134)
    ret_124 = (*)(-1, x_124)
    ret_123 = (*)(-1, x_123)
    return MultiVector3(; e234 = ret_234, e134 = ret_134, e124 = ret_124, e123 = ret_123)
end
function Base.:-(x::MultiVector4)
    x_1234 = x.e1234
    ret_1234 = (*)(-1, x_1234)
    return MultiVector4(; e1234 = ret_1234)
end
function Base.:-(x::MultiVectorZero)
    return MultiVectorZero(; )
end
function Base.:+(x::MultiVectorAll, y::MultiVectorAll)
    x_ = x.e
    x_4 = x.e4
    x_3 = x.e3
    x_34 = x.e34
    x_2 = x.e2
    x_24 = x.e24
    x_23 = x.e23
    x_234 = x.e234
    x_1 = x.e1
    x_14 = x.e14
    x_13 = x.e13
    x_134 = x.e134
    x_12 = x.e12
    x_124 = x.e124
    x_123 = x.e123
    x_1234 = x.e1234
    y_ = y.e
    y_4 = y.e4
    y_3 = y.e3
    y_34 = y.e34
    y_2 = y.e2
    y_24 = y.e24
    y_23 = y.e23
    y_234 = y.e234
    y_1 = y.e1
    y_14 = y.e14
    y_13 = y.e13
    y_134 = y.e134
    y_12 = y.e12
    y_124 = y.e124
    y_123 = y.e123
    y_1234 = y.e1234
    ret_ = (+)(x_, y_)
    ret_4 = (+)(x_4, y_4)
    ret_3 = (+)(x_3, y_3)
    ret_34 = (+)(x_34, y_34)
    ret_2 = (+)(x_2, y_2)
    ret_24 = (+)(x_24, y_24)
    ret_23 = (+)(x_23, y_23)
    ret_234 = (+)(x_234, y_234)
    ret_1 = (+)(x_1, y_1)
    ret_14 = (+)(x_14, y_14)
    ret_13 = (+)(x_13, y_13)
    ret_134 = (+)(x_134, y_134)
    ret_12 = (+)(x_12, y_12)
    ret_124 = (+)(x_124, y_124)
    ret_123 = (+)(x_123, y_123)
    ret_1234 = (+)(x_1234, y_1234)
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function Base.:+(x::MultiVectorAll, y::MultiVectorEven)
    x_ = x.e
    x_4 = x.e4
    x_3 = x.e3
    x_34 = x.e34
    x_2 = x.e2
    x_24 = x.e24
    x_23 = x.e23
    x_234 = x.e234
    x_1 = x.e1
    x_14 = x.e14
    x_13 = x.e13
    x_134 = x.e134
    x_12 = x.e12
    x_124 = x.e124
    x_123 = x.e123
    x_1234 = x.e1234
    y_ = y.e
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    y_1234 = y.e1234
    ret_ = (+)(x_, y_)
    ret_4 = x_4
    ret_3 = x_3
    ret_34 = (+)(x_34, y_34)
    ret_2 = x_2
    ret_24 = (+)(x_24, y_24)
    ret_23 = (+)(x_23, y_23)
    ret_234 = x_234
    ret_1 = x_1
    ret_14 = (+)(x_14, y_14)
    ret_13 = (+)(x_13, y_13)
    ret_134 = x_134
    ret_12 = (+)(x_12, y_12)
    ret_124 = x_124
    ret_123 = x_123
    ret_1234 = (+)(x_1234, y_1234)
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function Base.:+(x::MultiVectorAll, y::MultiVector0)
    x_ = x.e
    x_4 = x.e4
    x_3 = x.e3
    x_34 = x.e34
    x_2 = x.e2
    x_24 = x.e24
    x_23 = x.e23
    x_234 = x.e234
    x_1 = x.e1
    x_14 = x.e14
    x_13 = x.e13
    x_134 = x.e134
    x_12 = x.e12
    x_124 = x.e124
    x_123 = x.e123
    x_1234 = x.e1234
    y_ = y.e
    ret_ = (+)(x_, y_)
    ret_4 = x_4
    ret_3 = x_3
    ret_34 = x_34
    ret_2 = x_2
    ret_24 = x_24
    ret_23 = x_23
    ret_234 = x_234
    ret_1 = x_1
    ret_14 = x_14
    ret_13 = x_13
    ret_134 = x_134
    ret_12 = x_12
    ret_124 = x_124
    ret_123 = x_123
    ret_1234 = x_1234
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function Base.:+(x::MultiVectorAll, y::MultiVector1)
    x_ = x.e
    x_4 = x.e4
    x_3 = x.e3
    x_34 = x.e34
    x_2 = x.e2
    x_24 = x.e24
    x_23 = x.e23
    x_234 = x.e234
    x_1 = x.e1
    x_14 = x.e14
    x_13 = x.e13
    x_134 = x.e134
    x_12 = x.e12
    x_124 = x.e124
    x_123 = x.e123
    x_1234 = x.e1234
    y_4 = y.e4
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    ret_ = x_
    ret_4 = (+)(x_4, y_4)
    ret_3 = (+)(x_3, y_3)
    ret_34 = x_34
    ret_2 = (+)(x_2, y_2)
    ret_24 = x_24
    ret_23 = x_23
    ret_234 = x_234
    ret_1 = (+)(x_1, y_1)
    ret_14 = x_14
    ret_13 = x_13
    ret_134 = x_134
    ret_12 = x_12
    ret_124 = x_124
    ret_123 = x_123
    ret_1234 = x_1234
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function Base.:+(x::MultiVectorAll, y::MultiVector2)
    x_ = x.e
    x_4 = x.e4
    x_3 = x.e3
    x_34 = x.e34
    x_2 = x.e2
    x_24 = x.e24
    x_23 = x.e23
    x_234 = x.e234
    x_1 = x.e1
    x_14 = x.e14
    x_13 = x.e13
    x_134 = x.e134
    x_12 = x.e12
    x_124 = x.e124
    x_123 = x.e123
    x_1234 = x.e1234
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    ret_ = x_
    ret_4 = x_4
    ret_3 = x_3
    ret_34 = (+)(x_34, y_34)
    ret_2 = x_2
    ret_24 = (+)(x_24, y_24)
    ret_23 = (+)(x_23, y_23)
    ret_234 = x_234
    ret_1 = x_1
    ret_14 = (+)(x_14, y_14)
    ret_13 = (+)(x_13, y_13)
    ret_134 = x_134
    ret_12 = (+)(x_12, y_12)
    ret_124 = x_124
    ret_123 = x_123
    ret_1234 = x_1234
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function Base.:+(x::MultiVectorAll, y::MultiVector3)
    x_ = x.e
    x_4 = x.e4
    x_3 = x.e3
    x_34 = x.e34
    x_2 = x.e2
    x_24 = x.e24
    x_23 = x.e23
    x_234 = x.e234
    x_1 = x.e1
    x_14 = x.e14
    x_13 = x.e13
    x_134 = x.e134
    x_12 = x.e12
    x_124 = x.e124
    x_123 = x.e123
    x_1234 = x.e1234
    y_234 = y.e234
    y_134 = y.e134
    y_124 = y.e124
    y_123 = y.e123
    ret_ = x_
    ret_4 = x_4
    ret_3 = x_3
    ret_34 = x_34
    ret_2 = x_2
    ret_24 = x_24
    ret_23 = x_23
    ret_234 = (+)(x_234, y_234)
    ret_1 = x_1
    ret_14 = x_14
    ret_13 = x_13
    ret_134 = (+)(x_134, y_134)
    ret_12 = x_12
    ret_124 = (+)(x_124, y_124)
    ret_123 = (+)(x_123, y_123)
    ret_1234 = x_1234
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function Base.:+(x::MultiVectorAll, y::MultiVector4)
    x_ = x.e
    x_4 = x.e4
    x_3 = x.e3
    x_34 = x.e34
    x_2 = x.e2
    x_24 = x.e24
    x_23 = x.e23
    x_234 = x.e234
    x_1 = x.e1
    x_14 = x.e14
    x_13 = x.e13
    x_134 = x.e134
    x_12 = x.e12
    x_124 = x.e124
    x_123 = x.e123
    x_1234 = x.e1234
    y_1234 = y.e1234
    ret_ = x_
    ret_4 = x_4
    ret_3 = x_3
    ret_34 = x_34
    ret_2 = x_2
    ret_24 = x_24
    ret_23 = x_23
    ret_234 = x_234
    ret_1 = x_1
    ret_14 = x_14
    ret_13 = x_13
    ret_134 = x_134
    ret_12 = x_12
    ret_124 = x_124
    ret_123 = x_123
    ret_1234 = (+)(x_1234, y_1234)
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function Base.:+(x::MultiVectorAll, y::MultiVectorZero)
    x_ = x.e
    x_4 = x.e4
    x_3 = x.e3
    x_34 = x.e34
    x_2 = x.e2
    x_24 = x.e24
    x_23 = x.e23
    x_234 = x.e234
    x_1 = x.e1
    x_14 = x.e14
    x_13 = x.e13
    x_134 = x.e134
    x_12 = x.e12
    x_124 = x.e124
    x_123 = x.e123
    x_1234 = x.e1234
    ret_ = x_
    ret_4 = x_4
    ret_3 = x_3
    ret_34 = x_34
    ret_2 = x_2
    ret_24 = x_24
    ret_23 = x_23
    ret_234 = x_234
    ret_1 = x_1
    ret_14 = x_14
    ret_13 = x_13
    ret_134 = x_134
    ret_12 = x_12
    ret_124 = x_124
    ret_123 = x_123
    ret_1234 = x_1234
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function Base.:+(x::MultiVectorEven, y::MultiVectorAll)
    x_ = x.e
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    x_1234 = x.e1234
    y_ = y.e
    y_4 = y.e4
    y_3 = y.e3
    y_34 = y.e34
    y_2 = y.e2
    y_24 = y.e24
    y_23 = y.e23
    y_234 = y.e234
    y_1 = y.e1
    y_14 = y.e14
    y_13 = y.e13
    y_134 = y.e134
    y_12 = y.e12
    y_124 = y.e124
    y_123 = y.e123
    y_1234 = y.e1234
    ret_ = (+)(x_, y_)
    ret_4 = y_4
    ret_3 = y_3
    ret_34 = (+)(x_34, y_34)
    ret_2 = y_2
    ret_24 = (+)(x_24, y_24)
    ret_23 = (+)(x_23, y_23)
    ret_234 = y_234
    ret_1 = y_1
    ret_14 = (+)(x_14, y_14)
    ret_13 = (+)(x_13, y_13)
    ret_134 = y_134
    ret_12 = (+)(x_12, y_12)
    ret_124 = y_124
    ret_123 = y_123
    ret_1234 = (+)(x_1234, y_1234)
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function Base.:+(x::MultiVectorEven, y::MultiVectorEven)
    x_ = x.e
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    x_1234 = x.e1234
    y_ = y.e
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    y_1234 = y.e1234
    ret_ = (+)(x_, y_)
    ret_34 = (+)(x_34, y_34)
    ret_24 = (+)(x_24, y_24)
    ret_23 = (+)(x_23, y_23)
    ret_14 = (+)(x_14, y_14)
    ret_13 = (+)(x_13, y_13)
    ret_12 = (+)(x_12, y_12)
    ret_1234 = (+)(x_1234, y_1234)
    return MultiVectorEven(; e = ret_, e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12, e1234 = ret_1234)
end
function Base.:+(x::MultiVectorEven, y::MultiVector0)
    x_ = x.e
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    x_1234 = x.e1234
    y_ = y.e
    ret_ = (+)(x_, y_)
    ret_34 = x_34
    ret_24 = x_24
    ret_23 = x_23
    ret_14 = x_14
    ret_13 = x_13
    ret_12 = x_12
    ret_1234 = x_1234
    return MultiVectorEven(; e = ret_, e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12, e1234 = ret_1234)
end
function Base.:+(x::MultiVectorEven, y::MultiVector1)
    x_ = x.e
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    x_1234 = x.e1234
    y_4 = y.e4
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    ret_ = x_
    ret_4 = y_4
    ret_3 = y_3
    ret_34 = x_34
    ret_2 = y_2
    ret_24 = x_24
    ret_23 = x_23
    ret_1 = y_1
    ret_14 = x_14
    ret_13 = x_13
    ret_12 = x_12
    ret_1234 = x_1234
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e1 = ret_1, e14 = ret_14, e13 = ret_13, e12 = ret_12, e1234 = ret_1234)
end
function Base.:+(x::MultiVectorEven, y::MultiVector2)
    x_ = x.e
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    x_1234 = x.e1234
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    ret_ = x_
    ret_34 = (+)(x_34, y_34)
    ret_24 = (+)(x_24, y_24)
    ret_23 = (+)(x_23, y_23)
    ret_14 = (+)(x_14, y_14)
    ret_13 = (+)(x_13, y_13)
    ret_12 = (+)(x_12, y_12)
    ret_1234 = x_1234
    return MultiVectorEven(; e = ret_, e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12, e1234 = ret_1234)
end
function Base.:+(x::MultiVectorEven, y::MultiVector3)
    x_ = x.e
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    x_1234 = x.e1234
    y_234 = y.e234
    y_134 = y.e134
    y_124 = y.e124
    y_123 = y.e123
    ret_ = x_
    ret_34 = x_34
    ret_24 = x_24
    ret_23 = x_23
    ret_234 = y_234
    ret_14 = x_14
    ret_13 = x_13
    ret_134 = y_134
    ret_12 = x_12
    ret_124 = y_124
    ret_123 = y_123
    ret_1234 = x_1234
    return MultiVectorAll(; e = ret_, e34 = ret_34, e24 = ret_24, e23 = ret_23, e234 = ret_234, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function Base.:+(x::MultiVectorEven, y::MultiVector4)
    x_ = x.e
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    x_1234 = x.e1234
    y_1234 = y.e1234
    ret_ = x_
    ret_34 = x_34
    ret_24 = x_24
    ret_23 = x_23
    ret_14 = x_14
    ret_13 = x_13
    ret_12 = x_12
    ret_1234 = (+)(x_1234, y_1234)
    return MultiVectorEven(; e = ret_, e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12, e1234 = ret_1234)
end
function Base.:+(x::MultiVectorEven, y::MultiVectorZero)
    x_ = x.e
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    x_1234 = x.e1234
    ret_ = x_
    ret_34 = x_34
    ret_24 = x_24
    ret_23 = x_23
    ret_14 = x_14
    ret_13 = x_13
    ret_12 = x_12
    ret_1234 = x_1234
    return MultiVectorEven(; e = ret_, e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12, e1234 = ret_1234)
end
function Base.:+(x::MultiVector0, y::MultiVectorAll)
    x_ = x.e
    y_ = y.e
    y_4 = y.e4
    y_3 = y.e3
    y_34 = y.e34
    y_2 = y.e2
    y_24 = y.e24
    y_23 = y.e23
    y_234 = y.e234
    y_1 = y.e1
    y_14 = y.e14
    y_13 = y.e13
    y_134 = y.e134
    y_12 = y.e12
    y_124 = y.e124
    y_123 = y.e123
    y_1234 = y.e1234
    ret_ = (+)(x_, y_)
    ret_4 = y_4
    ret_3 = y_3
    ret_34 = y_34
    ret_2 = y_2
    ret_24 = y_24
    ret_23 = y_23
    ret_234 = y_234
    ret_1 = y_1
    ret_14 = y_14
    ret_13 = y_13
    ret_134 = y_134
    ret_12 = y_12
    ret_124 = y_124
    ret_123 = y_123
    ret_1234 = y_1234
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function Base.:+(x::MultiVector0, y::MultiVectorEven)
    x_ = x.e
    y_ = y.e
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    y_1234 = y.e1234
    ret_ = (+)(x_, y_)
    ret_34 = y_34
    ret_24 = y_24
    ret_23 = y_23
    ret_14 = y_14
    ret_13 = y_13
    ret_12 = y_12
    ret_1234 = y_1234
    return MultiVectorEven(; e = ret_, e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12, e1234 = ret_1234)
end
function Base.:+(x::MultiVector0, y::MultiVector0)
    x_ = x.e
    y_ = y.e
    ret_ = (+)(x_, y_)
    return MultiVector0(; e = ret_)
end
function Base.:+(x::MultiVector0, y::MultiVector1)
    x_ = x.e
    y_4 = y.e4
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    ret_ = x_
    ret_4 = y_4
    ret_3 = y_3
    ret_2 = y_2
    ret_1 = y_1
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e2 = ret_2, e1 = ret_1)
end
function Base.:+(x::MultiVector0, y::MultiVector2)
    x_ = x.e
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    ret_ = x_
    ret_34 = y_34
    ret_24 = y_24
    ret_23 = y_23
    ret_14 = y_14
    ret_13 = y_13
    ret_12 = y_12
    return MultiVectorEven(; e = ret_, e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12)
end
function Base.:+(x::MultiVector0, y::MultiVector3)
    x_ = x.e
    y_234 = y.e234
    y_134 = y.e134
    y_124 = y.e124
    y_123 = y.e123
    ret_ = x_
    ret_234 = y_234
    ret_134 = y_134
    ret_124 = y_124
    ret_123 = y_123
    return MultiVectorAll(; e = ret_, e234 = ret_234, e134 = ret_134, e124 = ret_124, e123 = ret_123)
end
function Base.:+(x::MultiVector0, y::MultiVector4)
    x_ = x.e
    y_1234 = y.e1234
    ret_ = x_
    ret_1234 = y_1234
    return MultiVectorEven(; e = ret_, e1234 = ret_1234)
end
function Base.:+(x::MultiVector0, y::MultiVectorZero)
    x_ = x.e
    ret_ = x_
    return MultiVector0(; e = ret_)
end
function Base.:+(x::MultiVector1, y::MultiVectorAll)
    x_4 = x.e4
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    y_ = y.e
    y_4 = y.e4
    y_3 = y.e3
    y_34 = y.e34
    y_2 = y.e2
    y_24 = y.e24
    y_23 = y.e23
    y_234 = y.e234
    y_1 = y.e1
    y_14 = y.e14
    y_13 = y.e13
    y_134 = y.e134
    y_12 = y.e12
    y_124 = y.e124
    y_123 = y.e123
    y_1234 = y.e1234
    ret_ = y_
    ret_4 = (+)(x_4, y_4)
    ret_3 = (+)(x_3, y_3)
    ret_34 = y_34
    ret_2 = (+)(x_2, y_2)
    ret_24 = y_24
    ret_23 = y_23
    ret_234 = y_234
    ret_1 = (+)(x_1, y_1)
    ret_14 = y_14
    ret_13 = y_13
    ret_134 = y_134
    ret_12 = y_12
    ret_124 = y_124
    ret_123 = y_123
    ret_1234 = y_1234
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function Base.:+(x::MultiVector1, y::MultiVectorEven)
    x_4 = x.e4
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    y_ = y.e
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    y_1234 = y.e1234
    ret_ = y_
    ret_4 = x_4
    ret_3 = x_3
    ret_34 = y_34
    ret_2 = x_2
    ret_24 = y_24
    ret_23 = y_23
    ret_1 = x_1
    ret_14 = y_14
    ret_13 = y_13
    ret_12 = y_12
    ret_1234 = y_1234
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e1 = ret_1, e14 = ret_14, e13 = ret_13, e12 = ret_12, e1234 = ret_1234)
end
function Base.:+(x::MultiVector1, y::MultiVector0)
    x_4 = x.e4
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    y_ = y.e
    ret_ = y_
    ret_4 = x_4
    ret_3 = x_3
    ret_2 = x_2
    ret_1 = x_1
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e2 = ret_2, e1 = ret_1)
end
function Base.:+(x::MultiVector1, y::MultiVector1)
    x_4 = x.e4
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    y_4 = y.e4
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    ret_4 = (+)(x_4, y_4)
    ret_3 = (+)(x_3, y_3)
    ret_2 = (+)(x_2, y_2)
    ret_1 = (+)(x_1, y_1)
    return MultiVector1(; e4 = ret_4, e3 = ret_3, e2 = ret_2, e1 = ret_1)
end
function Base.:+(x::MultiVector1, y::MultiVector2)
    x_4 = x.e4
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    ret_4 = x_4
    ret_3 = x_3
    ret_34 = y_34
    ret_2 = x_2
    ret_24 = y_24
    ret_23 = y_23
    ret_1 = x_1
    ret_14 = y_14
    ret_13 = y_13
    ret_12 = y_12
    return MultiVectorAll(; e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e1 = ret_1, e14 = ret_14, e13 = ret_13, e12 = ret_12)
end
function Base.:+(x::MultiVector1, y::MultiVector3)
    x_4 = x.e4
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    y_234 = y.e234
    y_134 = y.e134
    y_124 = y.e124
    y_123 = y.e123
    ret_4 = x_4
    ret_3 = x_3
    ret_2 = x_2
    ret_234 = y_234
    ret_1 = x_1
    ret_134 = y_134
    ret_124 = y_124
    ret_123 = y_123
    return MultiVectorAll(; e4 = ret_4, e3 = ret_3, e2 = ret_2, e234 = ret_234, e1 = ret_1, e134 = ret_134, e124 = ret_124, e123 = ret_123)
end
function Base.:+(x::MultiVector1, y::MultiVector4)
    x_4 = x.e4
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    y_1234 = y.e1234
    ret_4 = x_4
    ret_3 = x_3
    ret_2 = x_2
    ret_1 = x_1
    ret_1234 = y_1234
    return MultiVectorAll(; e4 = ret_4, e3 = ret_3, e2 = ret_2, e1 = ret_1, e1234 = ret_1234)
end
function Base.:+(x::MultiVector1, y::MultiVectorZero)
    x_4 = x.e4
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    ret_4 = x_4
    ret_3 = x_3
    ret_2 = x_2
    ret_1 = x_1
    return MultiVector1(; e4 = ret_4, e3 = ret_3, e2 = ret_2, e1 = ret_1)
end
function Base.:+(x::MultiVector2, y::MultiVectorAll)
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    y_ = y.e
    y_4 = y.e4
    y_3 = y.e3
    y_34 = y.e34
    y_2 = y.e2
    y_24 = y.e24
    y_23 = y.e23
    y_234 = y.e234
    y_1 = y.e1
    y_14 = y.e14
    y_13 = y.e13
    y_134 = y.e134
    y_12 = y.e12
    y_124 = y.e124
    y_123 = y.e123
    y_1234 = y.e1234
    ret_ = y_
    ret_4 = y_4
    ret_3 = y_3
    ret_34 = (+)(x_34, y_34)
    ret_2 = y_2
    ret_24 = (+)(x_24, y_24)
    ret_23 = (+)(x_23, y_23)
    ret_234 = y_234
    ret_1 = y_1
    ret_14 = (+)(x_14, y_14)
    ret_13 = (+)(x_13, y_13)
    ret_134 = y_134
    ret_12 = (+)(x_12, y_12)
    ret_124 = y_124
    ret_123 = y_123
    ret_1234 = y_1234
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function Base.:+(x::MultiVector2, y::MultiVectorEven)
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    y_ = y.e
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    y_1234 = y.e1234
    ret_ = y_
    ret_34 = (+)(x_34, y_34)
    ret_24 = (+)(x_24, y_24)
    ret_23 = (+)(x_23, y_23)
    ret_14 = (+)(x_14, y_14)
    ret_13 = (+)(x_13, y_13)
    ret_12 = (+)(x_12, y_12)
    ret_1234 = y_1234
    return MultiVectorEven(; e = ret_, e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12, e1234 = ret_1234)
end
function Base.:+(x::MultiVector2, y::MultiVector0)
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    y_ = y.e
    ret_ = y_
    ret_34 = x_34
    ret_24 = x_24
    ret_23 = x_23
    ret_14 = x_14
    ret_13 = x_13
    ret_12 = x_12
    return MultiVectorEven(; e = ret_, e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12)
end
function Base.:+(x::MultiVector2, y::MultiVector1)
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    y_4 = y.e4
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    ret_4 = y_4
    ret_3 = y_3
    ret_34 = x_34
    ret_2 = y_2
    ret_24 = x_24
    ret_23 = x_23
    ret_1 = y_1
    ret_14 = x_14
    ret_13 = x_13
    ret_12 = x_12
    return MultiVectorAll(; e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e1 = ret_1, e14 = ret_14, e13 = ret_13, e12 = ret_12)
end
function Base.:+(x::MultiVector2, y::MultiVector2)
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    ret_34 = (+)(x_34, y_34)
    ret_24 = (+)(x_24, y_24)
    ret_23 = (+)(x_23, y_23)
    ret_14 = (+)(x_14, y_14)
    ret_13 = (+)(x_13, y_13)
    ret_12 = (+)(x_12, y_12)
    return MultiVector2(; e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12)
end
function Base.:+(x::MultiVector2, y::MultiVector3)
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    y_234 = y.e234
    y_134 = y.e134
    y_124 = y.e124
    y_123 = y.e123
    ret_34 = x_34
    ret_24 = x_24
    ret_23 = x_23
    ret_234 = y_234
    ret_14 = x_14
    ret_13 = x_13
    ret_134 = y_134
    ret_12 = x_12
    ret_124 = y_124
    ret_123 = y_123
    return MultiVectorAll(; e34 = ret_34, e24 = ret_24, e23 = ret_23, e234 = ret_234, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123)
end
function Base.:+(x::MultiVector2, y::MultiVector4)
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    y_1234 = y.e1234
    ret_34 = x_34
    ret_24 = x_24
    ret_23 = x_23
    ret_14 = x_14
    ret_13 = x_13
    ret_12 = x_12
    ret_1234 = y_1234
    return MultiVectorEven(; e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12, e1234 = ret_1234)
end
function Base.:+(x::MultiVector2, y::MultiVectorZero)
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    ret_34 = x_34
    ret_24 = x_24
    ret_23 = x_23
    ret_14 = x_14
    ret_13 = x_13
    ret_12 = x_12
    return MultiVector2(; e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12)
end
function Base.:+(x::MultiVector3, y::MultiVectorAll)
    x_234 = x.e234
    x_134 = x.e134
    x_124 = x.e124
    x_123 = x.e123
    y_ = y.e
    y_4 = y.e4
    y_3 = y.e3
    y_34 = y.e34
    y_2 = y.e2
    y_24 = y.e24
    y_23 = y.e23
    y_234 = y.e234
    y_1 = y.e1
    y_14 = y.e14
    y_13 = y.e13
    y_134 = y.e134
    y_12 = y.e12
    y_124 = y.e124
    y_123 = y.e123
    y_1234 = y.e1234
    ret_ = y_
    ret_4 = y_4
    ret_3 = y_3
    ret_34 = y_34
    ret_2 = y_2
    ret_24 = y_24
    ret_23 = y_23
    ret_234 = (+)(x_234, y_234)
    ret_1 = y_1
    ret_14 = y_14
    ret_13 = y_13
    ret_134 = (+)(x_134, y_134)
    ret_12 = y_12
    ret_124 = (+)(x_124, y_124)
    ret_123 = (+)(x_123, y_123)
    ret_1234 = y_1234
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function Base.:+(x::MultiVector3, y::MultiVectorEven)
    x_234 = x.e234
    x_134 = x.e134
    x_124 = x.e124
    x_123 = x.e123
    y_ = y.e
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    y_1234 = y.e1234
    ret_ = y_
    ret_34 = y_34
    ret_24 = y_24
    ret_23 = y_23
    ret_234 = x_234
    ret_14 = y_14
    ret_13 = y_13
    ret_134 = x_134
    ret_12 = y_12
    ret_124 = x_124
    ret_123 = x_123
    ret_1234 = y_1234
    return MultiVectorAll(; e = ret_, e34 = ret_34, e24 = ret_24, e23 = ret_23, e234 = ret_234, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function Base.:+(x::MultiVector3, y::MultiVector0)
    x_234 = x.e234
    x_134 = x.e134
    x_124 = x.e124
    x_123 = x.e123
    y_ = y.e
    ret_ = y_
    ret_234 = x_234
    ret_134 = x_134
    ret_124 = x_124
    ret_123 = x_123
    return MultiVectorAll(; e = ret_, e234 = ret_234, e134 = ret_134, e124 = ret_124, e123 = ret_123)
end
function Base.:+(x::MultiVector3, y::MultiVector1)
    x_234 = x.e234
    x_134 = x.e134
    x_124 = x.e124
    x_123 = x.e123
    y_4 = y.e4
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    ret_4 = y_4
    ret_3 = y_3
    ret_2 = y_2
    ret_234 = x_234
    ret_1 = y_1
    ret_134 = x_134
    ret_124 = x_124
    ret_123 = x_123
    return MultiVectorAll(; e4 = ret_4, e3 = ret_3, e2 = ret_2, e234 = ret_234, e1 = ret_1, e134 = ret_134, e124 = ret_124, e123 = ret_123)
end
function Base.:+(x::MultiVector3, y::MultiVector2)
    x_234 = x.e234
    x_134 = x.e134
    x_124 = x.e124
    x_123 = x.e123
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    ret_34 = y_34
    ret_24 = y_24
    ret_23 = y_23
    ret_234 = x_234
    ret_14 = y_14
    ret_13 = y_13
    ret_134 = x_134
    ret_12 = y_12
    ret_124 = x_124
    ret_123 = x_123
    return MultiVectorAll(; e34 = ret_34, e24 = ret_24, e23 = ret_23, e234 = ret_234, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123)
end
function Base.:+(x::MultiVector3, y::MultiVector3)
    x_234 = x.e234
    x_134 = x.e134
    x_124 = x.e124
    x_123 = x.e123
    y_234 = y.e234
    y_134 = y.e134
    y_124 = y.e124
    y_123 = y.e123
    ret_234 = (+)(x_234, y_234)
    ret_134 = (+)(x_134, y_134)
    ret_124 = (+)(x_124, y_124)
    ret_123 = (+)(x_123, y_123)
    return MultiVector3(; e234 = ret_234, e134 = ret_134, e124 = ret_124, e123 = ret_123)
end
function Base.:+(x::MultiVector3, y::MultiVector4)
    x_234 = x.e234
    x_134 = x.e134
    x_124 = x.e124
    x_123 = x.e123
    y_1234 = y.e1234
    ret_234 = x_234
    ret_134 = x_134
    ret_124 = x_124
    ret_123 = x_123
    ret_1234 = y_1234
    return MultiVectorAll(; e234 = ret_234, e134 = ret_134, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function Base.:+(x::MultiVector3, y::MultiVectorZero)
    x_234 = x.e234
    x_134 = x.e134
    x_124 = x.e124
    x_123 = x.e123
    ret_234 = x_234
    ret_134 = x_134
    ret_124 = x_124
    ret_123 = x_123
    return MultiVector3(; e234 = ret_234, e134 = ret_134, e124 = ret_124, e123 = ret_123)
end
function Base.:+(x::MultiVector4, y::MultiVectorAll)
    x_1234 = x.e1234
    y_ = y.e
    y_4 = y.e4
    y_3 = y.e3
    y_34 = y.e34
    y_2 = y.e2
    y_24 = y.e24
    y_23 = y.e23
    y_234 = y.e234
    y_1 = y.e1
    y_14 = y.e14
    y_13 = y.e13
    y_134 = y.e134
    y_12 = y.e12
    y_124 = y.e124
    y_123 = y.e123
    y_1234 = y.e1234
    ret_ = y_
    ret_4 = y_4
    ret_3 = y_3
    ret_34 = y_34
    ret_2 = y_2
    ret_24 = y_24
    ret_23 = y_23
    ret_234 = y_234
    ret_1 = y_1
    ret_14 = y_14
    ret_13 = y_13
    ret_134 = y_134
    ret_12 = y_12
    ret_124 = y_124
    ret_123 = y_123
    ret_1234 = (+)(x_1234, y_1234)
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function Base.:+(x::MultiVector4, y::MultiVectorEven)
    x_1234 = x.e1234
    y_ = y.e
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    y_1234 = y.e1234
    ret_ = y_
    ret_34 = y_34
    ret_24 = y_24
    ret_23 = y_23
    ret_14 = y_14
    ret_13 = y_13
    ret_12 = y_12
    ret_1234 = (+)(x_1234, y_1234)
    return MultiVectorEven(; e = ret_, e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12, e1234 = ret_1234)
end
function Base.:+(x::MultiVector4, y::MultiVector0)
    x_1234 = x.e1234
    y_ = y.e
    ret_ = y_
    ret_1234 = x_1234
    return MultiVectorEven(; e = ret_, e1234 = ret_1234)
end
function Base.:+(x::MultiVector4, y::MultiVector1)
    x_1234 = x.e1234
    y_4 = y.e4
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    ret_4 = y_4
    ret_3 = y_3
    ret_2 = y_2
    ret_1 = y_1
    ret_1234 = x_1234
    return MultiVectorAll(; e4 = ret_4, e3 = ret_3, e2 = ret_2, e1 = ret_1, e1234 = ret_1234)
end
function Base.:+(x::MultiVector4, y::MultiVector2)
    x_1234 = x.e1234
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    ret_34 = y_34
    ret_24 = y_24
    ret_23 = y_23
    ret_14 = y_14
    ret_13 = y_13
    ret_12 = y_12
    ret_1234 = x_1234
    return MultiVectorEven(; e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12, e1234 = ret_1234)
end
function Base.:+(x::MultiVector4, y::MultiVector3)
    x_1234 = x.e1234
    y_234 = y.e234
    y_134 = y.e134
    y_124 = y.e124
    y_123 = y.e123
    ret_234 = y_234
    ret_134 = y_134
    ret_124 = y_124
    ret_123 = y_123
    ret_1234 = x_1234
    return MultiVectorAll(; e234 = ret_234, e134 = ret_134, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function Base.:+(x::MultiVector4, y::MultiVector4)
    x_1234 = x.e1234
    y_1234 = y.e1234
    ret_1234 = (+)(x_1234, y_1234)
    return MultiVector4(; e1234 = ret_1234)
end
function Base.:+(x::MultiVector4, y::MultiVectorZero)
    x_1234 = x.e1234
    ret_1234 = x_1234
    return MultiVector4(; e1234 = ret_1234)
end
function Base.:+(x::MultiVectorZero, y::MultiVectorAll)
    y_ = y.e
    y_4 = y.e4
    y_3 = y.e3
    y_34 = y.e34
    y_2 = y.e2
    y_24 = y.e24
    y_23 = y.e23
    y_234 = y.e234
    y_1 = y.e1
    y_14 = y.e14
    y_13 = y.e13
    y_134 = y.e134
    y_12 = y.e12
    y_124 = y.e124
    y_123 = y.e123
    y_1234 = y.e1234
    ret_ = y_
    ret_4 = y_4
    ret_3 = y_3
    ret_34 = y_34
    ret_2 = y_2
    ret_24 = y_24
    ret_23 = y_23
    ret_234 = y_234
    ret_1 = y_1
    ret_14 = y_14
    ret_13 = y_13
    ret_134 = y_134
    ret_12 = y_12
    ret_124 = y_124
    ret_123 = y_123
    ret_1234 = y_1234
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function Base.:+(x::MultiVectorZero, y::MultiVectorEven)
    y_ = y.e
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    y_1234 = y.e1234
    ret_ = y_
    ret_34 = y_34
    ret_24 = y_24
    ret_23 = y_23
    ret_14 = y_14
    ret_13 = y_13
    ret_12 = y_12
    ret_1234 = y_1234
    return MultiVectorEven(; e = ret_, e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12, e1234 = ret_1234)
end
function Base.:+(x::MultiVectorZero, y::MultiVector0)
    y_ = y.e
    ret_ = y_
    return MultiVector0(; e = ret_)
end
function Base.:+(x::MultiVectorZero, y::MultiVector1)
    y_4 = y.e4
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    ret_4 = y_4
    ret_3 = y_3
    ret_2 = y_2
    ret_1 = y_1
    return MultiVector1(; e4 = ret_4, e3 = ret_3, e2 = ret_2, e1 = ret_1)
end
function Base.:+(x::MultiVectorZero, y::MultiVector2)
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    ret_34 = y_34
    ret_24 = y_24
    ret_23 = y_23
    ret_14 = y_14
    ret_13 = y_13
    ret_12 = y_12
    return MultiVector2(; e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12)
end
function Base.:+(x::MultiVectorZero, y::MultiVector3)
    y_234 = y.e234
    y_134 = y.e134
    y_124 = y.e124
    y_123 = y.e123
    ret_234 = y_234
    ret_134 = y_134
    ret_124 = y_124
    ret_123 = y_123
    return MultiVector3(; e234 = ret_234, e134 = ret_134, e124 = ret_124, e123 = ret_123)
end
function Base.:+(x::MultiVectorZero, y::MultiVector4)
    y_1234 = y.e1234
    ret_1234 = y_1234
    return MultiVector4(; e1234 = ret_1234)
end
function Base.:+(x::MultiVectorZero, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function Base.:-(x::MultiVectorAll, y::MultiVectorAll)
    x_ = x.e
    x_4 = x.e4
    x_3 = x.e3
    x_34 = x.e34
    x_2 = x.e2
    x_24 = x.e24
    x_23 = x.e23
    x_234 = x.e234
    x_1 = x.e1
    x_14 = x.e14
    x_13 = x.e13
    x_134 = x.e134
    x_12 = x.e12
    x_124 = x.e124
    x_123 = x.e123
    x_1234 = x.e1234
    y_ = y.e
    y_4 = y.e4
    y_3 = y.e3
    y_34 = y.e34
    y_2 = y.e2
    y_24 = y.e24
    y_23 = y.e23
    y_234 = y.e234
    y_1 = y.e1
    y_14 = y.e14
    y_13 = y.e13
    y_134 = y.e134
    y_12 = y.e12
    y_124 = y.e124
    y_123 = y.e123
    y_1234 = y.e1234
    ret_ = (+)(x_, (*)(-1, y_))
    ret_4 = (+)(x_4, (*)(-1, y_4))
    ret_3 = (+)(x_3, (*)(-1, y_3))
    ret_34 = (+)(x_34, (*)(-1, y_34))
    ret_2 = (+)(x_2, (*)(-1, y_2))
    ret_24 = (+)(x_24, (*)(-1, y_24))
    ret_23 = (+)(x_23, (*)(-1, y_23))
    ret_234 = (+)(x_234, (*)(-1, y_234))
    ret_1 = (+)(x_1, (*)(-1, y_1))
    ret_14 = (+)(x_14, (*)(-1, y_14))
    ret_13 = (+)(x_13, (*)(-1, y_13))
    ret_134 = (+)(x_134, (*)(-1, y_134))
    ret_12 = (+)(x_12, (*)(-1, y_12))
    ret_124 = (+)(x_124, (*)(-1, y_124))
    ret_123 = (+)(x_123, (*)(-1, y_123))
    ret_1234 = (+)(x_1234, (*)(-1, y_1234))
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function Base.:-(x::MultiVectorAll, y::MultiVectorEven)
    x_ = x.e
    x_4 = x.e4
    x_3 = x.e3
    x_34 = x.e34
    x_2 = x.e2
    x_24 = x.e24
    x_23 = x.e23
    x_234 = x.e234
    x_1 = x.e1
    x_14 = x.e14
    x_13 = x.e13
    x_134 = x.e134
    x_12 = x.e12
    x_124 = x.e124
    x_123 = x.e123
    x_1234 = x.e1234
    y_ = y.e
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    y_1234 = y.e1234
    ret_ = (+)(x_, (*)(-1, y_))
    ret_4 = x_4
    ret_3 = x_3
    ret_34 = (+)(x_34, (*)(-1, y_34))
    ret_2 = x_2
    ret_24 = (+)(x_24, (*)(-1, y_24))
    ret_23 = (+)(x_23, (*)(-1, y_23))
    ret_234 = x_234
    ret_1 = x_1
    ret_14 = (+)(x_14, (*)(-1, y_14))
    ret_13 = (+)(x_13, (*)(-1, y_13))
    ret_134 = x_134
    ret_12 = (+)(x_12, (*)(-1, y_12))
    ret_124 = x_124
    ret_123 = x_123
    ret_1234 = (+)(x_1234, (*)(-1, y_1234))
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function Base.:-(x::MultiVectorAll, y::MultiVector0)
    x_ = x.e
    x_4 = x.e4
    x_3 = x.e3
    x_34 = x.e34
    x_2 = x.e2
    x_24 = x.e24
    x_23 = x.e23
    x_234 = x.e234
    x_1 = x.e1
    x_14 = x.e14
    x_13 = x.e13
    x_134 = x.e134
    x_12 = x.e12
    x_124 = x.e124
    x_123 = x.e123
    x_1234 = x.e1234
    y_ = y.e
    ret_ = (+)(x_, (*)(-1, y_))
    ret_4 = x_4
    ret_3 = x_3
    ret_34 = x_34
    ret_2 = x_2
    ret_24 = x_24
    ret_23 = x_23
    ret_234 = x_234
    ret_1 = x_1
    ret_14 = x_14
    ret_13 = x_13
    ret_134 = x_134
    ret_12 = x_12
    ret_124 = x_124
    ret_123 = x_123
    ret_1234 = x_1234
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function Base.:-(x::MultiVectorAll, y::MultiVector1)
    x_ = x.e
    x_4 = x.e4
    x_3 = x.e3
    x_34 = x.e34
    x_2 = x.e2
    x_24 = x.e24
    x_23 = x.e23
    x_234 = x.e234
    x_1 = x.e1
    x_14 = x.e14
    x_13 = x.e13
    x_134 = x.e134
    x_12 = x.e12
    x_124 = x.e124
    x_123 = x.e123
    x_1234 = x.e1234
    y_4 = y.e4
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    ret_ = x_
    ret_4 = (+)(x_4, (*)(-1, y_4))
    ret_3 = (+)(x_3, (*)(-1, y_3))
    ret_34 = x_34
    ret_2 = (+)(x_2, (*)(-1, y_2))
    ret_24 = x_24
    ret_23 = x_23
    ret_234 = x_234
    ret_1 = (+)(x_1, (*)(-1, y_1))
    ret_14 = x_14
    ret_13 = x_13
    ret_134 = x_134
    ret_12 = x_12
    ret_124 = x_124
    ret_123 = x_123
    ret_1234 = x_1234
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function Base.:-(x::MultiVectorAll, y::MultiVector2)
    x_ = x.e
    x_4 = x.e4
    x_3 = x.e3
    x_34 = x.e34
    x_2 = x.e2
    x_24 = x.e24
    x_23 = x.e23
    x_234 = x.e234
    x_1 = x.e1
    x_14 = x.e14
    x_13 = x.e13
    x_134 = x.e134
    x_12 = x.e12
    x_124 = x.e124
    x_123 = x.e123
    x_1234 = x.e1234
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    ret_ = x_
    ret_4 = x_4
    ret_3 = x_3
    ret_34 = (+)(x_34, (*)(-1, y_34))
    ret_2 = x_2
    ret_24 = (+)(x_24, (*)(-1, y_24))
    ret_23 = (+)(x_23, (*)(-1, y_23))
    ret_234 = x_234
    ret_1 = x_1
    ret_14 = (+)(x_14, (*)(-1, y_14))
    ret_13 = (+)(x_13, (*)(-1, y_13))
    ret_134 = x_134
    ret_12 = (+)(x_12, (*)(-1, y_12))
    ret_124 = x_124
    ret_123 = x_123
    ret_1234 = x_1234
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function Base.:-(x::MultiVectorAll, y::MultiVector3)
    x_ = x.e
    x_4 = x.e4
    x_3 = x.e3
    x_34 = x.e34
    x_2 = x.e2
    x_24 = x.e24
    x_23 = x.e23
    x_234 = x.e234
    x_1 = x.e1
    x_14 = x.e14
    x_13 = x.e13
    x_134 = x.e134
    x_12 = x.e12
    x_124 = x.e124
    x_123 = x.e123
    x_1234 = x.e1234
    y_234 = y.e234
    y_134 = y.e134
    y_124 = y.e124
    y_123 = y.e123
    ret_ = x_
    ret_4 = x_4
    ret_3 = x_3
    ret_34 = x_34
    ret_2 = x_2
    ret_24 = x_24
    ret_23 = x_23
    ret_234 = (+)(x_234, (*)(-1, y_234))
    ret_1 = x_1
    ret_14 = x_14
    ret_13 = x_13
    ret_134 = (+)(x_134, (*)(-1, y_134))
    ret_12 = x_12
    ret_124 = (+)(x_124, (*)(-1, y_124))
    ret_123 = (+)(x_123, (*)(-1, y_123))
    ret_1234 = x_1234
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function Base.:-(x::MultiVectorAll, y::MultiVector4)
    x_ = x.e
    x_4 = x.e4
    x_3 = x.e3
    x_34 = x.e34
    x_2 = x.e2
    x_24 = x.e24
    x_23 = x.e23
    x_234 = x.e234
    x_1 = x.e1
    x_14 = x.e14
    x_13 = x.e13
    x_134 = x.e134
    x_12 = x.e12
    x_124 = x.e124
    x_123 = x.e123
    x_1234 = x.e1234
    y_1234 = y.e1234
    ret_ = x_
    ret_4 = x_4
    ret_3 = x_3
    ret_34 = x_34
    ret_2 = x_2
    ret_24 = x_24
    ret_23 = x_23
    ret_234 = x_234
    ret_1 = x_1
    ret_14 = x_14
    ret_13 = x_13
    ret_134 = x_134
    ret_12 = x_12
    ret_124 = x_124
    ret_123 = x_123
    ret_1234 = (+)(x_1234, (*)(-1, y_1234))
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function Base.:-(x::MultiVectorAll, y::MultiVectorZero)
    x_ = x.e
    x_4 = x.e4
    x_3 = x.e3
    x_34 = x.e34
    x_2 = x.e2
    x_24 = x.e24
    x_23 = x.e23
    x_234 = x.e234
    x_1 = x.e1
    x_14 = x.e14
    x_13 = x.e13
    x_134 = x.e134
    x_12 = x.e12
    x_124 = x.e124
    x_123 = x.e123
    x_1234 = x.e1234
    ret_ = x_
    ret_4 = x_4
    ret_3 = x_3
    ret_34 = x_34
    ret_2 = x_2
    ret_24 = x_24
    ret_23 = x_23
    ret_234 = x_234
    ret_1 = x_1
    ret_14 = x_14
    ret_13 = x_13
    ret_134 = x_134
    ret_12 = x_12
    ret_124 = x_124
    ret_123 = x_123
    ret_1234 = x_1234
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function Base.:-(x::MultiVectorEven, y::MultiVectorAll)
    x_ = x.e
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    x_1234 = x.e1234
    y_ = y.e
    y_4 = y.e4
    y_3 = y.e3
    y_34 = y.e34
    y_2 = y.e2
    y_24 = y.e24
    y_23 = y.e23
    y_234 = y.e234
    y_1 = y.e1
    y_14 = y.e14
    y_13 = y.e13
    y_134 = y.e134
    y_12 = y.e12
    y_124 = y.e124
    y_123 = y.e123
    y_1234 = y.e1234
    ret_ = (+)(x_, (*)(-1, y_))
    ret_4 = y_4
    ret_3 = y_3
    ret_34 = (+)(x_34, (*)(-1, y_34))
    ret_2 = y_2
    ret_24 = (+)(x_24, (*)(-1, y_24))
    ret_23 = (+)(x_23, (*)(-1, y_23))
    ret_234 = y_234
    ret_1 = y_1
    ret_14 = (+)(x_14, (*)(-1, y_14))
    ret_13 = (+)(x_13, (*)(-1, y_13))
    ret_134 = y_134
    ret_12 = (+)(x_12, (*)(-1, y_12))
    ret_124 = y_124
    ret_123 = y_123
    ret_1234 = (+)(x_1234, (*)(-1, y_1234))
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function Base.:-(x::MultiVectorEven, y::MultiVectorEven)
    x_ = x.e
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    x_1234 = x.e1234
    y_ = y.e
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    y_1234 = y.e1234
    ret_ = (+)(x_, (*)(-1, y_))
    ret_34 = (+)(x_34, (*)(-1, y_34))
    ret_24 = (+)(x_24, (*)(-1, y_24))
    ret_23 = (+)(x_23, (*)(-1, y_23))
    ret_14 = (+)(x_14, (*)(-1, y_14))
    ret_13 = (+)(x_13, (*)(-1, y_13))
    ret_12 = (+)(x_12, (*)(-1, y_12))
    ret_1234 = (+)(x_1234, (*)(-1, y_1234))
    return MultiVectorEven(; e = ret_, e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12, e1234 = ret_1234)
end
function Base.:-(x::MultiVectorEven, y::MultiVector0)
    x_ = x.e
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    x_1234 = x.e1234
    y_ = y.e
    ret_ = (+)(x_, (*)(-1, y_))
    ret_34 = x_34
    ret_24 = x_24
    ret_23 = x_23
    ret_14 = x_14
    ret_13 = x_13
    ret_12 = x_12
    ret_1234 = x_1234
    return MultiVectorEven(; e = ret_, e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12, e1234 = ret_1234)
end
function Base.:-(x::MultiVectorEven, y::MultiVector1)
    x_ = x.e
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    x_1234 = x.e1234
    y_4 = y.e4
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    ret_ = x_
    ret_4 = y_4
    ret_3 = y_3
    ret_34 = x_34
    ret_2 = y_2
    ret_24 = x_24
    ret_23 = x_23
    ret_1 = y_1
    ret_14 = x_14
    ret_13 = x_13
    ret_12 = x_12
    ret_1234 = x_1234
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e1 = ret_1, e14 = ret_14, e13 = ret_13, e12 = ret_12, e1234 = ret_1234)
end
function Base.:-(x::MultiVectorEven, y::MultiVector2)
    x_ = x.e
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    x_1234 = x.e1234
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    ret_ = x_
    ret_34 = (+)(x_34, (*)(-1, y_34))
    ret_24 = (+)(x_24, (*)(-1, y_24))
    ret_23 = (+)(x_23, (*)(-1, y_23))
    ret_14 = (+)(x_14, (*)(-1, y_14))
    ret_13 = (+)(x_13, (*)(-1, y_13))
    ret_12 = (+)(x_12, (*)(-1, y_12))
    ret_1234 = x_1234
    return MultiVectorEven(; e = ret_, e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12, e1234 = ret_1234)
end
function Base.:-(x::MultiVectorEven, y::MultiVector3)
    x_ = x.e
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    x_1234 = x.e1234
    y_234 = y.e234
    y_134 = y.e134
    y_124 = y.e124
    y_123 = y.e123
    ret_ = x_
    ret_34 = x_34
    ret_24 = x_24
    ret_23 = x_23
    ret_234 = y_234
    ret_14 = x_14
    ret_13 = x_13
    ret_134 = y_134
    ret_12 = x_12
    ret_124 = y_124
    ret_123 = y_123
    ret_1234 = x_1234
    return MultiVectorAll(; e = ret_, e34 = ret_34, e24 = ret_24, e23 = ret_23, e234 = ret_234, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function Base.:-(x::MultiVectorEven, y::MultiVector4)
    x_ = x.e
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    x_1234 = x.e1234
    y_1234 = y.e1234
    ret_ = x_
    ret_34 = x_34
    ret_24 = x_24
    ret_23 = x_23
    ret_14 = x_14
    ret_13 = x_13
    ret_12 = x_12
    ret_1234 = (+)(x_1234, (*)(-1, y_1234))
    return MultiVectorEven(; e = ret_, e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12, e1234 = ret_1234)
end
function Base.:-(x::MultiVectorEven, y::MultiVectorZero)
    x_ = x.e
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    x_1234 = x.e1234
    ret_ = x_
    ret_34 = x_34
    ret_24 = x_24
    ret_23 = x_23
    ret_14 = x_14
    ret_13 = x_13
    ret_12 = x_12
    ret_1234 = x_1234
    return MultiVectorEven(; e = ret_, e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12, e1234 = ret_1234)
end
function Base.:-(x::MultiVector0, y::MultiVectorAll)
    x_ = x.e
    y_ = y.e
    y_4 = y.e4
    y_3 = y.e3
    y_34 = y.e34
    y_2 = y.e2
    y_24 = y.e24
    y_23 = y.e23
    y_234 = y.e234
    y_1 = y.e1
    y_14 = y.e14
    y_13 = y.e13
    y_134 = y.e134
    y_12 = y.e12
    y_124 = y.e124
    y_123 = y.e123
    y_1234 = y.e1234
    ret_ = (+)(x_, (*)(-1, y_))
    ret_4 = y_4
    ret_3 = y_3
    ret_34 = y_34
    ret_2 = y_2
    ret_24 = y_24
    ret_23 = y_23
    ret_234 = y_234
    ret_1 = y_1
    ret_14 = y_14
    ret_13 = y_13
    ret_134 = y_134
    ret_12 = y_12
    ret_124 = y_124
    ret_123 = y_123
    ret_1234 = y_1234
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function Base.:-(x::MultiVector0, y::MultiVectorEven)
    x_ = x.e
    y_ = y.e
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    y_1234 = y.e1234
    ret_ = (+)(x_, (*)(-1, y_))
    ret_34 = y_34
    ret_24 = y_24
    ret_23 = y_23
    ret_14 = y_14
    ret_13 = y_13
    ret_12 = y_12
    ret_1234 = y_1234
    return MultiVectorEven(; e = ret_, e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12, e1234 = ret_1234)
end
function Base.:-(x::MultiVector0, y::MultiVector0)
    x_ = x.e
    y_ = y.e
    ret_ = (+)(x_, (*)(-1, y_))
    return MultiVector0(; e = ret_)
end
function Base.:-(x::MultiVector0, y::MultiVector1)
    x_ = x.e
    y_4 = y.e4
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    ret_ = x_
    ret_4 = y_4
    ret_3 = y_3
    ret_2 = y_2
    ret_1 = y_1
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e2 = ret_2, e1 = ret_1)
end
function Base.:-(x::MultiVector0, y::MultiVector2)
    x_ = x.e
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    ret_ = x_
    ret_34 = y_34
    ret_24 = y_24
    ret_23 = y_23
    ret_14 = y_14
    ret_13 = y_13
    ret_12 = y_12
    return MultiVectorEven(; e = ret_, e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12)
end
function Base.:-(x::MultiVector0, y::MultiVector3)
    x_ = x.e
    y_234 = y.e234
    y_134 = y.e134
    y_124 = y.e124
    y_123 = y.e123
    ret_ = x_
    ret_234 = y_234
    ret_134 = y_134
    ret_124 = y_124
    ret_123 = y_123
    return MultiVectorAll(; e = ret_, e234 = ret_234, e134 = ret_134, e124 = ret_124, e123 = ret_123)
end
function Base.:-(x::MultiVector0, y::MultiVector4)
    x_ = x.e
    y_1234 = y.e1234
    ret_ = x_
    ret_1234 = y_1234
    return MultiVectorEven(; e = ret_, e1234 = ret_1234)
end
function Base.:-(x::MultiVector0, y::MultiVectorZero)
    x_ = x.e
    ret_ = x_
    return MultiVector0(; e = ret_)
end
function Base.:-(x::MultiVector1, y::MultiVectorAll)
    x_4 = x.e4
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    y_ = y.e
    y_4 = y.e4
    y_3 = y.e3
    y_34 = y.e34
    y_2 = y.e2
    y_24 = y.e24
    y_23 = y.e23
    y_234 = y.e234
    y_1 = y.e1
    y_14 = y.e14
    y_13 = y.e13
    y_134 = y.e134
    y_12 = y.e12
    y_124 = y.e124
    y_123 = y.e123
    y_1234 = y.e1234
    ret_ = y_
    ret_4 = (+)(x_4, (*)(-1, y_4))
    ret_3 = (+)(x_3, (*)(-1, y_3))
    ret_34 = y_34
    ret_2 = (+)(x_2, (*)(-1, y_2))
    ret_24 = y_24
    ret_23 = y_23
    ret_234 = y_234
    ret_1 = (+)(x_1, (*)(-1, y_1))
    ret_14 = y_14
    ret_13 = y_13
    ret_134 = y_134
    ret_12 = y_12
    ret_124 = y_124
    ret_123 = y_123
    ret_1234 = y_1234
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function Base.:-(x::MultiVector1, y::MultiVectorEven)
    x_4 = x.e4
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    y_ = y.e
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    y_1234 = y.e1234
    ret_ = y_
    ret_4 = x_4
    ret_3 = x_3
    ret_34 = y_34
    ret_2 = x_2
    ret_24 = y_24
    ret_23 = y_23
    ret_1 = x_1
    ret_14 = y_14
    ret_13 = y_13
    ret_12 = y_12
    ret_1234 = y_1234
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e1 = ret_1, e14 = ret_14, e13 = ret_13, e12 = ret_12, e1234 = ret_1234)
end
function Base.:-(x::MultiVector1, y::MultiVector0)
    x_4 = x.e4
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    y_ = y.e
    ret_ = y_
    ret_4 = x_4
    ret_3 = x_3
    ret_2 = x_2
    ret_1 = x_1
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e2 = ret_2, e1 = ret_1)
end
function Base.:-(x::MultiVector1, y::MultiVector1)
    x_4 = x.e4
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    y_4 = y.e4
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    ret_4 = (+)(x_4, (*)(-1, y_4))
    ret_3 = (+)(x_3, (*)(-1, y_3))
    ret_2 = (+)(x_2, (*)(-1, y_2))
    ret_1 = (+)(x_1, (*)(-1, y_1))
    return MultiVector1(; e4 = ret_4, e3 = ret_3, e2 = ret_2, e1 = ret_1)
end
function Base.:-(x::MultiVector1, y::MultiVector2)
    x_4 = x.e4
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    ret_4 = x_4
    ret_3 = x_3
    ret_34 = y_34
    ret_2 = x_2
    ret_24 = y_24
    ret_23 = y_23
    ret_1 = x_1
    ret_14 = y_14
    ret_13 = y_13
    ret_12 = y_12
    return MultiVectorAll(; e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e1 = ret_1, e14 = ret_14, e13 = ret_13, e12 = ret_12)
end
function Base.:-(x::MultiVector1, y::MultiVector3)
    x_4 = x.e4
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    y_234 = y.e234
    y_134 = y.e134
    y_124 = y.e124
    y_123 = y.e123
    ret_4 = x_4
    ret_3 = x_3
    ret_2 = x_2
    ret_234 = y_234
    ret_1 = x_1
    ret_134 = y_134
    ret_124 = y_124
    ret_123 = y_123
    return MultiVectorAll(; e4 = ret_4, e3 = ret_3, e2 = ret_2, e234 = ret_234, e1 = ret_1, e134 = ret_134, e124 = ret_124, e123 = ret_123)
end
function Base.:-(x::MultiVector1, y::MultiVector4)
    x_4 = x.e4
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    y_1234 = y.e1234
    ret_4 = x_4
    ret_3 = x_3
    ret_2 = x_2
    ret_1 = x_1
    ret_1234 = y_1234
    return MultiVectorAll(; e4 = ret_4, e3 = ret_3, e2 = ret_2, e1 = ret_1, e1234 = ret_1234)
end
function Base.:-(x::MultiVector1, y::MultiVectorZero)
    x_4 = x.e4
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    ret_4 = x_4
    ret_3 = x_3
    ret_2 = x_2
    ret_1 = x_1
    return MultiVector1(; e4 = ret_4, e3 = ret_3, e2 = ret_2, e1 = ret_1)
end
function Base.:-(x::MultiVector2, y::MultiVectorAll)
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    y_ = y.e
    y_4 = y.e4
    y_3 = y.e3
    y_34 = y.e34
    y_2 = y.e2
    y_24 = y.e24
    y_23 = y.e23
    y_234 = y.e234
    y_1 = y.e1
    y_14 = y.e14
    y_13 = y.e13
    y_134 = y.e134
    y_12 = y.e12
    y_124 = y.e124
    y_123 = y.e123
    y_1234 = y.e1234
    ret_ = y_
    ret_4 = y_4
    ret_3 = y_3
    ret_34 = (+)(x_34, (*)(-1, y_34))
    ret_2 = y_2
    ret_24 = (+)(x_24, (*)(-1, y_24))
    ret_23 = (+)(x_23, (*)(-1, y_23))
    ret_234 = y_234
    ret_1 = y_1
    ret_14 = (+)(x_14, (*)(-1, y_14))
    ret_13 = (+)(x_13, (*)(-1, y_13))
    ret_134 = y_134
    ret_12 = (+)(x_12, (*)(-1, y_12))
    ret_124 = y_124
    ret_123 = y_123
    ret_1234 = y_1234
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function Base.:-(x::MultiVector2, y::MultiVectorEven)
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    y_ = y.e
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    y_1234 = y.e1234
    ret_ = y_
    ret_34 = (+)(x_34, (*)(-1, y_34))
    ret_24 = (+)(x_24, (*)(-1, y_24))
    ret_23 = (+)(x_23, (*)(-1, y_23))
    ret_14 = (+)(x_14, (*)(-1, y_14))
    ret_13 = (+)(x_13, (*)(-1, y_13))
    ret_12 = (+)(x_12, (*)(-1, y_12))
    ret_1234 = y_1234
    return MultiVectorEven(; e = ret_, e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12, e1234 = ret_1234)
end
function Base.:-(x::MultiVector2, y::MultiVector0)
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    y_ = y.e
    ret_ = y_
    ret_34 = x_34
    ret_24 = x_24
    ret_23 = x_23
    ret_14 = x_14
    ret_13 = x_13
    ret_12 = x_12
    return MultiVectorEven(; e = ret_, e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12)
end
function Base.:-(x::MultiVector2, y::MultiVector1)
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    y_4 = y.e4
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    ret_4 = y_4
    ret_3 = y_3
    ret_34 = x_34
    ret_2 = y_2
    ret_24 = x_24
    ret_23 = x_23
    ret_1 = y_1
    ret_14 = x_14
    ret_13 = x_13
    ret_12 = x_12
    return MultiVectorAll(; e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e1 = ret_1, e14 = ret_14, e13 = ret_13, e12 = ret_12)
end
function Base.:-(x::MultiVector2, y::MultiVector2)
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    ret_34 = (+)(x_34, (*)(-1, y_34))
    ret_24 = (+)(x_24, (*)(-1, y_24))
    ret_23 = (+)(x_23, (*)(-1, y_23))
    ret_14 = (+)(x_14, (*)(-1, y_14))
    ret_13 = (+)(x_13, (*)(-1, y_13))
    ret_12 = (+)(x_12, (*)(-1, y_12))
    return MultiVector2(; e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12)
end
function Base.:-(x::MultiVector2, y::MultiVector3)
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    y_234 = y.e234
    y_134 = y.e134
    y_124 = y.e124
    y_123 = y.e123
    ret_34 = x_34
    ret_24 = x_24
    ret_23 = x_23
    ret_234 = y_234
    ret_14 = x_14
    ret_13 = x_13
    ret_134 = y_134
    ret_12 = x_12
    ret_124 = y_124
    ret_123 = y_123
    return MultiVectorAll(; e34 = ret_34, e24 = ret_24, e23 = ret_23, e234 = ret_234, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123)
end
function Base.:-(x::MultiVector2, y::MultiVector4)
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    y_1234 = y.e1234
    ret_34 = x_34
    ret_24 = x_24
    ret_23 = x_23
    ret_14 = x_14
    ret_13 = x_13
    ret_12 = x_12
    ret_1234 = y_1234
    return MultiVectorEven(; e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12, e1234 = ret_1234)
end
function Base.:-(x::MultiVector2, y::MultiVectorZero)
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    ret_34 = x_34
    ret_24 = x_24
    ret_23 = x_23
    ret_14 = x_14
    ret_13 = x_13
    ret_12 = x_12
    return MultiVector2(; e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12)
end
function Base.:-(x::MultiVector3, y::MultiVectorAll)
    x_234 = x.e234
    x_134 = x.e134
    x_124 = x.e124
    x_123 = x.e123
    y_ = y.e
    y_4 = y.e4
    y_3 = y.e3
    y_34 = y.e34
    y_2 = y.e2
    y_24 = y.e24
    y_23 = y.e23
    y_234 = y.e234
    y_1 = y.e1
    y_14 = y.e14
    y_13 = y.e13
    y_134 = y.e134
    y_12 = y.e12
    y_124 = y.e124
    y_123 = y.e123
    y_1234 = y.e1234
    ret_ = y_
    ret_4 = y_4
    ret_3 = y_3
    ret_34 = y_34
    ret_2 = y_2
    ret_24 = y_24
    ret_23 = y_23
    ret_234 = (+)(x_234, (*)(-1, y_234))
    ret_1 = y_1
    ret_14 = y_14
    ret_13 = y_13
    ret_134 = (+)(x_134, (*)(-1, y_134))
    ret_12 = y_12
    ret_124 = (+)(x_124, (*)(-1, y_124))
    ret_123 = (+)(x_123, (*)(-1, y_123))
    ret_1234 = y_1234
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function Base.:-(x::MultiVector3, y::MultiVectorEven)
    x_234 = x.e234
    x_134 = x.e134
    x_124 = x.e124
    x_123 = x.e123
    y_ = y.e
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    y_1234 = y.e1234
    ret_ = y_
    ret_34 = y_34
    ret_24 = y_24
    ret_23 = y_23
    ret_234 = x_234
    ret_14 = y_14
    ret_13 = y_13
    ret_134 = x_134
    ret_12 = y_12
    ret_124 = x_124
    ret_123 = x_123
    ret_1234 = y_1234
    return MultiVectorAll(; e = ret_, e34 = ret_34, e24 = ret_24, e23 = ret_23, e234 = ret_234, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function Base.:-(x::MultiVector3, y::MultiVector0)
    x_234 = x.e234
    x_134 = x.e134
    x_124 = x.e124
    x_123 = x.e123
    y_ = y.e
    ret_ = y_
    ret_234 = x_234
    ret_134 = x_134
    ret_124 = x_124
    ret_123 = x_123
    return MultiVectorAll(; e = ret_, e234 = ret_234, e134 = ret_134, e124 = ret_124, e123 = ret_123)
end
function Base.:-(x::MultiVector3, y::MultiVector1)
    x_234 = x.e234
    x_134 = x.e134
    x_124 = x.e124
    x_123 = x.e123
    y_4 = y.e4
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    ret_4 = y_4
    ret_3 = y_3
    ret_2 = y_2
    ret_234 = x_234
    ret_1 = y_1
    ret_134 = x_134
    ret_124 = x_124
    ret_123 = x_123
    return MultiVectorAll(; e4 = ret_4, e3 = ret_3, e2 = ret_2, e234 = ret_234, e1 = ret_1, e134 = ret_134, e124 = ret_124, e123 = ret_123)
end
function Base.:-(x::MultiVector3, y::MultiVector2)
    x_234 = x.e234
    x_134 = x.e134
    x_124 = x.e124
    x_123 = x.e123
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    ret_34 = y_34
    ret_24 = y_24
    ret_23 = y_23
    ret_234 = x_234
    ret_14 = y_14
    ret_13 = y_13
    ret_134 = x_134
    ret_12 = y_12
    ret_124 = x_124
    ret_123 = x_123
    return MultiVectorAll(; e34 = ret_34, e24 = ret_24, e23 = ret_23, e234 = ret_234, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123)
end
function Base.:-(x::MultiVector3, y::MultiVector3)
    x_234 = x.e234
    x_134 = x.e134
    x_124 = x.e124
    x_123 = x.e123
    y_234 = y.e234
    y_134 = y.e134
    y_124 = y.e124
    y_123 = y.e123
    ret_234 = (+)(x_234, (*)(-1, y_234))
    ret_134 = (+)(x_134, (*)(-1, y_134))
    ret_124 = (+)(x_124, (*)(-1, y_124))
    ret_123 = (+)(x_123, (*)(-1, y_123))
    return MultiVector3(; e234 = ret_234, e134 = ret_134, e124 = ret_124, e123 = ret_123)
end
function Base.:-(x::MultiVector3, y::MultiVector4)
    x_234 = x.e234
    x_134 = x.e134
    x_124 = x.e124
    x_123 = x.e123
    y_1234 = y.e1234
    ret_234 = x_234
    ret_134 = x_134
    ret_124 = x_124
    ret_123 = x_123
    ret_1234 = y_1234
    return MultiVectorAll(; e234 = ret_234, e134 = ret_134, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function Base.:-(x::MultiVector3, y::MultiVectorZero)
    x_234 = x.e234
    x_134 = x.e134
    x_124 = x.e124
    x_123 = x.e123
    ret_234 = x_234
    ret_134 = x_134
    ret_124 = x_124
    ret_123 = x_123
    return MultiVector3(; e234 = ret_234, e134 = ret_134, e124 = ret_124, e123 = ret_123)
end
function Base.:-(x::MultiVector4, y::MultiVectorAll)
    x_1234 = x.e1234
    y_ = y.e
    y_4 = y.e4
    y_3 = y.e3
    y_34 = y.e34
    y_2 = y.e2
    y_24 = y.e24
    y_23 = y.e23
    y_234 = y.e234
    y_1 = y.e1
    y_14 = y.e14
    y_13 = y.e13
    y_134 = y.e134
    y_12 = y.e12
    y_124 = y.e124
    y_123 = y.e123
    y_1234 = y.e1234
    ret_ = y_
    ret_4 = y_4
    ret_3 = y_3
    ret_34 = y_34
    ret_2 = y_2
    ret_24 = y_24
    ret_23 = y_23
    ret_234 = y_234
    ret_1 = y_1
    ret_14 = y_14
    ret_13 = y_13
    ret_134 = y_134
    ret_12 = y_12
    ret_124 = y_124
    ret_123 = y_123
    ret_1234 = (+)(x_1234, (*)(-1, y_1234))
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function Base.:-(x::MultiVector4, y::MultiVectorEven)
    x_1234 = x.e1234
    y_ = y.e
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    y_1234 = y.e1234
    ret_ = y_
    ret_34 = y_34
    ret_24 = y_24
    ret_23 = y_23
    ret_14 = y_14
    ret_13 = y_13
    ret_12 = y_12
    ret_1234 = (+)(x_1234, (*)(-1, y_1234))
    return MultiVectorEven(; e = ret_, e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12, e1234 = ret_1234)
end
function Base.:-(x::MultiVector4, y::MultiVector0)
    x_1234 = x.e1234
    y_ = y.e
    ret_ = y_
    ret_1234 = x_1234
    return MultiVectorEven(; e = ret_, e1234 = ret_1234)
end
function Base.:-(x::MultiVector4, y::MultiVector1)
    x_1234 = x.e1234
    y_4 = y.e4
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    ret_4 = y_4
    ret_3 = y_3
    ret_2 = y_2
    ret_1 = y_1
    ret_1234 = x_1234
    return MultiVectorAll(; e4 = ret_4, e3 = ret_3, e2 = ret_2, e1 = ret_1, e1234 = ret_1234)
end
function Base.:-(x::MultiVector4, y::MultiVector2)
    x_1234 = x.e1234
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    ret_34 = y_34
    ret_24 = y_24
    ret_23 = y_23
    ret_14 = y_14
    ret_13 = y_13
    ret_12 = y_12
    ret_1234 = x_1234
    return MultiVectorEven(; e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12, e1234 = ret_1234)
end
function Base.:-(x::MultiVector4, y::MultiVector3)
    x_1234 = x.e1234
    y_234 = y.e234
    y_134 = y.e134
    y_124 = y.e124
    y_123 = y.e123
    ret_234 = y_234
    ret_134 = y_134
    ret_124 = y_124
    ret_123 = y_123
    ret_1234 = x_1234
    return MultiVectorAll(; e234 = ret_234, e134 = ret_134, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function Base.:-(x::MultiVector4, y::MultiVector4)
    x_1234 = x.e1234
    y_1234 = y.e1234
    ret_1234 = (+)(x_1234, (*)(-1, y_1234))
    return MultiVector4(; e1234 = ret_1234)
end
function Base.:-(x::MultiVector4, y::MultiVectorZero)
    x_1234 = x.e1234
    ret_1234 = x_1234
    return MultiVector4(; e1234 = ret_1234)
end
function Base.:-(x::MultiVectorZero, y::MultiVectorAll)
    y_ = y.e
    y_4 = y.e4
    y_3 = y.e3
    y_34 = y.e34
    y_2 = y.e2
    y_24 = y.e24
    y_23 = y.e23
    y_234 = y.e234
    y_1 = y.e1
    y_14 = y.e14
    y_13 = y.e13
    y_134 = y.e134
    y_12 = y.e12
    y_124 = y.e124
    y_123 = y.e123
    y_1234 = y.e1234
    ret_ = y_
    ret_4 = y_4
    ret_3 = y_3
    ret_34 = y_34
    ret_2 = y_2
    ret_24 = y_24
    ret_23 = y_23
    ret_234 = y_234
    ret_1 = y_1
    ret_14 = y_14
    ret_13 = y_13
    ret_134 = y_134
    ret_12 = y_12
    ret_124 = y_124
    ret_123 = y_123
    ret_1234 = y_1234
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function Base.:-(x::MultiVectorZero, y::MultiVectorEven)
    y_ = y.e
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    y_1234 = y.e1234
    ret_ = y_
    ret_34 = y_34
    ret_24 = y_24
    ret_23 = y_23
    ret_14 = y_14
    ret_13 = y_13
    ret_12 = y_12
    ret_1234 = y_1234
    return MultiVectorEven(; e = ret_, e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12, e1234 = ret_1234)
end
function Base.:-(x::MultiVectorZero, y::MultiVector0)
    y_ = y.e
    ret_ = y_
    return MultiVector0(; e = ret_)
end
function Base.:-(x::MultiVectorZero, y::MultiVector1)
    y_4 = y.e4
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    ret_4 = y_4
    ret_3 = y_3
    ret_2 = y_2
    ret_1 = y_1
    return MultiVector1(; e4 = ret_4, e3 = ret_3, e2 = ret_2, e1 = ret_1)
end
function Base.:-(x::MultiVectorZero, y::MultiVector2)
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    ret_34 = y_34
    ret_24 = y_24
    ret_23 = y_23
    ret_14 = y_14
    ret_13 = y_13
    ret_12 = y_12
    return MultiVector2(; e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12)
end
function Base.:-(x::MultiVectorZero, y::MultiVector3)
    y_234 = y.e234
    y_134 = y.e134
    y_124 = y.e124
    y_123 = y.e123
    ret_234 = y_234
    ret_134 = y_134
    ret_124 = y_124
    ret_123 = y_123
    return MultiVector3(; e234 = ret_234, e134 = ret_134, e124 = ret_124, e123 = ret_123)
end
function Base.:-(x::MultiVectorZero, y::MultiVector4)
    y_1234 = y.e1234
    ret_1234 = y_1234
    return MultiVector4(; e1234 = ret_1234)
end
function Base.:-(x::MultiVectorZero, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function geomul(x::MultiVectorAll, y::MultiVectorAll)
    x_ = x.e
    x_4 = x.e4
    x_3 = x.e3
    x_34 = x.e34
    x_2 = x.e2
    x_24 = x.e24
    x_23 = x.e23
    x_234 = x.e234
    x_1 = x.e1
    x_14 = x.e14
    x_13 = x.e13
    x_134 = x.e134
    x_12 = x.e12
    x_124 = x.e124
    x_123 = x.e123
    x_1234 = x.e1234
    y_ = y.e
    y_4 = y.e4
    y_3 = y.e3
    y_34 = y.e34
    y_2 = y.e2
    y_24 = y.e24
    y_23 = y.e23
    y_234 = y.e234
    y_1 = y.e1
    y_14 = y.e14
    y_13 = y.e13
    y_134 = y.e134
    y_12 = y.e12
    y_124 = y.e124
    y_123 = y.e123
    y_1234 = y.e1234
    ret_ = (+)((*)(x_, y_), (*)(x_1, y_1), (*)(x_2, y_2), (*)(x_3, y_3), (*)(-1, x_12, y_12), (*)(-1, x_123, y_123), (*)(-1, x_13, y_13), (*)(-1, x_23, y_23))
    ret_4 = (+)((*)(x_, y_4), (*)(x_1, y_14), (*)(x_1234, y_123), (*)(x_2, y_24), (*)(x_3, y_34), (*)(x_4, y_), (*)(-1, x_12, y_124), (*)(-1, x_123, y_1234), (*)(-1, x_124, y_12), (*)(-1, x_13, y_134), (*)(-1, x_134, y_13), (*)(-1, x_14, y_1), (*)(-1, x_23, y_234), (*)(-1, x_234, y_23), (*)(-1, x_24, y_2), (*)(-1, x_34, y_3))
    ret_3 = (+)((*)(x_, y_3), (*)(x_1, y_13), (*)(x_2, y_23), (*)(x_3, y_), (*)(-1, x_12, y_123), (*)(-1, x_123, y_12), (*)(-1, x_13, y_1), (*)(-1, x_23, y_2))
    ret_34 = (+)((*)(x_, y_34), (*)(x_1, y_134), (*)(x_124, y_123), (*)(x_134, y_1), (*)(x_14, y_13), (*)(x_2, y_234), (*)(x_234, y_2), (*)(x_24, y_23), (*)(x_3, y_4), (*)(x_34, y_), (*)(-1, x_12, y_1234), (*)(-1, x_123, y_124), (*)(-1, x_1234, y_12), (*)(-1, x_13, y_14), (*)(-1, x_23, y_24), (*)(-1, x_4, y_3))
    ret_2 = (+)((*)(x_, y_2), (*)(x_1, y_12), (*)(x_123, y_13), (*)(x_13, y_123), (*)(x_2, y_), (*)(x_23, y_3), (*)(-1, x_12, y_1), (*)(-1, x_3, y_23))
    ret_24 = (+)((*)(x_, y_24), (*)(x_1, y_124), (*)(x_123, y_134), (*)(x_1234, y_13), (*)(x_124, y_1), (*)(x_13, y_1234), (*)(x_14, y_12), (*)(x_2, y_4), (*)(x_23, y_34), (*)(x_24, y_), (*)(-1, x_12, y_14), (*)(-1, x_134, y_123), (*)(-1, x_234, y_3), (*)(-1, x_3, y_234), (*)(-1, x_34, y_23), (*)(-1, x_4, y_2))
    ret_23 = (+)((*)(x_, y_23), (*)(x_1, y_123), (*)(x_123, y_1), (*)(x_13, y_12), (*)(x_2, y_3), (*)(x_23, y_), (*)(-1, x_12, y_13), (*)(-1, x_3, y_2))
    ret_234 = (+)((*)(x_, y_234), (*)(x_1, y_1234), (*)(x_123, y_14), (*)(x_13, y_124), (*)(x_134, y_12), (*)(x_2, y_34), (*)(x_23, y_4), (*)(x_234, y_), (*)(x_34, y_2), (*)(x_4, y_23), (*)(-1, x_12, y_134), (*)(-1, x_1234, y_1), (*)(-1, x_124, y_13), (*)(-1, x_14, y_123), (*)(-1, x_24, y_3), (*)(-1, x_3, y_24))
    ret_1 = (+)((*)(x_, y_1), (*)(x_1, y_), (*)(x_12, y_2), (*)(x_13, y_3), (*)(-1, x_123, y_23), (*)(-1, x_2, y_12), (*)(-1, x_23, y_123), (*)(-1, x_3, y_13))
    ret_14 = (+)((*)(x_, y_14), (*)(x_1, y_4), (*)(x_12, y_24), (*)(x_13, y_34), (*)(x_14, y_), (*)(x_234, y_123), (*)(-1, x_123, y_234), (*)(-1, x_1234, y_23), (*)(-1, x_124, y_2), (*)(-1, x_134, y_3), (*)(-1, x_2, y_124), (*)(-1, x_23, y_1234), (*)(-1, x_24, y_12), (*)(-1, x_3, y_134), (*)(-1, x_34, y_13), (*)(-1, x_4, y_1))
    ret_13 = (+)((*)(x_, y_13), (*)(x_1, y_3), (*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_123, y_2), (*)(-1, x_2, y_123), (*)(-1, x_23, y_12), (*)(-1, x_3, y_1))
    ret_134 = (+)((*)(x_, y_134), (*)(x_1, y_34), (*)(x_12, y_234), (*)(x_1234, y_2), (*)(x_124, y_23), (*)(x_13, y_4), (*)(x_134, y_), (*)(x_24, y_123), (*)(x_34, y_1), (*)(x_4, y_13), (*)(-1, x_123, y_24), (*)(-1, x_14, y_3), (*)(-1, x_2, y_1234), (*)(-1, x_23, y_124), (*)(-1, x_234, y_12), (*)(-1, x_3, y_14))
    ret_12 = (+)((*)(x_, y_12), (*)(x_1, y_2), (*)(x_12, y_), (*)(x_123, y_3), (*)(x_23, y_13), (*)(x_3, y_123), (*)(-1, x_13, y_23), (*)(-1, x_2, y_1))
    ret_124 = (+)((*)(x_, y_124), (*)(x_1, y_24), (*)(x_12, y_4), (*)(x_123, y_34), (*)(x_124, y_), (*)(x_23, y_134), (*)(x_234, y_13), (*)(x_24, y_1), (*)(x_3, y_1234), (*)(x_4, y_12), (*)(-1, x_1234, y_3), (*)(-1, x_13, y_234), (*)(-1, x_134, y_23), (*)(-1, x_14, y_2), (*)(-1, x_2, y_14), (*)(-1, x_34, y_123))
    ret_123 = (+)((*)(x_, y_123), (*)(x_1, y_23), (*)(x_12, y_3), (*)(x_123, y_), (*)(x_23, y_1), (*)(x_3, y_12), (*)(-1, x_13, y_2), (*)(-1, x_2, y_13))
    ret_1234 = (+)((*)(x_, y_1234), (*)(x_1, y_234), (*)(x_12, y_34), (*)(x_123, y_4), (*)(x_1234, y_), (*)(x_134, y_2), (*)(x_14, y_23), (*)(x_23, y_14), (*)(x_3, y_124), (*)(x_34, y_12), (*)(-1, x_124, y_3), (*)(-1, x_13, y_24), (*)(-1, x_2, y_134), (*)(-1, x_234, y_1), (*)(-1, x_24, y_13), (*)(-1, x_4, y_123))
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function geomul(x::MultiVectorAll, y::MultiVectorEven)
    x_ = x.e
    x_4 = x.e4
    x_3 = x.e3
    x_34 = x.e34
    x_2 = x.e2
    x_24 = x.e24
    x_23 = x.e23
    x_234 = x.e234
    x_1 = x.e1
    x_14 = x.e14
    x_13 = x.e13
    x_134 = x.e134
    x_12 = x.e12
    x_124 = x.e124
    x_123 = x.e123
    x_1234 = x.e1234
    y_ = y.e
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    y_1234 = y.e1234
    ret_ = (+)((*)(x_, y_), (*)(-1, x_12, y_12), (*)(-1, x_13, y_13), (*)(-1, x_23, y_23))
    ret_4 = (+)((*)(x_1, y_14), (*)(x_2, y_24), (*)(x_3, y_34), (*)(x_4, y_), (*)(-1, x_123, y_1234), (*)(-1, x_124, y_12), (*)(-1, x_134, y_13), (*)(-1, x_234, y_23))
    ret_3 = (+)((*)(x_1, y_13), (*)(x_2, y_23), (*)(x_3, y_), (*)(-1, x_123, y_12))
    ret_34 = (+)((*)(x_, y_34), (*)(x_14, y_13), (*)(x_24, y_23), (*)(x_34, y_), (*)(-1, x_12, y_1234), (*)(-1, x_1234, y_12), (*)(-1, x_13, y_14), (*)(-1, x_23, y_24))
    ret_2 = (+)((*)(x_1, y_12), (*)(x_123, y_13), (*)(x_2, y_), (*)(-1, x_3, y_23))
    ret_24 = (+)((*)(x_, y_24), (*)(x_1234, y_13), (*)(x_13, y_1234), (*)(x_14, y_12), (*)(x_23, y_34), (*)(x_24, y_), (*)(-1, x_12, y_14), (*)(-1, x_34, y_23))
    ret_23 = (+)((*)(x_, y_23), (*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_12, y_13))
    ret_234 = (+)((*)(x_1, y_1234), (*)(x_123, y_14), (*)(x_134, y_12), (*)(x_2, y_34), (*)(x_234, y_), (*)(x_4, y_23), (*)(-1, x_124, y_13), (*)(-1, x_3, y_24))
    ret_1 = (+)((*)(x_1, y_), (*)(-1, x_123, y_23), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))
    ret_14 = (+)((*)(x_, y_14), (*)(x_12, y_24), (*)(x_13, y_34), (*)(x_14, y_), (*)(-1, x_1234, y_23), (*)(-1, x_23, y_1234), (*)(-1, x_24, y_12), (*)(-1, x_34, y_13))
    ret_13 = (+)((*)(x_, y_13), (*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_23, y_12))
    ret_134 = (+)((*)(x_1, y_34), (*)(x_124, y_23), (*)(x_134, y_), (*)(x_4, y_13), (*)(-1, x_123, y_24), (*)(-1, x_2, y_1234), (*)(-1, x_234, y_12), (*)(-1, x_3, y_14))
    ret_12 = (+)((*)(x_, y_12), (*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_13, y_23))
    ret_124 = (+)((*)(x_1, y_24), (*)(x_123, y_34), (*)(x_124, y_), (*)(x_234, y_13), (*)(x_3, y_1234), (*)(x_4, y_12), (*)(-1, x_134, y_23), (*)(-1, x_2, y_14))
    ret_123 = (+)((*)(x_1, y_23), (*)(x_123, y_), (*)(x_3, y_12), (*)(-1, x_2, y_13))
    ret_1234 = (+)((*)(x_, y_1234), (*)(x_12, y_34), (*)(x_1234, y_), (*)(x_14, y_23), (*)(x_23, y_14), (*)(x_34, y_12), (*)(-1, x_13, y_24), (*)(-1, x_24, y_13))
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function geomul(x::MultiVectorAll, y::MultiVector0)
    x_ = x.e
    x_4 = x.e4
    x_3 = x.e3
    x_34 = x.e34
    x_2 = x.e2
    x_24 = x.e24
    x_23 = x.e23
    x_234 = x.e234
    x_1 = x.e1
    x_14 = x.e14
    x_13 = x.e13
    x_134 = x.e134
    x_12 = x.e12
    x_124 = x.e124
    x_123 = x.e123
    x_1234 = x.e1234
    y_ = y.e
    ret_ = (*)(x_, y_)
    ret_4 = (*)(x_4, y_)
    ret_3 = (*)(x_3, y_)
    ret_34 = (*)(x_34, y_)
    ret_2 = (*)(x_2, y_)
    ret_24 = (*)(x_24, y_)
    ret_23 = (*)(x_23, y_)
    ret_234 = (*)(x_234, y_)
    ret_1 = (*)(x_1, y_)
    ret_14 = (*)(x_14, y_)
    ret_13 = (*)(x_13, y_)
    ret_134 = (*)(x_134, y_)
    ret_12 = (*)(x_12, y_)
    ret_124 = (*)(x_124, y_)
    ret_123 = (*)(x_123, y_)
    ret_1234 = (*)(x_1234, y_)
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function geomul(x::MultiVectorAll, y::MultiVector1)
    x_ = x.e
    x_4 = x.e4
    x_3 = x.e3
    x_34 = x.e34
    x_2 = x.e2
    x_24 = x.e24
    x_23 = x.e23
    x_234 = x.e234
    x_1 = x.e1
    x_14 = x.e14
    x_13 = x.e13
    x_134 = x.e134
    x_12 = x.e12
    x_124 = x.e124
    x_123 = x.e123
    x_1234 = x.e1234
    y_4 = y.e4
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    ret_ = (+)((*)(x_1, y_1), (*)(x_2, y_2), (*)(x_3, y_3))
    ret_4 = (+)((*)(x_, y_4), (*)(-1, x_14, y_1), (*)(-1, x_24, y_2), (*)(-1, x_34, y_3))
    ret_3 = (+)((*)(x_, y_3), (*)(-1, x_13, y_1), (*)(-1, x_23, y_2))
    ret_34 = (+)((*)(x_134, y_1), (*)(x_234, y_2), (*)(x_3, y_4), (*)(-1, x_4, y_3))
    ret_2 = (+)((*)(x_, y_2), (*)(x_23, y_3), (*)(-1, x_12, y_1))
    ret_24 = (+)((*)(x_124, y_1), (*)(x_2, y_4), (*)(-1, x_234, y_3), (*)(-1, x_4, y_2))
    ret_23 = (+)((*)(x_123, y_1), (*)(x_2, y_3), (*)(-1, x_3, y_2))
    ret_234 = (+)((*)(x_23, y_4), (*)(x_34, y_2), (*)(-1, x_1234, y_1), (*)(-1, x_24, y_3))
    ret_1 = (+)((*)(x_, y_1), (*)(x_12, y_2), (*)(x_13, y_3))
    ret_14 = (+)((*)(x_1, y_4), (*)(-1, x_124, y_2), (*)(-1, x_134, y_3), (*)(-1, x_4, y_1))
    ret_13 = (+)((*)(x_1, y_3), (*)(-1, x_123, y_2), (*)(-1, x_3, y_1))
    ret_134 = (+)((*)(x_1234, y_2), (*)(x_13, y_4), (*)(x_34, y_1), (*)(-1, x_14, y_3))
    ret_12 = (+)((*)(x_1, y_2), (*)(x_123, y_3), (*)(-1, x_2, y_1))
    ret_124 = (+)((*)(x_12, y_4), (*)(x_24, y_1), (*)(-1, x_1234, y_3), (*)(-1, x_14, y_2))
    ret_123 = (+)((*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_13, y_2))
    ret_1234 = (+)((*)(x_123, y_4), (*)(x_134, y_2), (*)(-1, x_124, y_3), (*)(-1, x_234, y_1))
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function geomul(x::MultiVectorAll, y::MultiVector2)
    x_ = x.e
    x_4 = x.e4
    x_3 = x.e3
    x_34 = x.e34
    x_2 = x.e2
    x_24 = x.e24
    x_23 = x.e23
    x_234 = x.e234
    x_1 = x.e1
    x_14 = x.e14
    x_13 = x.e13
    x_134 = x.e134
    x_12 = x.e12
    x_124 = x.e124
    x_123 = x.e123
    x_1234 = x.e1234
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    ret_ = (+)((*)(-1, x_12, y_12), (*)(-1, x_13, y_13), (*)(-1, x_23, y_23))
    ret_4 = (+)((*)(x_1, y_14), (*)(x_2, y_24), (*)(x_3, y_34), (*)(-1, x_124, y_12), (*)(-1, x_134, y_13), (*)(-1, x_234, y_23))
    ret_3 = (+)((*)(x_1, y_13), (*)(x_2, y_23), (*)(-1, x_123, y_12))
    ret_34 = (+)((*)(x_, y_34), (*)(x_14, y_13), (*)(x_24, y_23), (*)(-1, x_1234, y_12), (*)(-1, x_13, y_14), (*)(-1, x_23, y_24))
    ret_2 = (+)((*)(x_1, y_12), (*)(x_123, y_13), (*)(-1, x_3, y_23))
    ret_24 = (+)((*)(x_, y_24), (*)(x_1234, y_13), (*)(x_14, y_12), (*)(x_23, y_34), (*)(-1, x_12, y_14), (*)(-1, x_34, y_23))
    ret_23 = (+)((*)(x_, y_23), (*)(x_13, y_12), (*)(-1, x_12, y_13))
    ret_234 = (+)((*)(x_123, y_14), (*)(x_134, y_12), (*)(x_2, y_34), (*)(x_4, y_23), (*)(-1, x_124, y_13), (*)(-1, x_3, y_24))
    ret_1 = (+)((*)(-1, x_123, y_23), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))
    ret_14 = (+)((*)(x_, y_14), (*)(x_12, y_24), (*)(x_13, y_34), (*)(-1, x_1234, y_23), (*)(-1, x_24, y_12), (*)(-1, x_34, y_13))
    ret_13 = (+)((*)(x_, y_13), (*)(x_12, y_23), (*)(-1, x_23, y_12))
    ret_134 = (+)((*)(x_1, y_34), (*)(x_124, y_23), (*)(x_4, y_13), (*)(-1, x_123, y_24), (*)(-1, x_234, y_12), (*)(-1, x_3, y_14))
    ret_12 = (+)((*)(x_, y_12), (*)(x_23, y_13), (*)(-1, x_13, y_23))
    ret_124 = (+)((*)(x_1, y_24), (*)(x_123, y_34), (*)(x_234, y_13), (*)(x_4, y_12), (*)(-1, x_134, y_23), (*)(-1, x_2, y_14))
    ret_123 = (+)((*)(x_1, y_23), (*)(x_3, y_12), (*)(-1, x_2, y_13))
    ret_1234 = (+)((*)(x_12, y_34), (*)(x_14, y_23), (*)(x_23, y_14), (*)(x_34, y_12), (*)(-1, x_13, y_24), (*)(-1, x_24, y_13))
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function geomul(x::MultiVectorAll, y::MultiVector3)
    x_ = x.e
    x_4 = x.e4
    x_3 = x.e3
    x_34 = x.e34
    x_2 = x.e2
    x_24 = x.e24
    x_23 = x.e23
    x_234 = x.e234
    x_1 = x.e1
    x_14 = x.e14
    x_13 = x.e13
    x_134 = x.e134
    x_12 = x.e12
    x_124 = x.e124
    x_123 = x.e123
    x_1234 = x.e1234
    y_234 = y.e234
    y_134 = y.e134
    y_124 = y.e124
    y_123 = y.e123
    ret_ = (*)(-1, x_123, y_123)
    ret_4 = (+)((*)(x_1234, y_123), (*)(-1, x_12, y_124), (*)(-1, x_13, y_134), (*)(-1, x_23, y_234))
    ret_3 = (*)(-1, x_12, y_123)
    ret_34 = (+)((*)(x_1, y_134), (*)(x_124, y_123), (*)(x_2, y_234), (*)(-1, x_123, y_124))
    ret_2 = (*)(x_13, y_123)
    ret_24 = (+)((*)(x_1, y_124), (*)(x_123, y_134), (*)(-1, x_134, y_123), (*)(-1, x_3, y_234))
    ret_23 = (*)(x_1, y_123)
    ret_234 = (+)((*)(x_, y_234), (*)(x_13, y_124), (*)(-1, x_12, y_134), (*)(-1, x_14, y_123))
    ret_1 = (*)(-1, x_23, y_123)
    ret_14 = (+)((*)(x_234, y_123), (*)(-1, x_123, y_234), (*)(-1, x_2, y_124), (*)(-1, x_3, y_134))
    ret_13 = (*)(-1, x_2, y_123)
    ret_134 = (+)((*)(x_, y_134), (*)(x_12, y_234), (*)(x_24, y_123), (*)(-1, x_23, y_124))
    ret_12 = (*)(x_3, y_123)
    ret_124 = (+)((*)(x_, y_124), (*)(x_23, y_134), (*)(-1, x_13, y_234), (*)(-1, x_34, y_123))
    ret_123 = (*)(x_, y_123)
    ret_1234 = (+)((*)(x_1, y_234), (*)(x_3, y_124), (*)(-1, x_2, y_134), (*)(-1, x_4, y_123))
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function geomul(x::MultiVectorAll, y::MultiVector4)
    x_ = x.e
    x_4 = x.e4
    x_3 = x.e3
    x_34 = x.e34
    x_2 = x.e2
    x_24 = x.e24
    x_23 = x.e23
    x_234 = x.e234
    x_1 = x.e1
    x_14 = x.e14
    x_13 = x.e13
    x_134 = x.e134
    x_12 = x.e12
    x_124 = x.e124
    x_123 = x.e123
    x_1234 = x.e1234
    y_1234 = y.e1234
    ret_4 = (*)(-1, x_123, y_1234)
    ret_34 = (*)(-1, x_12, y_1234)
    ret_24 = (*)(x_13, y_1234)
    ret_234 = (*)(x_1, y_1234)
    ret_14 = (*)(-1, x_23, y_1234)
    ret_134 = (*)(-1, x_2, y_1234)
    ret_124 = (*)(x_3, y_1234)
    ret_1234 = (*)(x_, y_1234)
    return MultiVectorAll(; e4 = ret_4, e34 = ret_34, e24 = ret_24, e234 = ret_234, e14 = ret_14, e134 = ret_134, e124 = ret_124, e1234 = ret_1234)
end
function geomul(x::MultiVectorAll, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function geomul(x::MultiVectorEven, y::MultiVectorAll)
    x_ = x.e
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    x_1234 = x.e1234
    y_ = y.e
    y_4 = y.e4
    y_3 = y.e3
    y_34 = y.e34
    y_2 = y.e2
    y_24 = y.e24
    y_23 = y.e23
    y_234 = y.e234
    y_1 = y.e1
    y_14 = y.e14
    y_13 = y.e13
    y_134 = y.e134
    y_12 = y.e12
    y_124 = y.e124
    y_123 = y.e123
    y_1234 = y.e1234
    ret_ = (+)((*)(x_, y_), (*)(-1, x_12, y_12), (*)(-1, x_13, y_13), (*)(-1, x_23, y_23))
    ret_4 = (+)((*)(x_, y_4), (*)(x_1234, y_123), (*)(-1, x_12, y_124), (*)(-1, x_13, y_134), (*)(-1, x_14, y_1), (*)(-1, x_23, y_234), (*)(-1, x_24, y_2), (*)(-1, x_34, y_3))
    ret_3 = (+)((*)(x_, y_3), (*)(-1, x_12, y_123), (*)(-1, x_13, y_1), (*)(-1, x_23, y_2))
    ret_34 = (+)((*)(x_, y_34), (*)(x_14, y_13), (*)(x_24, y_23), (*)(x_34, y_), (*)(-1, x_12, y_1234), (*)(-1, x_1234, y_12), (*)(-1, x_13, y_14), (*)(-1, x_23, y_24))
    ret_2 = (+)((*)(x_, y_2), (*)(x_13, y_123), (*)(x_23, y_3), (*)(-1, x_12, y_1))
    ret_24 = (+)((*)(x_, y_24), (*)(x_1234, y_13), (*)(x_13, y_1234), (*)(x_14, y_12), (*)(x_23, y_34), (*)(x_24, y_), (*)(-1, x_12, y_14), (*)(-1, x_34, y_23))
    ret_23 = (+)((*)(x_, y_23), (*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_12, y_13))
    ret_234 = (+)((*)(x_, y_234), (*)(x_13, y_124), (*)(x_23, y_4), (*)(x_34, y_2), (*)(-1, x_12, y_134), (*)(-1, x_1234, y_1), (*)(-1, x_14, y_123), (*)(-1, x_24, y_3))
    ret_1 = (+)((*)(x_, y_1), (*)(x_12, y_2), (*)(x_13, y_3), (*)(-1, x_23, y_123))
    ret_14 = (+)((*)(x_, y_14), (*)(x_12, y_24), (*)(x_13, y_34), (*)(x_14, y_), (*)(-1, x_1234, y_23), (*)(-1, x_23, y_1234), (*)(-1, x_24, y_12), (*)(-1, x_34, y_13))
    ret_13 = (+)((*)(x_, y_13), (*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_23, y_12))
    ret_134 = (+)((*)(x_, y_134), (*)(x_12, y_234), (*)(x_1234, y_2), (*)(x_13, y_4), (*)(x_24, y_123), (*)(x_34, y_1), (*)(-1, x_14, y_3), (*)(-1, x_23, y_124))
    ret_12 = (+)((*)(x_, y_12), (*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_13, y_23))
    ret_124 = (+)((*)(x_, y_124), (*)(x_12, y_4), (*)(x_23, y_134), (*)(x_24, y_1), (*)(-1, x_1234, y_3), (*)(-1, x_13, y_234), (*)(-1, x_14, y_2), (*)(-1, x_34, y_123))
    ret_123 = (+)((*)(x_, y_123), (*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_13, y_2))
    ret_1234 = (+)((*)(x_, y_1234), (*)(x_12, y_34), (*)(x_1234, y_), (*)(x_14, y_23), (*)(x_23, y_14), (*)(x_34, y_12), (*)(-1, x_13, y_24), (*)(-1, x_24, y_13))
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function geomul(x::MultiVectorEven, y::MultiVectorEven)
    x_ = x.e
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    x_1234 = x.e1234
    y_ = y.e
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    y_1234 = y.e1234
    ret_ = (+)((*)(x_, y_), (*)(-1, x_12, y_12), (*)(-1, x_13, y_13), (*)(-1, x_23, y_23))
    ret_34 = (+)((*)(x_, y_34), (*)(x_14, y_13), (*)(x_24, y_23), (*)(x_34, y_), (*)(-1, x_12, y_1234), (*)(-1, x_1234, y_12), (*)(-1, x_13, y_14), (*)(-1, x_23, y_24))
    ret_24 = (+)((*)(x_, y_24), (*)(x_1234, y_13), (*)(x_13, y_1234), (*)(x_14, y_12), (*)(x_23, y_34), (*)(x_24, y_), (*)(-1, x_12, y_14), (*)(-1, x_34, y_23))
    ret_23 = (+)((*)(x_, y_23), (*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_12, y_13))
    ret_14 = (+)((*)(x_, y_14), (*)(x_12, y_24), (*)(x_13, y_34), (*)(x_14, y_), (*)(-1, x_1234, y_23), (*)(-1, x_23, y_1234), (*)(-1, x_24, y_12), (*)(-1, x_34, y_13))
    ret_13 = (+)((*)(x_, y_13), (*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_23, y_12))
    ret_12 = (+)((*)(x_, y_12), (*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_13, y_23))
    ret_1234 = (+)((*)(x_, y_1234), (*)(x_12, y_34), (*)(x_1234, y_), (*)(x_14, y_23), (*)(x_23, y_14), (*)(x_34, y_12), (*)(-1, x_13, y_24), (*)(-1, x_24, y_13))
    return MultiVectorEven(; e = ret_, e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12, e1234 = ret_1234)
end
function geomul(x::MultiVectorEven, y::MultiVector0)
    x_ = x.e
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    x_1234 = x.e1234
    y_ = y.e
    ret_ = (*)(x_, y_)
    ret_34 = (*)(x_34, y_)
    ret_24 = (*)(x_24, y_)
    ret_23 = (*)(x_23, y_)
    ret_14 = (*)(x_14, y_)
    ret_13 = (*)(x_13, y_)
    ret_12 = (*)(x_12, y_)
    ret_1234 = (*)(x_1234, y_)
    return MultiVectorEven(; e = ret_, e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12, e1234 = ret_1234)
end
function geomul(x::MultiVectorEven, y::MultiVector1)
    x_ = x.e
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    x_1234 = x.e1234
    y_4 = y.e4
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    ret_4 = (+)((*)(x_, y_4), (*)(-1, x_14, y_1), (*)(-1, x_24, y_2), (*)(-1, x_34, y_3))
    ret_3 = (+)((*)(x_, y_3), (*)(-1, x_13, y_1), (*)(-1, x_23, y_2))
    ret_2 = (+)((*)(x_, y_2), (*)(x_23, y_3), (*)(-1, x_12, y_1))
    ret_234 = (+)((*)(x_23, y_4), (*)(x_34, y_2), (*)(-1, x_1234, y_1), (*)(-1, x_24, y_3))
    ret_1 = (+)((*)(x_, y_1), (*)(x_12, y_2), (*)(x_13, y_3))
    ret_134 = (+)((*)(x_1234, y_2), (*)(x_13, y_4), (*)(x_34, y_1), (*)(-1, x_14, y_3))
    ret_124 = (+)((*)(x_12, y_4), (*)(x_24, y_1), (*)(-1, x_1234, y_3), (*)(-1, x_14, y_2))
    ret_123 = (+)((*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_13, y_2))
    return MultiVectorAll(; e4 = ret_4, e3 = ret_3, e2 = ret_2, e234 = ret_234, e1 = ret_1, e134 = ret_134, e124 = ret_124, e123 = ret_123)
end
function geomul(x::MultiVectorEven, y::MultiVector2)
    x_ = x.e
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    x_1234 = x.e1234
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    ret_ = (+)((*)(-1, x_12, y_12), (*)(-1, x_13, y_13), (*)(-1, x_23, y_23))
    ret_34 = (+)((*)(x_, y_34), (*)(x_14, y_13), (*)(x_24, y_23), (*)(-1, x_1234, y_12), (*)(-1, x_13, y_14), (*)(-1, x_23, y_24))
    ret_24 = (+)((*)(x_, y_24), (*)(x_1234, y_13), (*)(x_14, y_12), (*)(x_23, y_34), (*)(-1, x_12, y_14), (*)(-1, x_34, y_23))
    ret_23 = (+)((*)(x_, y_23), (*)(x_13, y_12), (*)(-1, x_12, y_13))
    ret_14 = (+)((*)(x_, y_14), (*)(x_12, y_24), (*)(x_13, y_34), (*)(-1, x_1234, y_23), (*)(-1, x_24, y_12), (*)(-1, x_34, y_13))
    ret_13 = (+)((*)(x_, y_13), (*)(x_12, y_23), (*)(-1, x_23, y_12))
    ret_12 = (+)((*)(x_, y_12), (*)(x_23, y_13), (*)(-1, x_13, y_23))
    ret_1234 = (+)((*)(x_12, y_34), (*)(x_14, y_23), (*)(x_23, y_14), (*)(x_34, y_12), (*)(-1, x_13, y_24), (*)(-1, x_24, y_13))
    return MultiVectorEven(; e = ret_, e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12, e1234 = ret_1234)
end
function geomul(x::MultiVectorEven, y::MultiVector3)
    x_ = x.e
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    x_1234 = x.e1234
    y_234 = y.e234
    y_134 = y.e134
    y_124 = y.e124
    y_123 = y.e123
    ret_4 = (+)((*)(x_1234, y_123), (*)(-1, x_12, y_124), (*)(-1, x_13, y_134), (*)(-1, x_23, y_234))
    ret_3 = (*)(-1, x_12, y_123)
    ret_2 = (*)(x_13, y_123)
    ret_234 = (+)((*)(x_, y_234), (*)(x_13, y_124), (*)(-1, x_12, y_134), (*)(-1, x_14, y_123))
    ret_1 = (*)(-1, x_23, y_123)
    ret_134 = (+)((*)(x_, y_134), (*)(x_12, y_234), (*)(x_24, y_123), (*)(-1, x_23, y_124))
    ret_124 = (+)((*)(x_, y_124), (*)(x_23, y_134), (*)(-1, x_13, y_234), (*)(-1, x_34, y_123))
    ret_123 = (*)(x_, y_123)
    return MultiVectorAll(; e4 = ret_4, e3 = ret_3, e2 = ret_2, e234 = ret_234, e1 = ret_1, e134 = ret_134, e124 = ret_124, e123 = ret_123)
end
function geomul(x::MultiVectorEven, y::MultiVector4)
    x_ = x.e
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    x_1234 = x.e1234
    y_1234 = y.e1234
    ret_34 = (*)(-1, x_12, y_1234)
    ret_24 = (*)(x_13, y_1234)
    ret_14 = (*)(-1, x_23, y_1234)
    ret_1234 = (*)(x_, y_1234)
    return MultiVectorEven(; e34 = ret_34, e24 = ret_24, e14 = ret_14, e1234 = ret_1234)
end
function geomul(x::MultiVectorEven, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function geomul(x::MultiVector0, y::MultiVectorAll)
    x_ = x.e
    y_ = y.e
    y_4 = y.e4
    y_3 = y.e3
    y_34 = y.e34
    y_2 = y.e2
    y_24 = y.e24
    y_23 = y.e23
    y_234 = y.e234
    y_1 = y.e1
    y_14 = y.e14
    y_13 = y.e13
    y_134 = y.e134
    y_12 = y.e12
    y_124 = y.e124
    y_123 = y.e123
    y_1234 = y.e1234
    ret_ = (*)(x_, y_)
    ret_4 = (*)(x_, y_4)
    ret_3 = (*)(x_, y_3)
    ret_34 = (*)(x_, y_34)
    ret_2 = (*)(x_, y_2)
    ret_24 = (*)(x_, y_24)
    ret_23 = (*)(x_, y_23)
    ret_234 = (*)(x_, y_234)
    ret_1 = (*)(x_, y_1)
    ret_14 = (*)(x_, y_14)
    ret_13 = (*)(x_, y_13)
    ret_134 = (*)(x_, y_134)
    ret_12 = (*)(x_, y_12)
    ret_124 = (*)(x_, y_124)
    ret_123 = (*)(x_, y_123)
    ret_1234 = (*)(x_, y_1234)
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function geomul(x::MultiVector0, y::MultiVectorEven)
    x_ = x.e
    y_ = y.e
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    y_1234 = y.e1234
    ret_ = (*)(x_, y_)
    ret_34 = (*)(x_, y_34)
    ret_24 = (*)(x_, y_24)
    ret_23 = (*)(x_, y_23)
    ret_14 = (*)(x_, y_14)
    ret_13 = (*)(x_, y_13)
    ret_12 = (*)(x_, y_12)
    ret_1234 = (*)(x_, y_1234)
    return MultiVectorEven(; e = ret_, e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12, e1234 = ret_1234)
end
function geomul(x::MultiVector0, y::MultiVector0)
    x_ = x.e
    y_ = y.e
    ret_ = (*)(x_, y_)
    return MultiVector0(; e = ret_)
end
function geomul(x::MultiVector0, y::MultiVector1)
    x_ = x.e
    y_4 = y.e4
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    ret_4 = (*)(x_, y_4)
    ret_3 = (*)(x_, y_3)
    ret_2 = (*)(x_, y_2)
    ret_1 = (*)(x_, y_1)
    return MultiVector1(; e4 = ret_4, e3 = ret_3, e2 = ret_2, e1 = ret_1)
end
function geomul(x::MultiVector0, y::MultiVector2)
    x_ = x.e
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    ret_34 = (*)(x_, y_34)
    ret_24 = (*)(x_, y_24)
    ret_23 = (*)(x_, y_23)
    ret_14 = (*)(x_, y_14)
    ret_13 = (*)(x_, y_13)
    ret_12 = (*)(x_, y_12)
    return MultiVector2(; e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12)
end
function geomul(x::MultiVector0, y::MultiVector3)
    x_ = x.e
    y_234 = y.e234
    y_134 = y.e134
    y_124 = y.e124
    y_123 = y.e123
    ret_234 = (*)(x_, y_234)
    ret_134 = (*)(x_, y_134)
    ret_124 = (*)(x_, y_124)
    ret_123 = (*)(x_, y_123)
    return MultiVector3(; e234 = ret_234, e134 = ret_134, e124 = ret_124, e123 = ret_123)
end
function geomul(x::MultiVector0, y::MultiVector4)
    x_ = x.e
    y_1234 = y.e1234
    ret_1234 = (*)(x_, y_1234)
    return MultiVector4(; e1234 = ret_1234)
end
function geomul(x::MultiVector0, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function geomul(x::MultiVector1, y::MultiVectorAll)
    x_4 = x.e4
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    y_ = y.e
    y_4 = y.e4
    y_3 = y.e3
    y_34 = y.e34
    y_2 = y.e2
    y_24 = y.e24
    y_23 = y.e23
    y_234 = y.e234
    y_1 = y.e1
    y_14 = y.e14
    y_13 = y.e13
    y_134 = y.e134
    y_12 = y.e12
    y_124 = y.e124
    y_123 = y.e123
    y_1234 = y.e1234
    ret_ = (+)((*)(x_1, y_1), (*)(x_2, y_2), (*)(x_3, y_3))
    ret_4 = (+)((*)(x_1, y_14), (*)(x_2, y_24), (*)(x_3, y_34), (*)(x_4, y_))
    ret_3 = (+)((*)(x_1, y_13), (*)(x_2, y_23), (*)(x_3, y_))
    ret_34 = (+)((*)(x_1, y_134), (*)(x_2, y_234), (*)(x_3, y_4), (*)(-1, x_4, y_3))
    ret_2 = (+)((*)(x_1, y_12), (*)(x_2, y_), (*)(-1, x_3, y_23))
    ret_24 = (+)((*)(x_1, y_124), (*)(x_2, y_4), (*)(-1, x_3, y_234), (*)(-1, x_4, y_2))
    ret_23 = (+)((*)(x_1, y_123), (*)(x_2, y_3), (*)(-1, x_3, y_2))
    ret_234 = (+)((*)(x_1, y_1234), (*)(x_2, y_34), (*)(x_4, y_23), (*)(-1, x_3, y_24))
    ret_1 = (+)((*)(x_1, y_), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))
    ret_14 = (+)((*)(x_1, y_4), (*)(-1, x_2, y_124), (*)(-1, x_3, y_134), (*)(-1, x_4, y_1))
    ret_13 = (+)((*)(x_1, y_3), (*)(-1, x_2, y_123), (*)(-1, x_3, y_1))
    ret_134 = (+)((*)(x_1, y_34), (*)(x_4, y_13), (*)(-1, x_2, y_1234), (*)(-1, x_3, y_14))
    ret_12 = (+)((*)(x_1, y_2), (*)(x_3, y_123), (*)(-1, x_2, y_1))
    ret_124 = (+)((*)(x_1, y_24), (*)(x_3, y_1234), (*)(x_4, y_12), (*)(-1, x_2, y_14))
    ret_123 = (+)((*)(x_1, y_23), (*)(x_3, y_12), (*)(-1, x_2, y_13))
    ret_1234 = (+)((*)(x_1, y_234), (*)(x_3, y_124), (*)(-1, x_2, y_134), (*)(-1, x_4, y_123))
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function geomul(x::MultiVector1, y::MultiVectorEven)
    x_4 = x.e4
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    y_ = y.e
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    y_1234 = y.e1234
    ret_4 = (+)((*)(x_1, y_14), (*)(x_2, y_24), (*)(x_3, y_34), (*)(x_4, y_))
    ret_3 = (+)((*)(x_1, y_13), (*)(x_2, y_23), (*)(x_3, y_))
    ret_2 = (+)((*)(x_1, y_12), (*)(x_2, y_), (*)(-1, x_3, y_23))
    ret_234 = (+)((*)(x_1, y_1234), (*)(x_2, y_34), (*)(x_4, y_23), (*)(-1, x_3, y_24))
    ret_1 = (+)((*)(x_1, y_), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))
    ret_134 = (+)((*)(x_1, y_34), (*)(x_4, y_13), (*)(-1, x_2, y_1234), (*)(-1, x_3, y_14))
    ret_124 = (+)((*)(x_1, y_24), (*)(x_3, y_1234), (*)(x_4, y_12), (*)(-1, x_2, y_14))
    ret_123 = (+)((*)(x_1, y_23), (*)(x_3, y_12), (*)(-1, x_2, y_13))
    return MultiVectorAll(; e4 = ret_4, e3 = ret_3, e2 = ret_2, e234 = ret_234, e1 = ret_1, e134 = ret_134, e124 = ret_124, e123 = ret_123)
end
function geomul(x::MultiVector1, y::MultiVector0)
    x_4 = x.e4
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    y_ = y.e
    ret_4 = (*)(x_4, y_)
    ret_3 = (*)(x_3, y_)
    ret_2 = (*)(x_2, y_)
    ret_1 = (*)(x_1, y_)
    return MultiVector1(; e4 = ret_4, e3 = ret_3, e2 = ret_2, e1 = ret_1)
end
function geomul(x::MultiVector1, y::MultiVector1)
    x_4 = x.e4
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    y_4 = y.e4
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    ret_ = (+)((*)(x_1, y_1), (*)(x_2, y_2), (*)(x_3, y_3))
    ret_34 = (+)((*)(x_3, y_4), (*)(-1, x_4, y_3))
    ret_24 = (+)((*)(x_2, y_4), (*)(-1, x_4, y_2))
    ret_23 = (+)((*)(x_2, y_3), (*)(-1, x_3, y_2))
    ret_14 = (+)((*)(x_1, y_4), (*)(-1, x_4, y_1))
    ret_13 = (+)((*)(x_1, y_3), (*)(-1, x_3, y_1))
    ret_12 = (+)((*)(x_1, y_2), (*)(-1, x_2, y_1))
    return MultiVectorEven(; e = ret_, e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12)
end
function geomul(x::MultiVector1, y::MultiVector2)
    x_4 = x.e4
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    ret_4 = (+)((*)(x_1, y_14), (*)(x_2, y_24), (*)(x_3, y_34))
    ret_3 = (+)((*)(x_1, y_13), (*)(x_2, y_23))
    ret_2 = (+)((*)(x_1, y_12), (*)(-1, x_3, y_23))
    ret_234 = (+)((*)(x_2, y_34), (*)(x_4, y_23), (*)(-1, x_3, y_24))
    ret_1 = (+)((*)(-1, x_2, y_12), (*)(-1, x_3, y_13))
    ret_134 = (+)((*)(x_1, y_34), (*)(x_4, y_13), (*)(-1, x_3, y_14))
    ret_124 = (+)((*)(x_1, y_24), (*)(x_4, y_12), (*)(-1, x_2, y_14))
    ret_123 = (+)((*)(x_1, y_23), (*)(x_3, y_12), (*)(-1, x_2, y_13))
    return MultiVectorAll(; e4 = ret_4, e3 = ret_3, e2 = ret_2, e234 = ret_234, e1 = ret_1, e134 = ret_134, e124 = ret_124, e123 = ret_123)
end
function geomul(x::MultiVector1, y::MultiVector3)
    x_4 = x.e4
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    y_234 = y.e234
    y_134 = y.e134
    y_124 = y.e124
    y_123 = y.e123
    ret_34 = (+)((*)(x_1, y_134), (*)(x_2, y_234))
    ret_24 = (+)((*)(x_1, y_124), (*)(-1, x_3, y_234))
    ret_23 = (*)(x_1, y_123)
    ret_14 = (+)((*)(-1, x_2, y_124), (*)(-1, x_3, y_134))
    ret_13 = (*)(-1, x_2, y_123)
    ret_12 = (*)(x_3, y_123)
    ret_1234 = (+)((*)(x_1, y_234), (*)(x_3, y_124), (*)(-1, x_2, y_134), (*)(-1, x_4, y_123))
    return MultiVectorEven(; e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12, e1234 = ret_1234)
end
function geomul(x::MultiVector1, y::MultiVector4)
    x_4 = x.e4
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    y_1234 = y.e1234
    ret_234 = (*)(x_1, y_1234)
    ret_134 = (*)(-1, x_2, y_1234)
    ret_124 = (*)(x_3, y_1234)
    return MultiVector3(; e234 = ret_234, e134 = ret_134, e124 = ret_124)
end
function geomul(x::MultiVector1, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function geomul(x::MultiVector2, y::MultiVectorAll)
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    y_ = y.e
    y_4 = y.e4
    y_3 = y.e3
    y_34 = y.e34
    y_2 = y.e2
    y_24 = y.e24
    y_23 = y.e23
    y_234 = y.e234
    y_1 = y.e1
    y_14 = y.e14
    y_13 = y.e13
    y_134 = y.e134
    y_12 = y.e12
    y_124 = y.e124
    y_123 = y.e123
    y_1234 = y.e1234
    ret_ = (+)((*)(-1, x_12, y_12), (*)(-1, x_13, y_13), (*)(-1, x_23, y_23))
    ret_4 = (+)((*)(-1, x_12, y_124), (*)(-1, x_13, y_134), (*)(-1, x_14, y_1), (*)(-1, x_23, y_234), (*)(-1, x_24, y_2), (*)(-1, x_34, y_3))
    ret_3 = (+)((*)(-1, x_12, y_123), (*)(-1, x_13, y_1), (*)(-1, x_23, y_2))
    ret_34 = (+)((*)(x_14, y_13), (*)(x_24, y_23), (*)(x_34, y_), (*)(-1, x_12, y_1234), (*)(-1, x_13, y_14), (*)(-1, x_23, y_24))
    ret_2 = (+)((*)(x_13, y_123), (*)(x_23, y_3), (*)(-1, x_12, y_1))
    ret_24 = (+)((*)(x_13, y_1234), (*)(x_14, y_12), (*)(x_23, y_34), (*)(x_24, y_), (*)(-1, x_12, y_14), (*)(-1, x_34, y_23))
    ret_23 = (+)((*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_12, y_13))
    ret_234 = (+)((*)(x_13, y_124), (*)(x_23, y_4), (*)(x_34, y_2), (*)(-1, x_12, y_134), (*)(-1, x_14, y_123), (*)(-1, x_24, y_3))
    ret_1 = (+)((*)(x_12, y_2), (*)(x_13, y_3), (*)(-1, x_23, y_123))
    ret_14 = (+)((*)(x_12, y_24), (*)(x_13, y_34), (*)(x_14, y_), (*)(-1, x_23, y_1234), (*)(-1, x_24, y_12), (*)(-1, x_34, y_13))
    ret_13 = (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_23, y_12))
    ret_134 = (+)((*)(x_12, y_234), (*)(x_13, y_4), (*)(x_24, y_123), (*)(x_34, y_1), (*)(-1, x_14, y_3), (*)(-1, x_23, y_124))
    ret_12 = (+)((*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_13, y_23))
    ret_124 = (+)((*)(x_12, y_4), (*)(x_23, y_134), (*)(x_24, y_1), (*)(-1, x_13, y_234), (*)(-1, x_14, y_2), (*)(-1, x_34, y_123))
    ret_123 = (+)((*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_13, y_2))
    ret_1234 = (+)((*)(x_12, y_34), (*)(x_14, y_23), (*)(x_23, y_14), (*)(x_34, y_12), (*)(-1, x_13, y_24), (*)(-1, x_24, y_13))
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function geomul(x::MultiVector2, y::MultiVectorEven)
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    y_ = y.e
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    y_1234 = y.e1234
    ret_ = (+)((*)(-1, x_12, y_12), (*)(-1, x_13, y_13), (*)(-1, x_23, y_23))
    ret_34 = (+)((*)(x_14, y_13), (*)(x_24, y_23), (*)(x_34, y_), (*)(-1, x_12, y_1234), (*)(-1, x_13, y_14), (*)(-1, x_23, y_24))
    ret_24 = (+)((*)(x_13, y_1234), (*)(x_14, y_12), (*)(x_23, y_34), (*)(x_24, y_), (*)(-1, x_12, y_14), (*)(-1, x_34, y_23))
    ret_23 = (+)((*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_12, y_13))
    ret_14 = (+)((*)(x_12, y_24), (*)(x_13, y_34), (*)(x_14, y_), (*)(-1, x_23, y_1234), (*)(-1, x_24, y_12), (*)(-1, x_34, y_13))
    ret_13 = (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_23, y_12))
    ret_12 = (+)((*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_13, y_23))
    ret_1234 = (+)((*)(x_12, y_34), (*)(x_14, y_23), (*)(x_23, y_14), (*)(x_34, y_12), (*)(-1, x_13, y_24), (*)(-1, x_24, y_13))
    return MultiVectorEven(; e = ret_, e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12, e1234 = ret_1234)
end
function geomul(x::MultiVector2, y::MultiVector0)
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    y_ = y.e
    ret_34 = (*)(x_34, y_)
    ret_24 = (*)(x_24, y_)
    ret_23 = (*)(x_23, y_)
    ret_14 = (*)(x_14, y_)
    ret_13 = (*)(x_13, y_)
    ret_12 = (*)(x_12, y_)
    return MultiVector2(; e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12)
end
function geomul(x::MultiVector2, y::MultiVector1)
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    y_4 = y.e4
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    ret_4 = (+)((*)(-1, x_14, y_1), (*)(-1, x_24, y_2), (*)(-1, x_34, y_3))
    ret_3 = (+)((*)(-1, x_13, y_1), (*)(-1, x_23, y_2))
    ret_2 = (+)((*)(x_23, y_3), (*)(-1, x_12, y_1))
    ret_234 = (+)((*)(x_23, y_4), (*)(x_34, y_2), (*)(-1, x_24, y_3))
    ret_1 = (+)((*)(x_12, y_2), (*)(x_13, y_3))
    ret_134 = (+)((*)(x_13, y_4), (*)(x_34, y_1), (*)(-1, x_14, y_3))
    ret_124 = (+)((*)(x_12, y_4), (*)(x_24, y_1), (*)(-1, x_14, y_2))
    ret_123 = (+)((*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_13, y_2))
    return MultiVectorAll(; e4 = ret_4, e3 = ret_3, e2 = ret_2, e234 = ret_234, e1 = ret_1, e134 = ret_134, e124 = ret_124, e123 = ret_123)
end
function geomul(x::MultiVector2, y::MultiVector2)
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    ret_ = (+)((*)(-1, x_12, y_12), (*)(-1, x_13, y_13), (*)(-1, x_23, y_23))
    ret_34 = (+)((*)(x_14, y_13), (*)(x_24, y_23), (*)(-1, x_13, y_14), (*)(-1, x_23, y_24))
    ret_24 = (+)((*)(x_14, y_12), (*)(x_23, y_34), (*)(-1, x_12, y_14), (*)(-1, x_34, y_23))
    ret_23 = (+)((*)(x_13, y_12), (*)(-1, x_12, y_13))
    ret_14 = (+)((*)(x_12, y_24), (*)(x_13, y_34), (*)(-1, x_24, y_12), (*)(-1, x_34, y_13))
    ret_13 = (+)((*)(x_12, y_23), (*)(-1, x_23, y_12))
    ret_12 = (+)((*)(x_23, y_13), (*)(-1, x_13, y_23))
    ret_1234 = (+)((*)(x_12, y_34), (*)(x_14, y_23), (*)(x_23, y_14), (*)(x_34, y_12), (*)(-1, x_13, y_24), (*)(-1, x_24, y_13))
    return MultiVectorEven(; e = ret_, e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12, e1234 = ret_1234)
end
function geomul(x::MultiVector2, y::MultiVector3)
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    y_234 = y.e234
    y_134 = y.e134
    y_124 = y.e124
    y_123 = y.e123
    ret_4 = (+)((*)(-1, x_12, y_124), (*)(-1, x_13, y_134), (*)(-1, x_23, y_234))
    ret_3 = (*)(-1, x_12, y_123)
    ret_2 = (*)(x_13, y_123)
    ret_234 = (+)((*)(x_13, y_124), (*)(-1, x_12, y_134), (*)(-1, x_14, y_123))
    ret_1 = (*)(-1, x_23, y_123)
    ret_134 = (+)((*)(x_12, y_234), (*)(x_24, y_123), (*)(-1, x_23, y_124))
    ret_124 = (+)((*)(x_23, y_134), (*)(-1, x_13, y_234), (*)(-1, x_34, y_123))
    return MultiVectorAll(; e4 = ret_4, e3 = ret_3, e2 = ret_2, e234 = ret_234, e1 = ret_1, e134 = ret_134, e124 = ret_124)
end
function geomul(x::MultiVector2, y::MultiVector4)
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    y_1234 = y.e1234
    ret_34 = (*)(-1, x_12, y_1234)
    ret_24 = (*)(x_13, y_1234)
    ret_14 = (*)(-1, x_23, y_1234)
    return MultiVector2(; e34 = ret_34, e24 = ret_24, e14 = ret_14)
end
function geomul(x::MultiVector2, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function geomul(x::MultiVector3, y::MultiVectorAll)
    x_234 = x.e234
    x_134 = x.e134
    x_124 = x.e124
    x_123 = x.e123
    y_ = y.e
    y_4 = y.e4
    y_3 = y.e3
    y_34 = y.e34
    y_2 = y.e2
    y_24 = y.e24
    y_23 = y.e23
    y_234 = y.e234
    y_1 = y.e1
    y_14 = y.e14
    y_13 = y.e13
    y_134 = y.e134
    y_12 = y.e12
    y_124 = y.e124
    y_123 = y.e123
    y_1234 = y.e1234
    ret_ = (*)(-1, x_123, y_123)
    ret_4 = (+)((*)(-1, x_123, y_1234), (*)(-1, x_124, y_12), (*)(-1, x_134, y_13), (*)(-1, x_234, y_23))
    ret_3 = (*)(-1, x_123, y_12)
    ret_34 = (+)((*)(x_124, y_123), (*)(x_134, y_1), (*)(x_234, y_2), (*)(-1, x_123, y_124))
    ret_2 = (*)(x_123, y_13)
    ret_24 = (+)((*)(x_123, y_134), (*)(x_124, y_1), (*)(-1, x_134, y_123), (*)(-1, x_234, y_3))
    ret_23 = (*)(x_123, y_1)
    ret_234 = (+)((*)(x_123, y_14), (*)(x_134, y_12), (*)(x_234, y_), (*)(-1, x_124, y_13))
    ret_1 = (*)(-1, x_123, y_23)
    ret_14 = (+)((*)(x_234, y_123), (*)(-1, x_123, y_234), (*)(-1, x_124, y_2), (*)(-1, x_134, y_3))
    ret_13 = (*)(-1, x_123, y_2)
    ret_134 = (+)((*)(x_124, y_23), (*)(x_134, y_), (*)(-1, x_123, y_24), (*)(-1, x_234, y_12))
    ret_12 = (*)(x_123, y_3)
    ret_124 = (+)((*)(x_123, y_34), (*)(x_124, y_), (*)(x_234, y_13), (*)(-1, x_134, y_23))
    ret_123 = (*)(x_123, y_)
    ret_1234 = (+)((*)(x_123, y_4), (*)(x_134, y_2), (*)(-1, x_124, y_3), (*)(-1, x_234, y_1))
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function geomul(x::MultiVector3, y::MultiVectorEven)
    x_234 = x.e234
    x_134 = x.e134
    x_124 = x.e124
    x_123 = x.e123
    y_ = y.e
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    y_1234 = y.e1234
    ret_4 = (+)((*)(-1, x_123, y_1234), (*)(-1, x_124, y_12), (*)(-1, x_134, y_13), (*)(-1, x_234, y_23))
    ret_3 = (*)(-1, x_123, y_12)
    ret_2 = (*)(x_123, y_13)
    ret_234 = (+)((*)(x_123, y_14), (*)(x_134, y_12), (*)(x_234, y_), (*)(-1, x_124, y_13))
    ret_1 = (*)(-1, x_123, y_23)
    ret_134 = (+)((*)(x_124, y_23), (*)(x_134, y_), (*)(-1, x_123, y_24), (*)(-1, x_234, y_12))
    ret_124 = (+)((*)(x_123, y_34), (*)(x_124, y_), (*)(x_234, y_13), (*)(-1, x_134, y_23))
    ret_123 = (*)(x_123, y_)
    return MultiVectorAll(; e4 = ret_4, e3 = ret_3, e2 = ret_2, e234 = ret_234, e1 = ret_1, e134 = ret_134, e124 = ret_124, e123 = ret_123)
end
function geomul(x::MultiVector3, y::MultiVector0)
    x_234 = x.e234
    x_134 = x.e134
    x_124 = x.e124
    x_123 = x.e123
    y_ = y.e
    ret_234 = (*)(x_234, y_)
    ret_134 = (*)(x_134, y_)
    ret_124 = (*)(x_124, y_)
    ret_123 = (*)(x_123, y_)
    return MultiVector3(; e234 = ret_234, e134 = ret_134, e124 = ret_124, e123 = ret_123)
end
function geomul(x::MultiVector3, y::MultiVector1)
    x_234 = x.e234
    x_134 = x.e134
    x_124 = x.e124
    x_123 = x.e123
    y_4 = y.e4
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    ret_34 = (+)((*)(x_134, y_1), (*)(x_234, y_2))
    ret_24 = (+)((*)(x_124, y_1), (*)(-1, x_234, y_3))
    ret_23 = (*)(x_123, y_1)
    ret_14 = (+)((*)(-1, x_124, y_2), (*)(-1, x_134, y_3))
    ret_13 = (*)(-1, x_123, y_2)
    ret_12 = (*)(x_123, y_3)
    ret_1234 = (+)((*)(x_123, y_4), (*)(x_134, y_2), (*)(-1, x_124, y_3), (*)(-1, x_234, y_1))
    return MultiVectorEven(; e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12, e1234 = ret_1234)
end
function geomul(x::MultiVector3, y::MultiVector2)
    x_234 = x.e234
    x_134 = x.e134
    x_124 = x.e124
    x_123 = x.e123
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    ret_4 = (+)((*)(-1, x_124, y_12), (*)(-1, x_134, y_13), (*)(-1, x_234, y_23))
    ret_3 = (*)(-1, x_123, y_12)
    ret_2 = (*)(x_123, y_13)
    ret_234 = (+)((*)(x_123, y_14), (*)(x_134, y_12), (*)(-1, x_124, y_13))
    ret_1 = (*)(-1, x_123, y_23)
    ret_134 = (+)((*)(x_124, y_23), (*)(-1, x_123, y_24), (*)(-1, x_234, y_12))
    ret_124 = (+)((*)(x_123, y_34), (*)(x_234, y_13), (*)(-1, x_134, y_23))
    return MultiVectorAll(; e4 = ret_4, e3 = ret_3, e2 = ret_2, e234 = ret_234, e1 = ret_1, e134 = ret_134, e124 = ret_124)
end
function geomul(x::MultiVector3, y::MultiVector3)
    x_234 = x.e234
    x_134 = x.e134
    x_124 = x.e124
    x_123 = x.e123
    y_234 = y.e234
    y_134 = y.e134
    y_124 = y.e124
    y_123 = y.e123
    ret_ = (*)(-1, x_123, y_123)
    ret_34 = (+)((*)(x_124, y_123), (*)(-1, x_123, y_124))
    ret_24 = (+)((*)(x_123, y_134), (*)(-1, x_134, y_123))
    ret_14 = (+)((*)(x_234, y_123), (*)(-1, x_123, y_234))
    return MultiVectorEven(; e = ret_, e34 = ret_34, e24 = ret_24, e14 = ret_14)
end
function geomul(x::MultiVector3, y::MultiVector4)
    x_234 = x.e234
    x_134 = x.e134
    x_124 = x.e124
    x_123 = x.e123
    y_1234 = y.e1234
    ret_4 = (*)(-1, x_123, y_1234)
    return MultiVector1(; e4 = ret_4)
end
function geomul(x::MultiVector3, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function geomul(x::MultiVector4, y::MultiVectorAll)
    x_1234 = x.e1234
    y_ = y.e
    y_4 = y.e4
    y_3 = y.e3
    y_34 = y.e34
    y_2 = y.e2
    y_24 = y.e24
    y_23 = y.e23
    y_234 = y.e234
    y_1 = y.e1
    y_14 = y.e14
    y_13 = y.e13
    y_134 = y.e134
    y_12 = y.e12
    y_124 = y.e124
    y_123 = y.e123
    y_1234 = y.e1234
    ret_4 = (*)(x_1234, y_123)
    ret_34 = (*)(-1, x_1234, y_12)
    ret_24 = (*)(x_1234, y_13)
    ret_234 = (*)(-1, x_1234, y_1)
    ret_14 = (*)(-1, x_1234, y_23)
    ret_134 = (*)(x_1234, y_2)
    ret_124 = (*)(-1, x_1234, y_3)
    ret_1234 = (*)(x_1234, y_)
    return MultiVectorAll(; e4 = ret_4, e34 = ret_34, e24 = ret_24, e234 = ret_234, e14 = ret_14, e134 = ret_134, e124 = ret_124, e1234 = ret_1234)
end
function geomul(x::MultiVector4, y::MultiVectorEven)
    x_1234 = x.e1234
    y_ = y.e
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    y_1234 = y.e1234
    ret_34 = (*)(-1, x_1234, y_12)
    ret_24 = (*)(x_1234, y_13)
    ret_14 = (*)(-1, x_1234, y_23)
    ret_1234 = (*)(x_1234, y_)
    return MultiVectorEven(; e34 = ret_34, e24 = ret_24, e14 = ret_14, e1234 = ret_1234)
end
function geomul(x::MultiVector4, y::MultiVector0)
    x_1234 = x.e1234
    y_ = y.e
    ret_1234 = (*)(x_1234, y_)
    return MultiVector4(; e1234 = ret_1234)
end
function geomul(x::MultiVector4, y::MultiVector1)
    x_1234 = x.e1234
    y_4 = y.e4
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    ret_234 = (*)(-1, x_1234, y_1)
    ret_134 = (*)(x_1234, y_2)
    ret_124 = (*)(-1, x_1234, y_3)
    return MultiVector3(; e234 = ret_234, e134 = ret_134, e124 = ret_124)
end
function geomul(x::MultiVector4, y::MultiVector2)
    x_1234 = x.e1234
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    ret_34 = (*)(-1, x_1234, y_12)
    ret_24 = (*)(x_1234, y_13)
    ret_14 = (*)(-1, x_1234, y_23)
    return MultiVector2(; e34 = ret_34, e24 = ret_24, e14 = ret_14)
end
function geomul(x::MultiVector4, y::MultiVector3)
    x_1234 = x.e1234
    y_234 = y.e234
    y_134 = y.e134
    y_124 = y.e124
    y_123 = y.e123
    ret_4 = (*)(x_1234, y_123)
    return MultiVector1(; e4 = ret_4)
end
function geomul(x::MultiVector4, y::MultiVector4)
    return MultiVectorZero(; )
end
function geomul(x::MultiVector4, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function geomul(x::MultiVectorZero, y::MultiVectorAll)
    return MultiVectorZero(; )
end
function geomul(x::MultiVectorZero, y::MultiVectorEven)
    return MultiVectorZero(; )
end
function geomul(x::MultiVectorZero, y::MultiVector0)
    return MultiVectorZero(; )
end
function geomul(x::MultiVectorZero, y::MultiVector1)
    return MultiVectorZero(; )
end
function geomul(x::MultiVectorZero, y::MultiVector2)
    return MultiVectorZero(; )
end
function geomul(x::MultiVectorZero, y::MultiVector3)
    return MultiVectorZero(; )
end
function geomul(x::MultiVectorZero, y::MultiVector4)
    return MultiVectorZero(; )
end
function geomul(x::MultiVectorZero, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function wedge(x::MultiVectorAll, y::MultiVectorAll)
    x_ = x.e
    x_4 = x.e4
    x_3 = x.e3
    x_34 = x.e34
    x_2 = x.e2
    x_24 = x.e24
    x_23 = x.e23
    x_234 = x.e234
    x_1 = x.e1
    x_14 = x.e14
    x_13 = x.e13
    x_134 = x.e134
    x_12 = x.e12
    x_124 = x.e124
    x_123 = x.e123
    x_1234 = x.e1234
    y_ = y.e
    y_4 = y.e4
    y_3 = y.e3
    y_34 = y.e34
    y_2 = y.e2
    y_24 = y.e24
    y_23 = y.e23
    y_234 = y.e234
    y_1 = y.e1
    y_14 = y.e14
    y_13 = y.e13
    y_134 = y.e134
    y_12 = y.e12
    y_124 = y.e124
    y_123 = y.e123
    y_1234 = y.e1234
    ret_ = (*)(x_, y_)
    ret_4 = (+)((*)(x_, y_4), (*)(x_4, y_))
    ret_3 = (+)((*)(x_, y_3), (*)(x_3, y_))
    ret_34 = (+)((*)(x_, y_34), (*)(x_3, y_4), (*)(x_34, y_), (*)(-1, x_4, y_3))
    ret_2 = (+)((*)(x_, y_2), (*)(x_2, y_))
    ret_24 = (+)((*)(x_, y_24), (*)(x_2, y_4), (*)(x_24, y_), (*)(-1, x_4, y_2))
    ret_23 = (+)((*)(x_, y_23), (*)(x_2, y_3), (*)(x_23, y_), (*)(-1, x_3, y_2))
    ret_234 = (+)((*)(x_, y_234), (*)(x_2, y_34), (*)(x_23, y_4), (*)(x_234, y_), (*)(x_34, y_2), (*)(x_4, y_23), (*)(-1, x_24, y_3), (*)(-1, x_3, y_24))
    ret_1 = (+)((*)(x_, y_1), (*)(x_1, y_))
    ret_14 = (+)((*)(x_, y_14), (*)(x_1, y_4), (*)(x_14, y_), (*)(-1, x_4, y_1))
    ret_13 = (+)((*)(x_, y_13), (*)(x_1, y_3), (*)(x_13, y_), (*)(-1, x_3, y_1))
    ret_134 = (+)((*)(x_, y_134), (*)(x_1, y_34), (*)(x_13, y_4), (*)(x_134, y_), (*)(x_34, y_1), (*)(x_4, y_13), (*)(-1, x_14, y_3), (*)(-1, x_3, y_14))
    ret_12 = (+)((*)(x_, y_12), (*)(x_1, y_2), (*)(x_12, y_), (*)(-1, x_2, y_1))
    ret_124 = (+)((*)(x_, y_124), (*)(x_1, y_24), (*)(x_12, y_4), (*)(x_124, y_), (*)(x_24, y_1), (*)(x_4, y_12), (*)(-1, x_14, y_2), (*)(-1, x_2, y_14))
    ret_123 = (+)((*)(x_, y_123), (*)(x_1, y_23), (*)(x_12, y_3), (*)(x_123, y_), (*)(x_23, y_1), (*)(x_3, y_12), (*)(-1, x_13, y_2), (*)(-1, x_2, y_13))
    ret_1234 = (+)((*)(x_, y_1234), (*)(x_1, y_234), (*)(x_12, y_34), (*)(x_123, y_4), (*)(x_1234, y_), (*)(x_134, y_2), (*)(x_14, y_23), (*)(x_23, y_14), (*)(x_3, y_124), (*)(x_34, y_12), (*)(-1, x_124, y_3), (*)(-1, x_13, y_24), (*)(-1, x_2, y_134), (*)(-1, x_234, y_1), (*)(-1, x_24, y_13), (*)(-1, x_4, y_123))
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function wedge(x::MultiVectorAll, y::MultiVectorEven)
    x_ = x.e
    x_4 = x.e4
    x_3 = x.e3
    x_34 = x.e34
    x_2 = x.e2
    x_24 = x.e24
    x_23 = x.e23
    x_234 = x.e234
    x_1 = x.e1
    x_14 = x.e14
    x_13 = x.e13
    x_134 = x.e134
    x_12 = x.e12
    x_124 = x.e124
    x_123 = x.e123
    x_1234 = x.e1234
    y_ = y.e
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    y_1234 = y.e1234
    ret_ = (*)(x_, y_)
    ret_4 = (*)(x_4, y_)
    ret_3 = (*)(x_3, y_)
    ret_34 = (+)((*)(x_, y_34), (*)(x_34, y_))
    ret_2 = (*)(x_2, y_)
    ret_24 = (+)((*)(x_, y_24), (*)(x_24, y_))
    ret_23 = (+)((*)(x_, y_23), (*)(x_23, y_))
    ret_234 = (+)((*)(x_2, y_34), (*)(x_234, y_), (*)(x_4, y_23), (*)(-1, x_3, y_24))
    ret_1 = (*)(x_1, y_)
    ret_14 = (+)((*)(x_, y_14), (*)(x_14, y_))
    ret_13 = (+)((*)(x_, y_13), (*)(x_13, y_))
    ret_134 = (+)((*)(x_1, y_34), (*)(x_134, y_), (*)(x_4, y_13), (*)(-1, x_3, y_14))
    ret_12 = (+)((*)(x_, y_12), (*)(x_12, y_))
    ret_124 = (+)((*)(x_1, y_24), (*)(x_124, y_), (*)(x_4, y_12), (*)(-1, x_2, y_14))
    ret_123 = (+)((*)(x_1, y_23), (*)(x_123, y_), (*)(x_3, y_12), (*)(-1, x_2, y_13))
    ret_1234 = (+)((*)(x_, y_1234), (*)(x_12, y_34), (*)(x_1234, y_), (*)(x_14, y_23), (*)(x_23, y_14), (*)(x_34, y_12), (*)(-1, x_13, y_24), (*)(-1, x_24, y_13))
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function wedge(x::MultiVectorAll, y::MultiVector0)
    x_ = x.e
    x_4 = x.e4
    x_3 = x.e3
    x_34 = x.e34
    x_2 = x.e2
    x_24 = x.e24
    x_23 = x.e23
    x_234 = x.e234
    x_1 = x.e1
    x_14 = x.e14
    x_13 = x.e13
    x_134 = x.e134
    x_12 = x.e12
    x_124 = x.e124
    x_123 = x.e123
    x_1234 = x.e1234
    y_ = y.e
    ret_ = (*)(x_, y_)
    ret_4 = (*)(x_4, y_)
    ret_3 = (*)(x_3, y_)
    ret_34 = (*)(x_34, y_)
    ret_2 = (*)(x_2, y_)
    ret_24 = (*)(x_24, y_)
    ret_23 = (*)(x_23, y_)
    ret_234 = (*)(x_234, y_)
    ret_1 = (*)(x_1, y_)
    ret_14 = (*)(x_14, y_)
    ret_13 = (*)(x_13, y_)
    ret_134 = (*)(x_134, y_)
    ret_12 = (*)(x_12, y_)
    ret_124 = (*)(x_124, y_)
    ret_123 = (*)(x_123, y_)
    ret_1234 = (*)(x_1234, y_)
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function wedge(x::MultiVectorAll, y::MultiVector1)
    x_ = x.e
    x_4 = x.e4
    x_3 = x.e3
    x_34 = x.e34
    x_2 = x.e2
    x_24 = x.e24
    x_23 = x.e23
    x_234 = x.e234
    x_1 = x.e1
    x_14 = x.e14
    x_13 = x.e13
    x_134 = x.e134
    x_12 = x.e12
    x_124 = x.e124
    x_123 = x.e123
    x_1234 = x.e1234
    y_4 = y.e4
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    ret_4 = (*)(x_, y_4)
    ret_3 = (*)(x_, y_3)
    ret_34 = (+)((*)(x_3, y_4), (*)(-1, x_4, y_3))
    ret_2 = (*)(x_, y_2)
    ret_24 = (+)((*)(x_2, y_4), (*)(-1, x_4, y_2))
    ret_23 = (+)((*)(x_2, y_3), (*)(-1, x_3, y_2))
    ret_234 = (+)((*)(x_23, y_4), (*)(x_34, y_2), (*)(-1, x_24, y_3))
    ret_1 = (*)(x_, y_1)
    ret_14 = (+)((*)(x_1, y_4), (*)(-1, x_4, y_1))
    ret_13 = (+)((*)(x_1, y_3), (*)(-1, x_3, y_1))
    ret_134 = (+)((*)(x_13, y_4), (*)(x_34, y_1), (*)(-1, x_14, y_3))
    ret_12 = (+)((*)(x_1, y_2), (*)(-1, x_2, y_1))
    ret_124 = (+)((*)(x_12, y_4), (*)(x_24, y_1), (*)(-1, x_14, y_2))
    ret_123 = (+)((*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_13, y_2))
    ret_1234 = (+)((*)(x_123, y_4), (*)(x_134, y_2), (*)(-1, x_124, y_3), (*)(-1, x_234, y_1))
    return MultiVectorAll(; e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function wedge(x::MultiVectorAll, y::MultiVector2)
    x_ = x.e
    x_4 = x.e4
    x_3 = x.e3
    x_34 = x.e34
    x_2 = x.e2
    x_24 = x.e24
    x_23 = x.e23
    x_234 = x.e234
    x_1 = x.e1
    x_14 = x.e14
    x_13 = x.e13
    x_134 = x.e134
    x_12 = x.e12
    x_124 = x.e124
    x_123 = x.e123
    x_1234 = x.e1234
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    ret_34 = (*)(x_, y_34)
    ret_24 = (*)(x_, y_24)
    ret_23 = (*)(x_, y_23)
    ret_234 = (+)((*)(x_2, y_34), (*)(x_4, y_23), (*)(-1, x_3, y_24))
    ret_14 = (*)(x_, y_14)
    ret_13 = (*)(x_, y_13)
    ret_134 = (+)((*)(x_1, y_34), (*)(x_4, y_13), (*)(-1, x_3, y_14))
    ret_12 = (*)(x_, y_12)
    ret_124 = (+)((*)(x_1, y_24), (*)(x_4, y_12), (*)(-1, x_2, y_14))
    ret_123 = (+)((*)(x_1, y_23), (*)(x_3, y_12), (*)(-1, x_2, y_13))
    ret_1234 = (+)((*)(x_12, y_34), (*)(x_14, y_23), (*)(x_23, y_14), (*)(x_34, y_12), (*)(-1, x_13, y_24), (*)(-1, x_24, y_13))
    return MultiVectorAll(; e34 = ret_34, e24 = ret_24, e23 = ret_23, e234 = ret_234, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function wedge(x::MultiVectorAll, y::MultiVector3)
    x_ = x.e
    x_4 = x.e4
    x_3 = x.e3
    x_34 = x.e34
    x_2 = x.e2
    x_24 = x.e24
    x_23 = x.e23
    x_234 = x.e234
    x_1 = x.e1
    x_14 = x.e14
    x_13 = x.e13
    x_134 = x.e134
    x_12 = x.e12
    x_124 = x.e124
    x_123 = x.e123
    x_1234 = x.e1234
    y_234 = y.e234
    y_134 = y.e134
    y_124 = y.e124
    y_123 = y.e123
    ret_234 = (*)(x_, y_234)
    ret_134 = (*)(x_, y_134)
    ret_124 = (*)(x_, y_124)
    ret_123 = (*)(x_, y_123)
    ret_1234 = (+)((*)(x_1, y_234), (*)(x_3, y_124), (*)(-1, x_2, y_134), (*)(-1, x_4, y_123))
    return MultiVectorAll(; e234 = ret_234, e134 = ret_134, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function wedge(x::MultiVectorAll, y::MultiVector4)
    x_ = x.e
    x_4 = x.e4
    x_3 = x.e3
    x_34 = x.e34
    x_2 = x.e2
    x_24 = x.e24
    x_23 = x.e23
    x_234 = x.e234
    x_1 = x.e1
    x_14 = x.e14
    x_13 = x.e13
    x_134 = x.e134
    x_12 = x.e12
    x_124 = x.e124
    x_123 = x.e123
    x_1234 = x.e1234
    y_1234 = y.e1234
    ret_1234 = (*)(x_, y_1234)
    return MultiVector4(; e1234 = ret_1234)
end
function wedge(x::MultiVectorAll, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function wedge(x::MultiVectorEven, y::MultiVectorAll)
    x_ = x.e
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    x_1234 = x.e1234
    y_ = y.e
    y_4 = y.e4
    y_3 = y.e3
    y_34 = y.e34
    y_2 = y.e2
    y_24 = y.e24
    y_23 = y.e23
    y_234 = y.e234
    y_1 = y.e1
    y_14 = y.e14
    y_13 = y.e13
    y_134 = y.e134
    y_12 = y.e12
    y_124 = y.e124
    y_123 = y.e123
    y_1234 = y.e1234
    ret_ = (*)(x_, y_)
    ret_4 = (*)(x_, y_4)
    ret_3 = (*)(x_, y_3)
    ret_34 = (+)((*)(x_, y_34), (*)(x_34, y_))
    ret_2 = (*)(x_, y_2)
    ret_24 = (+)((*)(x_, y_24), (*)(x_24, y_))
    ret_23 = (+)((*)(x_, y_23), (*)(x_23, y_))
    ret_234 = (+)((*)(x_, y_234), (*)(x_23, y_4), (*)(x_34, y_2), (*)(-1, x_24, y_3))
    ret_1 = (*)(x_, y_1)
    ret_14 = (+)((*)(x_, y_14), (*)(x_14, y_))
    ret_13 = (+)((*)(x_, y_13), (*)(x_13, y_))
    ret_134 = (+)((*)(x_, y_134), (*)(x_13, y_4), (*)(x_34, y_1), (*)(-1, x_14, y_3))
    ret_12 = (+)((*)(x_, y_12), (*)(x_12, y_))
    ret_124 = (+)((*)(x_, y_124), (*)(x_12, y_4), (*)(x_24, y_1), (*)(-1, x_14, y_2))
    ret_123 = (+)((*)(x_, y_123), (*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_13, y_2))
    ret_1234 = (+)((*)(x_, y_1234), (*)(x_12, y_34), (*)(x_1234, y_), (*)(x_14, y_23), (*)(x_23, y_14), (*)(x_34, y_12), (*)(-1, x_13, y_24), (*)(-1, x_24, y_13))
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function wedge(x::MultiVectorEven, y::MultiVectorEven)
    x_ = x.e
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    x_1234 = x.e1234
    y_ = y.e
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    y_1234 = y.e1234
    ret_ = (*)(x_, y_)
    ret_34 = (+)((*)(x_, y_34), (*)(x_34, y_))
    ret_24 = (+)((*)(x_, y_24), (*)(x_24, y_))
    ret_23 = (+)((*)(x_, y_23), (*)(x_23, y_))
    ret_14 = (+)((*)(x_, y_14), (*)(x_14, y_))
    ret_13 = (+)((*)(x_, y_13), (*)(x_13, y_))
    ret_12 = (+)((*)(x_, y_12), (*)(x_12, y_))
    ret_1234 = (+)((*)(x_, y_1234), (*)(x_12, y_34), (*)(x_1234, y_), (*)(x_14, y_23), (*)(x_23, y_14), (*)(x_34, y_12), (*)(-1, x_13, y_24), (*)(-1, x_24, y_13))
    return MultiVectorEven(; e = ret_, e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12, e1234 = ret_1234)
end
function wedge(x::MultiVectorEven, y::MultiVector0)
    x_ = x.e
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    x_1234 = x.e1234
    y_ = y.e
    ret_ = (*)(x_, y_)
    ret_34 = (*)(x_34, y_)
    ret_24 = (*)(x_24, y_)
    ret_23 = (*)(x_23, y_)
    ret_14 = (*)(x_14, y_)
    ret_13 = (*)(x_13, y_)
    ret_12 = (*)(x_12, y_)
    ret_1234 = (*)(x_1234, y_)
    return MultiVectorEven(; e = ret_, e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12, e1234 = ret_1234)
end
function wedge(x::MultiVectorEven, y::MultiVector1)
    x_ = x.e
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    x_1234 = x.e1234
    y_4 = y.e4
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    ret_4 = (*)(x_, y_4)
    ret_3 = (*)(x_, y_3)
    ret_2 = (*)(x_, y_2)
    ret_234 = (+)((*)(x_23, y_4), (*)(x_34, y_2), (*)(-1, x_24, y_3))
    ret_1 = (*)(x_, y_1)
    ret_134 = (+)((*)(x_13, y_4), (*)(x_34, y_1), (*)(-1, x_14, y_3))
    ret_124 = (+)((*)(x_12, y_4), (*)(x_24, y_1), (*)(-1, x_14, y_2))
    ret_123 = (+)((*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_13, y_2))
    return MultiVectorAll(; e4 = ret_4, e3 = ret_3, e2 = ret_2, e234 = ret_234, e1 = ret_1, e134 = ret_134, e124 = ret_124, e123 = ret_123)
end
function wedge(x::MultiVectorEven, y::MultiVector2)
    x_ = x.e
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    x_1234 = x.e1234
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    ret_34 = (*)(x_, y_34)
    ret_24 = (*)(x_, y_24)
    ret_23 = (*)(x_, y_23)
    ret_14 = (*)(x_, y_14)
    ret_13 = (*)(x_, y_13)
    ret_12 = (*)(x_, y_12)
    ret_1234 = (+)((*)(x_12, y_34), (*)(x_14, y_23), (*)(x_23, y_14), (*)(x_34, y_12), (*)(-1, x_13, y_24), (*)(-1, x_24, y_13))
    return MultiVectorEven(; e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12, e1234 = ret_1234)
end
function wedge(x::MultiVectorEven, y::MultiVector3)
    x_ = x.e
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    x_1234 = x.e1234
    y_234 = y.e234
    y_134 = y.e134
    y_124 = y.e124
    y_123 = y.e123
    ret_234 = (*)(x_, y_234)
    ret_134 = (*)(x_, y_134)
    ret_124 = (*)(x_, y_124)
    ret_123 = (*)(x_, y_123)
    return MultiVector3(; e234 = ret_234, e134 = ret_134, e124 = ret_124, e123 = ret_123)
end
function wedge(x::MultiVectorEven, y::MultiVector4)
    x_ = x.e
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    x_1234 = x.e1234
    y_1234 = y.e1234
    ret_1234 = (*)(x_, y_1234)
    return MultiVector4(; e1234 = ret_1234)
end
function wedge(x::MultiVectorEven, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function wedge(x::MultiVector0, y::MultiVectorAll)
    x_ = x.e
    y_ = y.e
    y_4 = y.e4
    y_3 = y.e3
    y_34 = y.e34
    y_2 = y.e2
    y_24 = y.e24
    y_23 = y.e23
    y_234 = y.e234
    y_1 = y.e1
    y_14 = y.e14
    y_13 = y.e13
    y_134 = y.e134
    y_12 = y.e12
    y_124 = y.e124
    y_123 = y.e123
    y_1234 = y.e1234
    ret_ = (*)(x_, y_)
    ret_4 = (*)(x_, y_4)
    ret_3 = (*)(x_, y_3)
    ret_34 = (*)(x_, y_34)
    ret_2 = (*)(x_, y_2)
    ret_24 = (*)(x_, y_24)
    ret_23 = (*)(x_, y_23)
    ret_234 = (*)(x_, y_234)
    ret_1 = (*)(x_, y_1)
    ret_14 = (*)(x_, y_14)
    ret_13 = (*)(x_, y_13)
    ret_134 = (*)(x_, y_134)
    ret_12 = (*)(x_, y_12)
    ret_124 = (*)(x_, y_124)
    ret_123 = (*)(x_, y_123)
    ret_1234 = (*)(x_, y_1234)
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function wedge(x::MultiVector0, y::MultiVectorEven)
    x_ = x.e
    y_ = y.e
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    y_1234 = y.e1234
    ret_ = (*)(x_, y_)
    ret_34 = (*)(x_, y_34)
    ret_24 = (*)(x_, y_24)
    ret_23 = (*)(x_, y_23)
    ret_14 = (*)(x_, y_14)
    ret_13 = (*)(x_, y_13)
    ret_12 = (*)(x_, y_12)
    ret_1234 = (*)(x_, y_1234)
    return MultiVectorEven(; e = ret_, e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12, e1234 = ret_1234)
end
function wedge(x::MultiVector0, y::MultiVector0)
    x_ = x.e
    y_ = y.e
    ret_ = (*)(x_, y_)
    return MultiVector0(; e = ret_)
end
function wedge(x::MultiVector0, y::MultiVector1)
    x_ = x.e
    y_4 = y.e4
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    ret_4 = (*)(x_, y_4)
    ret_3 = (*)(x_, y_3)
    ret_2 = (*)(x_, y_2)
    ret_1 = (*)(x_, y_1)
    return MultiVector1(; e4 = ret_4, e3 = ret_3, e2 = ret_2, e1 = ret_1)
end
function wedge(x::MultiVector0, y::MultiVector2)
    x_ = x.e
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    ret_34 = (*)(x_, y_34)
    ret_24 = (*)(x_, y_24)
    ret_23 = (*)(x_, y_23)
    ret_14 = (*)(x_, y_14)
    ret_13 = (*)(x_, y_13)
    ret_12 = (*)(x_, y_12)
    return MultiVector2(; e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12)
end
function wedge(x::MultiVector0, y::MultiVector3)
    x_ = x.e
    y_234 = y.e234
    y_134 = y.e134
    y_124 = y.e124
    y_123 = y.e123
    ret_234 = (*)(x_, y_234)
    ret_134 = (*)(x_, y_134)
    ret_124 = (*)(x_, y_124)
    ret_123 = (*)(x_, y_123)
    return MultiVector3(; e234 = ret_234, e134 = ret_134, e124 = ret_124, e123 = ret_123)
end
function wedge(x::MultiVector0, y::MultiVector4)
    x_ = x.e
    y_1234 = y.e1234
    ret_1234 = (*)(x_, y_1234)
    return MultiVector4(; e1234 = ret_1234)
end
function wedge(x::MultiVector0, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function wedge(x::MultiVector1, y::MultiVectorAll)
    x_4 = x.e4
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    y_ = y.e
    y_4 = y.e4
    y_3 = y.e3
    y_34 = y.e34
    y_2 = y.e2
    y_24 = y.e24
    y_23 = y.e23
    y_234 = y.e234
    y_1 = y.e1
    y_14 = y.e14
    y_13 = y.e13
    y_134 = y.e134
    y_12 = y.e12
    y_124 = y.e124
    y_123 = y.e123
    y_1234 = y.e1234
    ret_4 = (*)(x_4, y_)
    ret_3 = (*)(x_3, y_)
    ret_34 = (+)((*)(x_3, y_4), (*)(-1, x_4, y_3))
    ret_2 = (*)(x_2, y_)
    ret_24 = (+)((*)(x_2, y_4), (*)(-1, x_4, y_2))
    ret_23 = (+)((*)(x_2, y_3), (*)(-1, x_3, y_2))
    ret_234 = (+)((*)(x_2, y_34), (*)(x_4, y_23), (*)(-1, x_3, y_24))
    ret_1 = (*)(x_1, y_)
    ret_14 = (+)((*)(x_1, y_4), (*)(-1, x_4, y_1))
    ret_13 = (+)((*)(x_1, y_3), (*)(-1, x_3, y_1))
    ret_134 = (+)((*)(x_1, y_34), (*)(x_4, y_13), (*)(-1, x_3, y_14))
    ret_12 = (+)((*)(x_1, y_2), (*)(-1, x_2, y_1))
    ret_124 = (+)((*)(x_1, y_24), (*)(x_4, y_12), (*)(-1, x_2, y_14))
    ret_123 = (+)((*)(x_1, y_23), (*)(x_3, y_12), (*)(-1, x_2, y_13))
    ret_1234 = (+)((*)(x_1, y_234), (*)(x_3, y_124), (*)(-1, x_2, y_134), (*)(-1, x_4, y_123))
    return MultiVectorAll(; e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function wedge(x::MultiVector1, y::MultiVectorEven)
    x_4 = x.e4
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    y_ = y.e
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    y_1234 = y.e1234
    ret_4 = (*)(x_4, y_)
    ret_3 = (*)(x_3, y_)
    ret_2 = (*)(x_2, y_)
    ret_234 = (+)((*)(x_2, y_34), (*)(x_4, y_23), (*)(-1, x_3, y_24))
    ret_1 = (*)(x_1, y_)
    ret_134 = (+)((*)(x_1, y_34), (*)(x_4, y_13), (*)(-1, x_3, y_14))
    ret_124 = (+)((*)(x_1, y_24), (*)(x_4, y_12), (*)(-1, x_2, y_14))
    ret_123 = (+)((*)(x_1, y_23), (*)(x_3, y_12), (*)(-1, x_2, y_13))
    return MultiVectorAll(; e4 = ret_4, e3 = ret_3, e2 = ret_2, e234 = ret_234, e1 = ret_1, e134 = ret_134, e124 = ret_124, e123 = ret_123)
end
function wedge(x::MultiVector1, y::MultiVector0)
    x_4 = x.e4
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    y_ = y.e
    ret_4 = (*)(x_4, y_)
    ret_3 = (*)(x_3, y_)
    ret_2 = (*)(x_2, y_)
    ret_1 = (*)(x_1, y_)
    return MultiVector1(; e4 = ret_4, e3 = ret_3, e2 = ret_2, e1 = ret_1)
end
function wedge(x::MultiVector1, y::MultiVector1)
    x_4 = x.e4
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    y_4 = y.e4
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    ret_34 = (+)((*)(x_3, y_4), (*)(-1, x_4, y_3))
    ret_24 = (+)((*)(x_2, y_4), (*)(-1, x_4, y_2))
    ret_23 = (+)((*)(x_2, y_3), (*)(-1, x_3, y_2))
    ret_14 = (+)((*)(x_1, y_4), (*)(-1, x_4, y_1))
    ret_13 = (+)((*)(x_1, y_3), (*)(-1, x_3, y_1))
    ret_12 = (+)((*)(x_1, y_2), (*)(-1, x_2, y_1))
    return MultiVector2(; e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12)
end
function wedge(x::MultiVector1, y::MultiVector2)
    x_4 = x.e4
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    ret_234 = (+)((*)(x_2, y_34), (*)(x_4, y_23), (*)(-1, x_3, y_24))
    ret_134 = (+)((*)(x_1, y_34), (*)(x_4, y_13), (*)(-1, x_3, y_14))
    ret_124 = (+)((*)(x_1, y_24), (*)(x_4, y_12), (*)(-1, x_2, y_14))
    ret_123 = (+)((*)(x_1, y_23), (*)(x_3, y_12), (*)(-1, x_2, y_13))
    return MultiVector3(; e234 = ret_234, e134 = ret_134, e124 = ret_124, e123 = ret_123)
end
function wedge(x::MultiVector1, y::MultiVector3)
    x_4 = x.e4
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    y_234 = y.e234
    y_134 = y.e134
    y_124 = y.e124
    y_123 = y.e123
    ret_1234 = (+)((*)(x_1, y_234), (*)(x_3, y_124), (*)(-1, x_2, y_134), (*)(-1, x_4, y_123))
    return MultiVector4(; e1234 = ret_1234)
end
function wedge(x::MultiVector1, y::MultiVector4)
    return MultiVectorZero(; )
end
function wedge(x::MultiVector1, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function wedge(x::MultiVector2, y::MultiVectorAll)
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    y_ = y.e
    y_4 = y.e4
    y_3 = y.e3
    y_34 = y.e34
    y_2 = y.e2
    y_24 = y.e24
    y_23 = y.e23
    y_234 = y.e234
    y_1 = y.e1
    y_14 = y.e14
    y_13 = y.e13
    y_134 = y.e134
    y_12 = y.e12
    y_124 = y.e124
    y_123 = y.e123
    y_1234 = y.e1234
    ret_34 = (*)(x_34, y_)
    ret_24 = (*)(x_24, y_)
    ret_23 = (*)(x_23, y_)
    ret_234 = (+)((*)(x_23, y_4), (*)(x_34, y_2), (*)(-1, x_24, y_3))
    ret_14 = (*)(x_14, y_)
    ret_13 = (*)(x_13, y_)
    ret_134 = (+)((*)(x_13, y_4), (*)(x_34, y_1), (*)(-1, x_14, y_3))
    ret_12 = (*)(x_12, y_)
    ret_124 = (+)((*)(x_12, y_4), (*)(x_24, y_1), (*)(-1, x_14, y_2))
    ret_123 = (+)((*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_13, y_2))
    ret_1234 = (+)((*)(x_12, y_34), (*)(x_14, y_23), (*)(x_23, y_14), (*)(x_34, y_12), (*)(-1, x_13, y_24), (*)(-1, x_24, y_13))
    return MultiVectorAll(; e34 = ret_34, e24 = ret_24, e23 = ret_23, e234 = ret_234, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function wedge(x::MultiVector2, y::MultiVectorEven)
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    y_ = y.e
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    y_1234 = y.e1234
    ret_34 = (*)(x_34, y_)
    ret_24 = (*)(x_24, y_)
    ret_23 = (*)(x_23, y_)
    ret_14 = (*)(x_14, y_)
    ret_13 = (*)(x_13, y_)
    ret_12 = (*)(x_12, y_)
    ret_1234 = (+)((*)(x_12, y_34), (*)(x_14, y_23), (*)(x_23, y_14), (*)(x_34, y_12), (*)(-1, x_13, y_24), (*)(-1, x_24, y_13))
    return MultiVectorEven(; e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12, e1234 = ret_1234)
end
function wedge(x::MultiVector2, y::MultiVector0)
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    y_ = y.e
    ret_34 = (*)(x_34, y_)
    ret_24 = (*)(x_24, y_)
    ret_23 = (*)(x_23, y_)
    ret_14 = (*)(x_14, y_)
    ret_13 = (*)(x_13, y_)
    ret_12 = (*)(x_12, y_)
    return MultiVector2(; e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12)
end
function wedge(x::MultiVector2, y::MultiVector1)
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    y_4 = y.e4
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    ret_234 = (+)((*)(x_23, y_4), (*)(x_34, y_2), (*)(-1, x_24, y_3))
    ret_134 = (+)((*)(x_13, y_4), (*)(x_34, y_1), (*)(-1, x_14, y_3))
    ret_124 = (+)((*)(x_12, y_4), (*)(x_24, y_1), (*)(-1, x_14, y_2))
    ret_123 = (+)((*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_13, y_2))
    return MultiVector3(; e234 = ret_234, e134 = ret_134, e124 = ret_124, e123 = ret_123)
end
function wedge(x::MultiVector2, y::MultiVector2)
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    ret_1234 = (+)((*)(x_12, y_34), (*)(x_14, y_23), (*)(x_23, y_14), (*)(x_34, y_12), (*)(-1, x_13, y_24), (*)(-1, x_24, y_13))
    return MultiVector4(; e1234 = ret_1234)
end
function wedge(x::MultiVector2, y::MultiVector3)
    return MultiVectorZero(; )
end
function wedge(x::MultiVector2, y::MultiVector4)
    return MultiVectorZero(; )
end
function wedge(x::MultiVector2, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function wedge(x::MultiVector3, y::MultiVectorAll)
    x_234 = x.e234
    x_134 = x.e134
    x_124 = x.e124
    x_123 = x.e123
    y_ = y.e
    y_4 = y.e4
    y_3 = y.e3
    y_34 = y.e34
    y_2 = y.e2
    y_24 = y.e24
    y_23 = y.e23
    y_234 = y.e234
    y_1 = y.e1
    y_14 = y.e14
    y_13 = y.e13
    y_134 = y.e134
    y_12 = y.e12
    y_124 = y.e124
    y_123 = y.e123
    y_1234 = y.e1234
    ret_234 = (*)(x_234, y_)
    ret_134 = (*)(x_134, y_)
    ret_124 = (*)(x_124, y_)
    ret_123 = (*)(x_123, y_)
    ret_1234 = (+)((*)(x_123, y_4), (*)(x_134, y_2), (*)(-1, x_124, y_3), (*)(-1, x_234, y_1))
    return MultiVectorAll(; e234 = ret_234, e134 = ret_134, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function wedge(x::MultiVector3, y::MultiVectorEven)
    x_234 = x.e234
    x_134 = x.e134
    x_124 = x.e124
    x_123 = x.e123
    y_ = y.e
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    y_1234 = y.e1234
    ret_234 = (*)(x_234, y_)
    ret_134 = (*)(x_134, y_)
    ret_124 = (*)(x_124, y_)
    ret_123 = (*)(x_123, y_)
    return MultiVector3(; e234 = ret_234, e134 = ret_134, e124 = ret_124, e123 = ret_123)
end
function wedge(x::MultiVector3, y::MultiVector0)
    x_234 = x.e234
    x_134 = x.e134
    x_124 = x.e124
    x_123 = x.e123
    y_ = y.e
    ret_234 = (*)(x_234, y_)
    ret_134 = (*)(x_134, y_)
    ret_124 = (*)(x_124, y_)
    ret_123 = (*)(x_123, y_)
    return MultiVector3(; e234 = ret_234, e134 = ret_134, e124 = ret_124, e123 = ret_123)
end
function wedge(x::MultiVector3, y::MultiVector1)
    x_234 = x.e234
    x_134 = x.e134
    x_124 = x.e124
    x_123 = x.e123
    y_4 = y.e4
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    ret_1234 = (+)((*)(x_123, y_4), (*)(x_134, y_2), (*)(-1, x_124, y_3), (*)(-1, x_234, y_1))
    return MultiVector4(; e1234 = ret_1234)
end
function wedge(x::MultiVector3, y::MultiVector2)
    return MultiVectorZero(; )
end
function wedge(x::MultiVector3, y::MultiVector3)
    return MultiVectorZero(; )
end
function wedge(x::MultiVector3, y::MultiVector4)
    return MultiVectorZero(; )
end
function wedge(x::MultiVector3, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function wedge(x::MultiVector4, y::MultiVectorAll)
    x_1234 = x.e1234
    y_ = y.e
    y_4 = y.e4
    y_3 = y.e3
    y_34 = y.e34
    y_2 = y.e2
    y_24 = y.e24
    y_23 = y.e23
    y_234 = y.e234
    y_1 = y.e1
    y_14 = y.e14
    y_13 = y.e13
    y_134 = y.e134
    y_12 = y.e12
    y_124 = y.e124
    y_123 = y.e123
    y_1234 = y.e1234
    ret_1234 = (*)(x_1234, y_)
    return MultiVector4(; e1234 = ret_1234)
end
function wedge(x::MultiVector4, y::MultiVectorEven)
    x_1234 = x.e1234
    y_ = y.e
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    y_1234 = y.e1234
    ret_1234 = (*)(x_1234, y_)
    return MultiVector4(; e1234 = ret_1234)
end
function wedge(x::MultiVector4, y::MultiVector0)
    x_1234 = x.e1234
    y_ = y.e
    ret_1234 = (*)(x_1234, y_)
    return MultiVector4(; e1234 = ret_1234)
end
function wedge(x::MultiVector4, y::MultiVector1)
    return MultiVectorZero(; )
end
function wedge(x::MultiVector4, y::MultiVector2)
    return MultiVectorZero(; )
end
function wedge(x::MultiVector4, y::MultiVector3)
    return MultiVectorZero(; )
end
function wedge(x::MultiVector4, y::MultiVector4)
    return MultiVectorZero(; )
end
function wedge(x::MultiVector4, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function wedge(x::MultiVectorZero, y::MultiVectorAll)
    return MultiVectorZero(; )
end
function wedge(x::MultiVectorZero, y::MultiVectorEven)
    return MultiVectorZero(; )
end
function wedge(x::MultiVectorZero, y::MultiVector0)
    return MultiVectorZero(; )
end
function wedge(x::MultiVectorZero, y::MultiVector1)
    return MultiVectorZero(; )
end
function wedge(x::MultiVectorZero, y::MultiVector2)
    return MultiVectorZero(; )
end
function wedge(x::MultiVectorZero, y::MultiVector3)
    return MultiVectorZero(; )
end
function wedge(x::MultiVectorZero, y::MultiVector4)
    return MultiVectorZero(; )
end
function wedge(x::MultiVectorZero, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function sandwich(x::MultiVectorAll, y::MultiVectorAll)
    x_ = x.e
    x_4 = x.e4
    x_3 = x.e3
    x_34 = x.e34
    x_2 = x.e2
    x_24 = x.e24
    x_23 = x.e23
    x_234 = x.e234
    x_1 = x.e1
    x_14 = x.e14
    x_13 = x.e13
    x_134 = x.e134
    x_12 = x.e12
    x_124 = x.e124
    x_123 = x.e123
    x_1234 = x.e1234
    y_ = y.e
    y_4 = y.e4
    y_3 = y.e3
    y_34 = y.e34
    y_2 = y.e2
    y_24 = y.e24
    y_23 = y.e23
    y_234 = y.e234
    y_1 = y.e1
    y_14 = y.e14
    y_13 = y.e13
    y_134 = y.e134
    y_12 = y.e12
    y_124 = y.e124
    y_123 = y.e123
    y_1234 = y.e1234
    ret_ = (+)((*)(y_, (+)((*)(x_, y_), (*)(x_1, y_1), (*)(x_12, y_12), (*)(x_123, y_123), (*)(x_13, y_13), (*)(x_2, y_2), (*)(x_23, y_23), (*)(x_3, y_3))), (*)(y_1, (+)((*)(x_, y_1), (*)(x_1, y_), (*)(x_123, y_23), (*)(x_23, y_123), (*)(-1, x_12, y_2), (*)(-1, x_13, y_3), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))), (*)(y_2, (+)((*)(x_, y_2), (*)(x_1, y_12), (*)(x_12, y_1), (*)(x_2, y_), (*)(-1, x_123, y_13), (*)(-1, x_13, y_123), (*)(-1, x_23, y_3), (*)(-1, x_3, y_23))), (*)(y_3, (+)((*)(x_, y_3), (*)(x_1, y_13), (*)(x_12, y_123), (*)(x_123, y_12), (*)(x_13, y_1), (*)(x_2, y_23), (*)(x_23, y_2), (*)(x_3, y_))), (*)(-1, y_12, (+)((*)(x_12, y_), (*)(x_123, y_3), (*)(x_2, y_1), (*)(x_23, y_13), (*)(-1, x_, y_12), (*)(-1, x_1, y_2), (*)(-1, x_13, y_23), (*)(-1, x_3, y_123))), (*)(-1, y_123, (+)((*)(x_12, y_3), (*)(x_123, y_), (*)(x_2, y_13), (*)(x_23, y_1), (*)(-1, x_, y_123), (*)(-1, x_1, y_23), (*)(-1, x_13, y_2), (*)(-1, x_3, y_12))), (*)(-1, y_13, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(x_2, y_123), (*)(x_3, y_1), (*)(-1, x_, y_13), (*)(-1, x_1, y_3), (*)(-1, x_123, y_2), (*)(-1, x_23, y_12))), (*)(-1, y_23, (+)((*)(x_123, y_1), (*)(x_13, y_12), (*)(x_23, y_), (*)(x_3, y_2), (*)(-1, x_, y_23), (*)(-1, x_1, y_123), (*)(-1, x_12, y_13), (*)(-1, x_2, y_3))))
    ret_4 = (+)((*)(y_, (+)((*)(x_, y_4), (*)(x_1, y_14), (*)(x_12, y_124), (*)(x_123, y_1234), (*)(x_1234, y_123), (*)(x_124, y_12), (*)(x_13, y_134), (*)(x_134, y_13), (*)(x_14, y_1), (*)(x_2, y_24), (*)(x_23, y_234), (*)(x_234, y_23), (*)(x_24, y_2), (*)(x_3, y_34), (*)(x_34, y_3), (*)(x_4, y_))), (*)(y_123, (+)((*)(x_, y_1234), (*)(x_1, y_234), (*)(x_1234, y_), (*)(x_124, y_3), (*)(x_13, y_24), (*)(x_234, y_1), (*)(x_24, y_13), (*)(x_3, y_124), (*)(-1, x_12, y_34), (*)(-1, x_123, y_4), (*)(-1, x_134, y_2), (*)(-1, x_14, y_23), (*)(-1, x_2, y_134), (*)(-1, x_23, y_14), (*)(-1, x_34, y_12), (*)(-1, x_4, y_123))), (*)(y_14, (+)((*)(x_, y_1), (*)(x_1, y_), (*)(x_123, y_23), (*)(x_23, y_123), (*)(-1, x_12, y_2), (*)(-1, x_13, y_3), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))), (*)(y_24, (+)((*)(x_, y_2), (*)(x_1, y_12), (*)(x_12, y_1), (*)(x_2, y_), (*)(-1, x_123, y_13), (*)(-1, x_13, y_123), (*)(-1, x_23, y_3), (*)(-1, x_3, y_23))), (*)(y_34, (+)((*)(x_, y_3), (*)(x_1, y_13), (*)(x_12, y_123), (*)(x_123, y_12), (*)(x_13, y_1), (*)(x_2, y_23), (*)(x_23, y_2), (*)(x_3, y_))), (*)(y_4, (+)((*)(x_, y_), (*)(x_1, y_1), (*)(x_12, y_12), (*)(x_123, y_123), (*)(x_13, y_13), (*)(x_2, y_2), (*)(x_23, y_23), (*)(x_3, y_3))), (*)(-1, y_1, (+)((*)(x_12, y_24), (*)(x_1234, y_23), (*)(x_13, y_34), (*)(x_14, y_), (*)(x_2, y_124), (*)(x_234, y_123), (*)(x_3, y_134), (*)(x_4, y_1), (*)(-1, x_, y_14), (*)(-1, x_1, y_4), (*)(-1, x_123, y_234), (*)(-1, x_124, y_2), (*)(-1, x_134, y_3), (*)(-1, x_23, y_1234), (*)(-1, x_24, y_12), (*)(-1, x_34, y_13))), (*)(-1, y_12, (+)((*)(x_12, y_4), (*)(x_123, y_34), (*)(x_1234, y_3), (*)(x_124, y_), (*)(x_2, y_14), (*)(x_23, y_134), (*)(x_234, y_13), (*)(x_24, y_1), (*)(-1, x_, y_124), (*)(-1, x_1, y_24), (*)(-1, x_13, y_234), (*)(-1, x_134, y_23), (*)(-1, x_14, y_2), (*)(-1, x_3, y_1234), (*)(-1, x_34, y_123), (*)(-1, x_4, y_12))), (*)(-1, y_1234, (+)((*)(x_12, y_3), (*)(x_123, y_), (*)(x_2, y_13), (*)(x_23, y_1), (*)(-1, x_, y_123), (*)(-1, x_1, y_23), (*)(-1, x_13, y_2), (*)(-1, x_3, y_12))), (*)(-1, y_124, (+)((*)(x_12, y_), (*)(x_123, y_3), (*)(x_2, y_1), (*)(x_23, y_13), (*)(-1, x_, y_12), (*)(-1, x_1, y_2), (*)(-1, x_13, y_23), (*)(-1, x_3, y_123))), (*)(-1, y_13, (+)((*)(x_12, y_234), (*)(x_124, y_23), (*)(x_13, y_4), (*)(x_134, y_), (*)(x_2, y_1234), (*)(x_24, y_123), (*)(x_3, y_14), (*)(x_34, y_1), (*)(-1, x_, y_134), (*)(-1, x_1, y_34), (*)(-1, x_123, y_24), (*)(-1, x_1234, y_2), (*)(-1, x_14, y_3), (*)(-1, x_23, y_124), (*)(-1, x_234, y_12), (*)(-1, x_4, y_13))), (*)(-1, y_134, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(x_2, y_123), (*)(x_3, y_1), (*)(-1, x_, y_13), (*)(-1, x_1, y_3), (*)(-1, x_123, y_2), (*)(-1, x_23, y_12))), (*)(-1, y_2, (+)((*)(x_123, y_134), (*)(x_124, y_1), (*)(x_13, y_1234), (*)(x_14, y_12), (*)(x_23, y_34), (*)(x_24, y_), (*)(x_3, y_234), (*)(x_4, y_2), (*)(-1, x_, y_24), (*)(-1, x_1, y_124), (*)(-1, x_12, y_14), (*)(-1, x_1234, y_13), (*)(-1, x_134, y_123), (*)(-1, x_2, y_4), (*)(-1, x_234, y_3), (*)(-1, x_34, y_23))), (*)(-1, y_23, (+)((*)(x_123, y_14), (*)(x_1234, y_1), (*)(x_13, y_124), (*)(x_134, y_12), (*)(x_23, y_4), (*)(x_234, y_), (*)(x_3, y_24), (*)(x_34, y_2), (*)(-1, x_, y_234), (*)(-1, x_1, y_1234), (*)(-1, x_12, y_134), (*)(-1, x_124, y_13), (*)(-1, x_14, y_123), (*)(-1, x_2, y_34), (*)(-1, x_24, y_3), (*)(-1, x_4, y_23))), (*)(-1, y_234, (+)((*)(x_123, y_1), (*)(x_13, y_12), (*)(x_23, y_), (*)(x_3, y_2), (*)(-1, x_, y_23), (*)(-1, x_1, y_123), (*)(-1, x_12, y_13), (*)(-1, x_2, y_3))), (*)(-1, y_3, (+)((*)(x_1234, y_12), (*)(x_124, y_123), (*)(x_134, y_1), (*)(x_14, y_13), (*)(x_234, y_2), (*)(x_24, y_23), (*)(x_34, y_), (*)(x_4, y_3), (*)(-1, x_, y_34), (*)(-1, x_1, y_134), (*)(-1, x_12, y_1234), (*)(-1, x_123, y_124), (*)(-1, x_13, y_14), (*)(-1, x_2, y_234), (*)(-1, x_23, y_24), (*)(-1, x_3, y_4))))
    ret_3 = (+)((*)(y_, (+)((*)(x_, y_3), (*)(x_1, y_13), (*)(x_12, y_123), (*)(x_123, y_12), (*)(x_13, y_1), (*)(x_2, y_23), (*)(x_23, y_2), (*)(x_3, y_))), (*)(y_13, (+)((*)(x_, y_1), (*)(x_1, y_), (*)(x_123, y_23), (*)(x_23, y_123), (*)(-1, x_12, y_2), (*)(-1, x_13, y_3), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))), (*)(y_23, (+)((*)(x_, y_2), (*)(x_1, y_12), (*)(x_12, y_1), (*)(x_2, y_), (*)(-1, x_123, y_13), (*)(-1, x_13, y_123), (*)(-1, x_23, y_3), (*)(-1, x_3, y_23))), (*)(y_3, (+)((*)(x_, y_), (*)(x_1, y_1), (*)(x_12, y_12), (*)(x_123, y_123), (*)(x_13, y_13), (*)(x_2, y_2), (*)(x_23, y_23), (*)(x_3, y_3))), (*)(-1, y_1, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(x_2, y_123), (*)(x_3, y_1), (*)(-1, x_, y_13), (*)(-1, x_1, y_3), (*)(-1, x_123, y_2), (*)(-1, x_23, y_12))), (*)(-1, y_12, (+)((*)(x_12, y_3), (*)(x_123, y_), (*)(x_2, y_13), (*)(x_23, y_1), (*)(-1, x_, y_123), (*)(-1, x_1, y_23), (*)(-1, x_13, y_2), (*)(-1, x_3, y_12))), (*)(-1, y_123, (+)((*)(x_12, y_), (*)(x_123, y_3), (*)(x_2, y_1), (*)(x_23, y_13), (*)(-1, x_, y_12), (*)(-1, x_1, y_2), (*)(-1, x_13, y_23), (*)(-1, x_3, y_123))), (*)(-1, y_2, (+)((*)(x_123, y_1), (*)(x_13, y_12), (*)(x_23, y_), (*)(x_3, y_2), (*)(-1, x_, y_23), (*)(-1, x_1, y_123), (*)(-1, x_12, y_13), (*)(-1, x_2, y_3))))
    ret_34 = (+)((*)(y_, (+)((*)(x_1234, y_12), (*)(x_124, y_123), (*)(x_134, y_1), (*)(x_14, y_13), (*)(x_234, y_2), (*)(x_24, y_23), (*)(x_34, y_), (*)(x_4, y_3), (*)(-1, x_, y_34), (*)(-1, x_1, y_134), (*)(-1, x_12, y_1234), (*)(-1, x_123, y_124), (*)(-1, x_13, y_14), (*)(-1, x_2, y_234), (*)(-1, x_23, y_24), (*)(-1, x_3, y_4))), (*)(y_1, (+)((*)(x_12, y_234), (*)(x_124, y_23), (*)(x_13, y_4), (*)(x_134, y_), (*)(x_2, y_1234), (*)(x_24, y_123), (*)(x_3, y_14), (*)(x_34, y_1), (*)(-1, x_, y_134), (*)(-1, x_1, y_34), (*)(-1, x_123, y_24), (*)(-1, x_1234, y_2), (*)(-1, x_14, y_3), (*)(-1, x_23, y_124), (*)(-1, x_234, y_12), (*)(-1, x_4, y_13))), (*)(y_123, (+)((*)(x_12, y_4), (*)(x_123, y_34), (*)(x_1234, y_3), (*)(x_124, y_), (*)(x_2, y_14), (*)(x_23, y_134), (*)(x_234, y_13), (*)(x_24, y_1), (*)(-1, x_, y_124), (*)(-1, x_1, y_24), (*)(-1, x_13, y_234), (*)(-1, x_134, y_23), (*)(-1, x_14, y_2), (*)(-1, x_3, y_1234), (*)(-1, x_34, y_123), (*)(-1, x_4, y_12))), (*)(y_13, (+)((*)(x_12, y_24), (*)(x_1234, y_23), (*)(x_13, y_34), (*)(x_14, y_), (*)(x_2, y_124), (*)(x_234, y_123), (*)(x_3, y_134), (*)(x_4, y_1), (*)(-1, x_, y_14), (*)(-1, x_1, y_4), (*)(-1, x_123, y_234), (*)(-1, x_124, y_2), (*)(-1, x_134, y_3), (*)(-1, x_23, y_1234), (*)(-1, x_24, y_12), (*)(-1, x_34, y_13))), (*)(y_134, (+)((*)(x_, y_1), (*)(x_1, y_), (*)(x_123, y_23), (*)(x_23, y_123), (*)(-1, x_12, y_2), (*)(-1, x_13, y_3), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))), (*)(y_2, (+)((*)(x_123, y_14), (*)(x_1234, y_1), (*)(x_13, y_124), (*)(x_134, y_12), (*)(x_23, y_4), (*)(x_234, y_), (*)(x_3, y_24), (*)(x_34, y_2), (*)(-1, x_, y_234), (*)(-1, x_1, y_1234), (*)(-1, x_12, y_134), (*)(-1, x_124, y_13), (*)(-1, x_14, y_123), (*)(-1, x_2, y_34), (*)(-1, x_24, y_3), (*)(-1, x_4, y_23))), (*)(y_23, (+)((*)(x_123, y_134), (*)(x_124, y_1), (*)(x_13, y_1234), (*)(x_14, y_12), (*)(x_23, y_34), (*)(x_24, y_), (*)(x_3, y_234), (*)(x_4, y_2), (*)(-1, x_, y_24), (*)(-1, x_1, y_124), (*)(-1, x_12, y_14), (*)(-1, x_1234, y_13), (*)(-1, x_134, y_123), (*)(-1, x_2, y_4), (*)(-1, x_234, y_3), (*)(-1, x_34, y_23))), (*)(y_234, (+)((*)(x_, y_2), (*)(x_1, y_12), (*)(x_12, y_1), (*)(x_2, y_), (*)(-1, x_123, y_13), (*)(-1, x_13, y_123), (*)(-1, x_23, y_3), (*)(-1, x_3, y_23))), (*)(y_34, (+)((*)(x_, y_), (*)(x_1, y_1), (*)(x_12, y_12), (*)(x_123, y_123), (*)(x_13, y_13), (*)(x_2, y_2), (*)(x_23, y_23), (*)(x_3, y_3))), (*)(y_4, (+)((*)(x_, y_3), (*)(x_1, y_13), (*)(x_12, y_123), (*)(x_123, y_12), (*)(x_13, y_1), (*)(x_2, y_23), (*)(x_23, y_2), (*)(x_3, y_))), (*)(-1, y_12, (+)((*)(x_, y_1234), (*)(x_1, y_234), (*)(x_1234, y_), (*)(x_124, y_3), (*)(x_13, y_24), (*)(x_234, y_1), (*)(x_24, y_13), (*)(x_3, y_124), (*)(-1, x_12, y_34), (*)(-1, x_123, y_4), (*)(-1, x_134, y_2), (*)(-1, x_14, y_23), (*)(-1, x_2, y_134), (*)(-1, x_23, y_14), (*)(-1, x_34, y_12), (*)(-1, x_4, y_123))), (*)(-1, y_1234, (+)((*)(x_12, y_), (*)(x_123, y_3), (*)(x_2, y_1), (*)(x_23, y_13), (*)(-1, x_, y_12), (*)(-1, x_1, y_2), (*)(-1, x_13, y_23), (*)(-1, x_3, y_123))), (*)(-1, y_124, (+)((*)(x_12, y_3), (*)(x_123, y_), (*)(x_2, y_13), (*)(x_23, y_1), (*)(-1, x_, y_123), (*)(-1, x_1, y_23), (*)(-1, x_13, y_2), (*)(-1, x_3, y_12))), (*)(-1, y_14, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(x_2, y_123), (*)(x_3, y_1), (*)(-1, x_, y_13), (*)(-1, x_1, y_3), (*)(-1, x_123, y_2), (*)(-1, x_23, y_12))), (*)(-1, y_24, (+)((*)(x_123, y_1), (*)(x_13, y_12), (*)(x_23, y_), (*)(x_3, y_2), (*)(-1, x_, y_23), (*)(-1, x_1, y_123), (*)(-1, x_12, y_13), (*)(-1, x_2, y_3))), (*)(-1, y_3, (+)((*)(x_, y_4), (*)(x_1, y_14), (*)(x_12, y_124), (*)(x_123, y_1234), (*)(x_1234, y_123), (*)(x_124, y_12), (*)(x_13, y_134), (*)(x_134, y_13), (*)(x_14, y_1), (*)(x_2, y_24), (*)(x_23, y_234), (*)(x_234, y_23), (*)(x_24, y_2), (*)(x_3, y_34), (*)(x_34, y_3), (*)(x_4, y_))))
    ret_2 = (+)((*)(y_, (+)((*)(x_, y_2), (*)(x_1, y_12), (*)(x_12, y_1), (*)(x_2, y_), (*)(-1, x_123, y_13), (*)(-1, x_13, y_123), (*)(-1, x_23, y_3), (*)(-1, x_3, y_23))), (*)(y_12, (+)((*)(x_, y_1), (*)(x_1, y_), (*)(x_123, y_23), (*)(x_23, y_123), (*)(-1, x_12, y_2), (*)(-1, x_13, y_3), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))), (*)(y_123, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(x_2, y_123), (*)(x_3, y_1), (*)(-1, x_, y_13), (*)(-1, x_1, y_3), (*)(-1, x_123, y_2), (*)(-1, x_23, y_12))), (*)(y_13, (+)((*)(x_12, y_3), (*)(x_123, y_), (*)(x_2, y_13), (*)(x_23, y_1), (*)(-1, x_, y_123), (*)(-1, x_1, y_23), (*)(-1, x_13, y_2), (*)(-1, x_3, y_12))), (*)(y_2, (+)((*)(x_, y_), (*)(x_1, y_1), (*)(x_12, y_12), (*)(x_123, y_123), (*)(x_13, y_13), (*)(x_2, y_2), (*)(x_23, y_23), (*)(x_3, y_3))), (*)(y_3, (+)((*)(x_123, y_1), (*)(x_13, y_12), (*)(x_23, y_), (*)(x_3, y_2), (*)(-1, x_, y_23), (*)(-1, x_1, y_123), (*)(-1, x_12, y_13), (*)(-1, x_2, y_3))), (*)(-1, y_1, (+)((*)(x_12, y_), (*)(x_123, y_3), (*)(x_2, y_1), (*)(x_23, y_13), (*)(-1, x_, y_12), (*)(-1, x_1, y_2), (*)(-1, x_13, y_23), (*)(-1, x_3, y_123))), (*)(-1, y_23, (+)((*)(x_, y_3), (*)(x_1, y_13), (*)(x_12, y_123), (*)(x_123, y_12), (*)(x_13, y_1), (*)(x_2, y_23), (*)(x_23, y_2), (*)(x_3, y_))))
    ret_24 = (+)((*)(y_, (+)((*)(x_123, y_134), (*)(x_124, y_1), (*)(x_13, y_1234), (*)(x_14, y_12), (*)(x_23, y_34), (*)(x_24, y_), (*)(x_3, y_234), (*)(x_4, y_2), (*)(-1, x_, y_24), (*)(-1, x_1, y_124), (*)(-1, x_12, y_14), (*)(-1, x_1234, y_13), (*)(-1, x_134, y_123), (*)(-1, x_2, y_4), (*)(-1, x_234, y_3), (*)(-1, x_34, y_23))), (*)(y_1, (+)((*)(x_12, y_4), (*)(x_123, y_34), (*)(x_1234, y_3), (*)(x_124, y_), (*)(x_2, y_14), (*)(x_23, y_134), (*)(x_234, y_13), (*)(x_24, y_1), (*)(-1, x_, y_124), (*)(-1, x_1, y_24), (*)(-1, x_13, y_234), (*)(-1, x_134, y_23), (*)(-1, x_14, y_2), (*)(-1, x_3, y_1234), (*)(-1, x_34, y_123), (*)(-1, x_4, y_12))), (*)(y_12, (+)((*)(x_12, y_24), (*)(x_1234, y_23), (*)(x_13, y_34), (*)(x_14, y_), (*)(x_2, y_124), (*)(x_234, y_123), (*)(x_3, y_134), (*)(x_4, y_1), (*)(-1, x_, y_14), (*)(-1, x_1, y_4), (*)(-1, x_123, y_234), (*)(-1, x_124, y_2), (*)(-1, x_134, y_3), (*)(-1, x_23, y_1234), (*)(-1, x_24, y_12), (*)(-1, x_34, y_13))), (*)(y_1234, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(x_2, y_123), (*)(x_3, y_1), (*)(-1, x_, y_13), (*)(-1, x_1, y_3), (*)(-1, x_123, y_2), (*)(-1, x_23, y_12))), (*)(y_124, (+)((*)(x_, y_1), (*)(x_1, y_), (*)(x_123, y_23), (*)(x_23, y_123), (*)(-1, x_12, y_2), (*)(-1, x_13, y_3), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))), (*)(y_13, (+)((*)(x_, y_1234), (*)(x_1, y_234), (*)(x_1234, y_), (*)(x_124, y_3), (*)(x_13, y_24), (*)(x_234, y_1), (*)(x_24, y_13), (*)(x_3, y_124), (*)(-1, x_12, y_34), (*)(-1, x_123, y_4), (*)(-1, x_134, y_2), (*)(-1, x_14, y_23), (*)(-1, x_2, y_134), (*)(-1, x_23, y_14), (*)(-1, x_34, y_12), (*)(-1, x_4, y_123))), (*)(y_134, (+)((*)(x_12, y_3), (*)(x_123, y_), (*)(x_2, y_13), (*)(x_23, y_1), (*)(-1, x_, y_123), (*)(-1, x_1, y_23), (*)(-1, x_13, y_2), (*)(-1, x_3, y_12))), (*)(y_24, (+)((*)(x_, y_), (*)(x_1, y_1), (*)(x_12, y_12), (*)(x_123, y_123), (*)(x_13, y_13), (*)(x_2, y_2), (*)(x_23, y_23), (*)(x_3, y_3))), (*)(y_34, (+)((*)(x_123, y_1), (*)(x_13, y_12), (*)(x_23, y_), (*)(x_3, y_2), (*)(-1, x_, y_23), (*)(-1, x_1, y_123), (*)(-1, x_12, y_13), (*)(-1, x_2, y_3))), (*)(y_4, (+)((*)(x_, y_2), (*)(x_1, y_12), (*)(x_12, y_1), (*)(x_2, y_), (*)(-1, x_123, y_13), (*)(-1, x_13, y_123), (*)(-1, x_23, y_3), (*)(-1, x_3, y_23))), (*)(-1, y_123, (+)((*)(x_12, y_234), (*)(x_124, y_23), (*)(x_13, y_4), (*)(x_134, y_), (*)(x_2, y_1234), (*)(x_24, y_123), (*)(x_3, y_14), (*)(x_34, y_1), (*)(-1, x_, y_134), (*)(-1, x_1, y_34), (*)(-1, x_123, y_24), (*)(-1, x_1234, y_2), (*)(-1, x_14, y_3), (*)(-1, x_23, y_124), (*)(-1, x_234, y_12), (*)(-1, x_4, y_13))), (*)(-1, y_14, (+)((*)(x_12, y_), (*)(x_123, y_3), (*)(x_2, y_1), (*)(x_23, y_13), (*)(-1, x_, y_12), (*)(-1, x_1, y_2), (*)(-1, x_13, y_23), (*)(-1, x_3, y_123))), (*)(-1, y_2, (+)((*)(x_, y_4), (*)(x_1, y_14), (*)(x_12, y_124), (*)(x_123, y_1234), (*)(x_1234, y_123), (*)(x_124, y_12), (*)(x_13, y_134), (*)(x_134, y_13), (*)(x_14, y_1), (*)(x_2, y_24), (*)(x_23, y_234), (*)(x_234, y_23), (*)(x_24, y_2), (*)(x_3, y_34), (*)(x_34, y_3), (*)(x_4, y_))), (*)(-1, y_23, (+)((*)(x_1234, y_12), (*)(x_124, y_123), (*)(x_134, y_1), (*)(x_14, y_13), (*)(x_234, y_2), (*)(x_24, y_23), (*)(x_34, y_), (*)(x_4, y_3), (*)(-1, x_, y_34), (*)(-1, x_1, y_134), (*)(-1, x_12, y_1234), (*)(-1, x_123, y_124), (*)(-1, x_13, y_14), (*)(-1, x_2, y_234), (*)(-1, x_23, y_24), (*)(-1, x_3, y_4))), (*)(-1, y_234, (+)((*)(x_, y_3), (*)(x_1, y_13), (*)(x_12, y_123), (*)(x_123, y_12), (*)(x_13, y_1), (*)(x_2, y_23), (*)(x_23, y_2), (*)(x_3, y_))), (*)(-1, y_3, (+)((*)(x_123, y_14), (*)(x_1234, y_1), (*)(x_13, y_124), (*)(x_134, y_12), (*)(x_23, y_4), (*)(x_234, y_), (*)(x_3, y_24), (*)(x_34, y_2), (*)(-1, x_, y_234), (*)(-1, x_1, y_1234), (*)(-1, x_12, y_134), (*)(-1, x_124, y_13), (*)(-1, x_14, y_123), (*)(-1, x_2, y_34), (*)(-1, x_24, y_3), (*)(-1, x_4, y_23))))
    ret_23 = (+)((*)(y_, (+)((*)(x_123, y_1), (*)(x_13, y_12), (*)(x_23, y_), (*)(x_3, y_2), (*)(-1, x_, y_23), (*)(-1, x_1, y_123), (*)(-1, x_12, y_13), (*)(-1, x_2, y_3))), (*)(y_1, (+)((*)(x_12, y_3), (*)(x_123, y_), (*)(x_2, y_13), (*)(x_23, y_1), (*)(-1, x_, y_123), (*)(-1, x_1, y_23), (*)(-1, x_13, y_2), (*)(-1, x_3, y_12))), (*)(y_12, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(x_2, y_123), (*)(x_3, y_1), (*)(-1, x_, y_13), (*)(-1, x_1, y_3), (*)(-1, x_123, y_2), (*)(-1, x_23, y_12))), (*)(y_123, (+)((*)(x_, y_1), (*)(x_1, y_), (*)(x_123, y_23), (*)(x_23, y_123), (*)(-1, x_12, y_2), (*)(-1, x_13, y_3), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))), (*)(y_23, (+)((*)(x_, y_), (*)(x_1, y_1), (*)(x_12, y_12), (*)(x_123, y_123), (*)(x_13, y_13), (*)(x_2, y_2), (*)(x_23, y_23), (*)(x_3, y_3))), (*)(y_3, (+)((*)(x_, y_2), (*)(x_1, y_12), (*)(x_12, y_1), (*)(x_2, y_), (*)(-1, x_123, y_13), (*)(-1, x_13, y_123), (*)(-1, x_23, y_3), (*)(-1, x_3, y_23))), (*)(-1, y_13, (+)((*)(x_12, y_), (*)(x_123, y_3), (*)(x_2, y_1), (*)(x_23, y_13), (*)(-1, x_, y_12), (*)(-1, x_1, y_2), (*)(-1, x_13, y_23), (*)(-1, x_3, y_123))), (*)(-1, y_2, (+)((*)(x_, y_3), (*)(x_1, y_13), (*)(x_12, y_123), (*)(x_123, y_12), (*)(x_13, y_1), (*)(x_2, y_23), (*)(x_23, y_2), (*)(x_3, y_))))
    ret_234 = (+)((*)(y_, (+)((*)(x_123, y_14), (*)(x_1234, y_1), (*)(x_13, y_124), (*)(x_134, y_12), (*)(x_23, y_4), (*)(x_234, y_), (*)(x_3, y_24), (*)(x_34, y_2), (*)(-1, x_, y_234), (*)(-1, x_1, y_1234), (*)(-1, x_12, y_134), (*)(-1, x_124, y_13), (*)(-1, x_14, y_123), (*)(-1, x_2, y_34), (*)(-1, x_24, y_3), (*)(-1, x_4, y_23))), (*)(y_12, (+)((*)(x_12, y_234), (*)(x_124, y_23), (*)(x_13, y_4), (*)(x_134, y_), (*)(x_2, y_1234), (*)(x_24, y_123), (*)(x_3, y_14), (*)(x_34, y_1), (*)(-1, x_, y_134), (*)(-1, x_1, y_34), (*)(-1, x_123, y_24), (*)(-1, x_1234, y_2), (*)(-1, x_14, y_3), (*)(-1, x_23, y_124), (*)(-1, x_234, y_12), (*)(-1, x_4, y_13))), (*)(y_1234, (+)((*)(x_, y_1), (*)(x_1, y_), (*)(x_123, y_23), (*)(x_23, y_123), (*)(-1, x_12, y_2), (*)(-1, x_13, y_3), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))), (*)(y_124, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(x_2, y_123), (*)(x_3, y_1), (*)(-1, x_, y_13), (*)(-1, x_1, y_3), (*)(-1, x_123, y_2), (*)(-1, x_23, y_12))), (*)(y_14, (+)((*)(x_12, y_3), (*)(x_123, y_), (*)(x_2, y_13), (*)(x_23, y_1), (*)(-1, x_, y_123), (*)(-1, x_1, y_23), (*)(-1, x_13, y_2), (*)(-1, x_3, y_12))), (*)(y_2, (+)((*)(x_1234, y_12), (*)(x_124, y_123), (*)(x_134, y_1), (*)(x_14, y_13), (*)(x_234, y_2), (*)(x_24, y_23), (*)(x_34, y_), (*)(x_4, y_3), (*)(-1, x_, y_34), (*)(-1, x_1, y_134), (*)(-1, x_12, y_1234), (*)(-1, x_123, y_124), (*)(-1, x_13, y_14), (*)(-1, x_2, y_234), (*)(-1, x_23, y_24), (*)(-1, x_3, y_4))), (*)(y_23, (+)((*)(x_, y_4), (*)(x_1, y_14), (*)(x_12, y_124), (*)(x_123, y_1234), (*)(x_1234, y_123), (*)(x_124, y_12), (*)(x_13, y_134), (*)(x_134, y_13), (*)(x_14, y_1), (*)(x_2, y_24), (*)(x_23, y_234), (*)(x_234, y_23), (*)(x_24, y_2), (*)(x_3, y_34), (*)(x_34, y_3), (*)(x_4, y_))), (*)(y_234, (+)((*)(x_, y_), (*)(x_1, y_1), (*)(x_12, y_12), (*)(x_123, y_123), (*)(x_13, y_13), (*)(x_2, y_2), (*)(x_23, y_23), (*)(x_3, y_3))), (*)(y_34, (+)((*)(x_, y_2), (*)(x_1, y_12), (*)(x_12, y_1), (*)(x_2, y_), (*)(-1, x_123, y_13), (*)(-1, x_13, y_123), (*)(-1, x_23, y_3), (*)(-1, x_3, y_23))), (*)(y_4, (+)((*)(x_123, y_1), (*)(x_13, y_12), (*)(x_23, y_), (*)(x_3, y_2), (*)(-1, x_, y_23), (*)(-1, x_1, y_123), (*)(-1, x_12, y_13), (*)(-1, x_2, y_3))), (*)(-1, y_1, (+)((*)(x_, y_1234), (*)(x_1, y_234), (*)(x_1234, y_), (*)(x_124, y_3), (*)(x_13, y_24), (*)(x_234, y_1), (*)(x_24, y_13), (*)(x_3, y_124), (*)(-1, x_12, y_34), (*)(-1, x_123, y_4), (*)(-1, x_134, y_2), (*)(-1, x_14, y_23), (*)(-1, x_2, y_134), (*)(-1, x_23, y_14), (*)(-1, x_34, y_12), (*)(-1, x_4, y_123))), (*)(-1, y_123, (+)((*)(x_12, y_24), (*)(x_1234, y_23), (*)(x_13, y_34), (*)(x_14, y_), (*)(x_2, y_124), (*)(x_234, y_123), (*)(x_3, y_134), (*)(x_4, y_1), (*)(-1, x_, y_14), (*)(-1, x_1, y_4), (*)(-1, x_123, y_234), (*)(-1, x_124, y_2), (*)(-1, x_134, y_3), (*)(-1, x_23, y_1234), (*)(-1, x_24, y_12), (*)(-1, x_34, y_13))), (*)(-1, y_13, (+)((*)(x_12, y_4), (*)(x_123, y_34), (*)(x_1234, y_3), (*)(x_124, y_), (*)(x_2, y_14), (*)(x_23, y_134), (*)(x_234, y_13), (*)(x_24, y_1), (*)(-1, x_, y_124), (*)(-1, x_1, y_24), (*)(-1, x_13, y_234), (*)(-1, x_134, y_23), (*)(-1, x_14, y_2), (*)(-1, x_3, y_1234), (*)(-1, x_34, y_123), (*)(-1, x_4, y_12))), (*)(-1, y_134, (+)((*)(x_12, y_), (*)(x_123, y_3), (*)(x_2, y_1), (*)(x_23, y_13), (*)(-1, x_, y_12), (*)(-1, x_1, y_2), (*)(-1, x_13, y_23), (*)(-1, x_3, y_123))), (*)(-1, y_24, (+)((*)(x_, y_3), (*)(x_1, y_13), (*)(x_12, y_123), (*)(x_123, y_12), (*)(x_13, y_1), (*)(x_2, y_23), (*)(x_23, y_2), (*)(x_3, y_))), (*)(-1, y_3, (+)((*)(x_123, y_134), (*)(x_124, y_1), (*)(x_13, y_1234), (*)(x_14, y_12), (*)(x_23, y_34), (*)(x_24, y_), (*)(x_3, y_234), (*)(x_4, y_2), (*)(-1, x_, y_24), (*)(-1, x_1, y_124), (*)(-1, x_12, y_14), (*)(-1, x_1234, y_13), (*)(-1, x_134, y_123), (*)(-1, x_2, y_4), (*)(-1, x_234, y_3), (*)(-1, x_34, y_23))))
    ret_1 = (+)((*)(y_, (+)((*)(x_, y_1), (*)(x_1, y_), (*)(x_123, y_23), (*)(x_23, y_123), (*)(-1, x_12, y_2), (*)(-1, x_13, y_3), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))), (*)(y_1, (+)((*)(x_, y_), (*)(x_1, y_1), (*)(x_12, y_12), (*)(x_123, y_123), (*)(x_13, y_13), (*)(x_2, y_2), (*)(x_23, y_23), (*)(x_3, y_3))), (*)(y_2, (+)((*)(x_12, y_), (*)(x_123, y_3), (*)(x_2, y_1), (*)(x_23, y_13), (*)(-1, x_, y_12), (*)(-1, x_1, y_2), (*)(-1, x_13, y_23), (*)(-1, x_3, y_123))), (*)(y_3, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(x_2, y_123), (*)(x_3, y_1), (*)(-1, x_, y_13), (*)(-1, x_1, y_3), (*)(-1, x_123, y_2), (*)(-1, x_23, y_12))), (*)(-1, y_12, (+)((*)(x_, y_2), (*)(x_1, y_12), (*)(x_12, y_1), (*)(x_2, y_), (*)(-1, x_123, y_13), (*)(-1, x_13, y_123), (*)(-1, x_23, y_3), (*)(-1, x_3, y_23))), (*)(-1, y_123, (+)((*)(x_123, y_1), (*)(x_13, y_12), (*)(x_23, y_), (*)(x_3, y_2), (*)(-1, x_, y_23), (*)(-1, x_1, y_123), (*)(-1, x_12, y_13), (*)(-1, x_2, y_3))), (*)(-1, y_13, (+)((*)(x_, y_3), (*)(x_1, y_13), (*)(x_12, y_123), (*)(x_123, y_12), (*)(x_13, y_1), (*)(x_2, y_23), (*)(x_23, y_2), (*)(x_3, y_))), (*)(-1, y_23, (+)((*)(x_12, y_3), (*)(x_123, y_), (*)(x_2, y_13), (*)(x_23, y_1), (*)(-1, x_, y_123), (*)(-1, x_1, y_23), (*)(-1, x_13, y_2), (*)(-1, x_3, y_12))))
    ret_14 = (+)((*)(y_, (+)((*)(x_12, y_24), (*)(x_1234, y_23), (*)(x_13, y_34), (*)(x_14, y_), (*)(x_2, y_124), (*)(x_234, y_123), (*)(x_3, y_134), (*)(x_4, y_1), (*)(-1, x_, y_14), (*)(-1, x_1, y_4), (*)(-1, x_123, y_234), (*)(-1, x_124, y_2), (*)(-1, x_134, y_3), (*)(-1, x_23, y_1234), (*)(-1, x_24, y_12), (*)(-1, x_34, y_13))), (*)(y_123, (+)((*)(x_123, y_14), (*)(x_1234, y_1), (*)(x_13, y_124), (*)(x_134, y_12), (*)(x_23, y_4), (*)(x_234, y_), (*)(x_3, y_24), (*)(x_34, y_2), (*)(-1, x_, y_234), (*)(-1, x_1, y_1234), (*)(-1, x_12, y_134), (*)(-1, x_124, y_13), (*)(-1, x_14, y_123), (*)(-1, x_2, y_34), (*)(-1, x_24, y_3), (*)(-1, x_4, y_23))), (*)(y_14, (+)((*)(x_, y_), (*)(x_1, y_1), (*)(x_12, y_12), (*)(x_123, y_123), (*)(x_13, y_13), (*)(x_2, y_2), (*)(x_23, y_23), (*)(x_3, y_3))), (*)(y_24, (+)((*)(x_12, y_), (*)(x_123, y_3), (*)(x_2, y_1), (*)(x_23, y_13), (*)(-1, x_, y_12), (*)(-1, x_1, y_2), (*)(-1, x_13, y_23), (*)(-1, x_3, y_123))), (*)(y_34, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(x_2, y_123), (*)(x_3, y_1), (*)(-1, x_, y_13), (*)(-1, x_1, y_3), (*)(-1, x_123, y_2), (*)(-1, x_23, y_12))), (*)(y_4, (+)((*)(x_, y_1), (*)(x_1, y_), (*)(x_123, y_23), (*)(x_23, y_123), (*)(-1, x_12, y_2), (*)(-1, x_13, y_3), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))), (*)(-1, y_1, (+)((*)(x_, y_4), (*)(x_1, y_14), (*)(x_12, y_124), (*)(x_123, y_1234), (*)(x_1234, y_123), (*)(x_124, y_12), (*)(x_13, y_134), (*)(x_134, y_13), (*)(x_14, y_1), (*)(x_2, y_24), (*)(x_23, y_234), (*)(x_234, y_23), (*)(x_24, y_2), (*)(x_3, y_34), (*)(x_34, y_3), (*)(x_4, y_))), (*)(-1, y_12, (+)((*)(x_123, y_134), (*)(x_124, y_1), (*)(x_13, y_1234), (*)(x_14, y_12), (*)(x_23, y_34), (*)(x_24, y_), (*)(x_3, y_234), (*)(x_4, y_2), (*)(-1, x_, y_24), (*)(-1, x_1, y_124), (*)(-1, x_12, y_14), (*)(-1, x_1234, y_13), (*)(-1, x_134, y_123), (*)(-1, x_2, y_4), (*)(-1, x_234, y_3), (*)(-1, x_34, y_23))), (*)(-1, y_1234, (+)((*)(x_123, y_1), (*)(x_13, y_12), (*)(x_23, y_), (*)(x_3, y_2), (*)(-1, x_, y_23), (*)(-1, x_1, y_123), (*)(-1, x_12, y_13), (*)(-1, x_2, y_3))), (*)(-1, y_124, (+)((*)(x_, y_2), (*)(x_1, y_12), (*)(x_12, y_1), (*)(x_2, y_), (*)(-1, x_123, y_13), (*)(-1, x_13, y_123), (*)(-1, x_23, y_3), (*)(-1, x_3, y_23))), (*)(-1, y_13, (+)((*)(x_1234, y_12), (*)(x_124, y_123), (*)(x_134, y_1), (*)(x_14, y_13), (*)(x_234, y_2), (*)(x_24, y_23), (*)(x_34, y_), (*)(x_4, y_3), (*)(-1, x_, y_34), (*)(-1, x_1, y_134), (*)(-1, x_12, y_1234), (*)(-1, x_123, y_124), (*)(-1, x_13, y_14), (*)(-1, x_2, y_234), (*)(-1, x_23, y_24), (*)(-1, x_3, y_4))), (*)(-1, y_134, (+)((*)(x_, y_3), (*)(x_1, y_13), (*)(x_12, y_123), (*)(x_123, y_12), (*)(x_13, y_1), (*)(x_2, y_23), (*)(x_23, y_2), (*)(x_3, y_))), (*)(-1, y_2, (+)((*)(x_12, y_4), (*)(x_123, y_34), (*)(x_1234, y_3), (*)(x_124, y_), (*)(x_2, y_14), (*)(x_23, y_134), (*)(x_234, y_13), (*)(x_24, y_1), (*)(-1, x_, y_124), (*)(-1, x_1, y_24), (*)(-1, x_13, y_234), (*)(-1, x_134, y_23), (*)(-1, x_14, y_2), (*)(-1, x_3, y_1234), (*)(-1, x_34, y_123), (*)(-1, x_4, y_12))), (*)(-1, y_23, (+)((*)(x_, y_1234), (*)(x_1, y_234), (*)(x_1234, y_), (*)(x_124, y_3), (*)(x_13, y_24), (*)(x_234, y_1), (*)(x_24, y_13), (*)(x_3, y_124), (*)(-1, x_12, y_34), (*)(-1, x_123, y_4), (*)(-1, x_134, y_2), (*)(-1, x_14, y_23), (*)(-1, x_2, y_134), (*)(-1, x_23, y_14), (*)(-1, x_34, y_12), (*)(-1, x_4, y_123))), (*)(-1, y_234, (+)((*)(x_12, y_3), (*)(x_123, y_), (*)(x_2, y_13), (*)(x_23, y_1), (*)(-1, x_, y_123), (*)(-1, x_1, y_23), (*)(-1, x_13, y_2), (*)(-1, x_3, y_12))), (*)(-1, y_3, (+)((*)(x_12, y_234), (*)(x_124, y_23), (*)(x_13, y_4), (*)(x_134, y_), (*)(x_2, y_1234), (*)(x_24, y_123), (*)(x_3, y_14), (*)(x_34, y_1), (*)(-1, x_, y_134), (*)(-1, x_1, y_34), (*)(-1, x_123, y_24), (*)(-1, x_1234, y_2), (*)(-1, x_14, y_3), (*)(-1, x_23, y_124), (*)(-1, x_234, y_12), (*)(-1, x_4, y_13))))
    ret_13 = (+)((*)(y_, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(x_2, y_123), (*)(x_3, y_1), (*)(-1, x_, y_13), (*)(-1, x_1, y_3), (*)(-1, x_123, y_2), (*)(-1, x_23, y_12))), (*)(y_13, (+)((*)(x_, y_), (*)(x_1, y_1), (*)(x_12, y_12), (*)(x_123, y_123), (*)(x_13, y_13), (*)(x_2, y_2), (*)(x_23, y_23), (*)(x_3, y_3))), (*)(y_23, (+)((*)(x_12, y_), (*)(x_123, y_3), (*)(x_2, y_1), (*)(x_23, y_13), (*)(-1, x_, y_12), (*)(-1, x_1, y_2), (*)(-1, x_13, y_23), (*)(-1, x_3, y_123))), (*)(y_3, (+)((*)(x_, y_1), (*)(x_1, y_), (*)(x_123, y_23), (*)(x_23, y_123), (*)(-1, x_12, y_2), (*)(-1, x_13, y_3), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))), (*)(-1, y_1, (+)((*)(x_, y_3), (*)(x_1, y_13), (*)(x_12, y_123), (*)(x_123, y_12), (*)(x_13, y_1), (*)(x_2, y_23), (*)(x_23, y_2), (*)(x_3, y_))), (*)(-1, y_12, (+)((*)(x_123, y_1), (*)(x_13, y_12), (*)(x_23, y_), (*)(x_3, y_2), (*)(-1, x_, y_23), (*)(-1, x_1, y_123), (*)(-1, x_12, y_13), (*)(-1, x_2, y_3))), (*)(-1, y_123, (+)((*)(x_, y_2), (*)(x_1, y_12), (*)(x_12, y_1), (*)(x_2, y_), (*)(-1, x_123, y_13), (*)(-1, x_13, y_123), (*)(-1, x_23, y_3), (*)(-1, x_3, y_23))), (*)(-1, y_2, (+)((*)(x_12, y_3), (*)(x_123, y_), (*)(x_2, y_13), (*)(x_23, y_1), (*)(-1, x_, y_123), (*)(-1, x_1, y_23), (*)(-1, x_13, y_2), (*)(-1, x_3, y_12))))
    ret_134 = (+)((*)(y_, (+)((*)(x_12, y_234), (*)(x_124, y_23), (*)(x_13, y_4), (*)(x_134, y_), (*)(x_2, y_1234), (*)(x_24, y_123), (*)(x_3, y_14), (*)(x_34, y_1), (*)(-1, x_, y_134), (*)(-1, x_1, y_34), (*)(-1, x_123, y_24), (*)(-1, x_1234, y_2), (*)(-1, x_14, y_3), (*)(-1, x_23, y_124), (*)(-1, x_234, y_12), (*)(-1, x_4, y_13))), (*)(y_1, (+)((*)(x_1234, y_12), (*)(x_124, y_123), (*)(x_134, y_1), (*)(x_14, y_13), (*)(x_234, y_2), (*)(x_24, y_23), (*)(x_34, y_), (*)(x_4, y_3), (*)(-1, x_, y_34), (*)(-1, x_1, y_134), (*)(-1, x_12, y_1234), (*)(-1, x_123, y_124), (*)(-1, x_13, y_14), (*)(-1, x_2, y_234), (*)(-1, x_23, y_24), (*)(-1, x_3, y_4))), (*)(y_123, (+)((*)(x_123, y_134), (*)(x_124, y_1), (*)(x_13, y_1234), (*)(x_14, y_12), (*)(x_23, y_34), (*)(x_24, y_), (*)(x_3, y_234), (*)(x_4, y_2), (*)(-1, x_, y_24), (*)(-1, x_1, y_124), (*)(-1, x_12, y_14), (*)(-1, x_1234, y_13), (*)(-1, x_134, y_123), (*)(-1, x_2, y_4), (*)(-1, x_234, y_3), (*)(-1, x_34, y_23))), (*)(y_13, (+)((*)(x_, y_4), (*)(x_1, y_14), (*)(x_12, y_124), (*)(x_123, y_1234), (*)(x_1234, y_123), (*)(x_124, y_12), (*)(x_13, y_134), (*)(x_134, y_13), (*)(x_14, y_1), (*)(x_2, y_24), (*)(x_23, y_234), (*)(x_234, y_23), (*)(x_24, y_2), (*)(x_3, y_34), (*)(x_34, y_3), (*)(x_4, y_))), (*)(y_134, (+)((*)(x_, y_), (*)(x_1, y_1), (*)(x_12, y_12), (*)(x_123, y_123), (*)(x_13, y_13), (*)(x_2, y_2), (*)(x_23, y_23), (*)(x_3, y_3))), (*)(y_2, (+)((*)(x_, y_1234), (*)(x_1, y_234), (*)(x_1234, y_), (*)(x_124, y_3), (*)(x_13, y_24), (*)(x_234, y_1), (*)(x_24, y_13), (*)(x_3, y_124), (*)(-1, x_12, y_34), (*)(-1, x_123, y_4), (*)(-1, x_134, y_2), (*)(-1, x_14, y_23), (*)(-1, x_2, y_134), (*)(-1, x_23, y_14), (*)(-1, x_34, y_12), (*)(-1, x_4, y_123))), (*)(y_23, (+)((*)(x_12, y_4), (*)(x_123, y_34), (*)(x_1234, y_3), (*)(x_124, y_), (*)(x_2, y_14), (*)(x_23, y_134), (*)(x_234, y_13), (*)(x_24, y_1), (*)(-1, x_, y_124), (*)(-1, x_1, y_24), (*)(-1, x_13, y_234), (*)(-1, x_134, y_23), (*)(-1, x_14, y_2), (*)(-1, x_3, y_1234), (*)(-1, x_34, y_123), (*)(-1, x_4, y_12))), (*)(y_234, (+)((*)(x_12, y_), (*)(x_123, y_3), (*)(x_2, y_1), (*)(x_23, y_13), (*)(-1, x_, y_12), (*)(-1, x_1, y_2), (*)(-1, x_13, y_23), (*)(-1, x_3, y_123))), (*)(y_34, (+)((*)(x_, y_1), (*)(x_1, y_), (*)(x_123, y_23), (*)(x_23, y_123), (*)(-1, x_12, y_2), (*)(-1, x_13, y_3), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))), (*)(y_4, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(x_2, y_123), (*)(x_3, y_1), (*)(-1, x_, y_13), (*)(-1, x_1, y_3), (*)(-1, x_123, y_2), (*)(-1, x_23, y_12))), (*)(-1, y_12, (+)((*)(x_123, y_14), (*)(x_1234, y_1), (*)(x_13, y_124), (*)(x_134, y_12), (*)(x_23, y_4), (*)(x_234, y_), (*)(x_3, y_24), (*)(x_34, y_2), (*)(-1, x_, y_234), (*)(-1, x_1, y_1234), (*)(-1, x_12, y_134), (*)(-1, x_124, y_13), (*)(-1, x_14, y_123), (*)(-1, x_2, y_34), (*)(-1, x_24, y_3), (*)(-1, x_4, y_23))), (*)(-1, y_1234, (+)((*)(x_, y_2), (*)(x_1, y_12), (*)(x_12, y_1), (*)(x_2, y_), (*)(-1, x_123, y_13), (*)(-1, x_13, y_123), (*)(-1, x_23, y_3), (*)(-1, x_3, y_23))), (*)(-1, y_124, (+)((*)(x_123, y_1), (*)(x_13, y_12), (*)(x_23, y_), (*)(x_3, y_2), (*)(-1, x_, y_23), (*)(-1, x_1, y_123), (*)(-1, x_12, y_13), (*)(-1, x_2, y_3))), (*)(-1, y_14, (+)((*)(x_, y_3), (*)(x_1, y_13), (*)(x_12, y_123), (*)(x_123, y_12), (*)(x_13, y_1), (*)(x_2, y_23), (*)(x_23, y_2), (*)(x_3, y_))), (*)(-1, y_24, (+)((*)(x_12, y_3), (*)(x_123, y_), (*)(x_2, y_13), (*)(x_23, y_1), (*)(-1, x_, y_123), (*)(-1, x_1, y_23), (*)(-1, x_13, y_2), (*)(-1, x_3, y_12))), (*)(-1, y_3, (+)((*)(x_12, y_24), (*)(x_1234, y_23), (*)(x_13, y_34), (*)(x_14, y_), (*)(x_2, y_124), (*)(x_234, y_123), (*)(x_3, y_134), (*)(x_4, y_1), (*)(-1, x_, y_14), (*)(-1, x_1, y_4), (*)(-1, x_123, y_234), (*)(-1, x_124, y_2), (*)(-1, x_134, y_3), (*)(-1, x_23, y_1234), (*)(-1, x_24, y_12), (*)(-1, x_34, y_13))))
    ret_12 = (+)((*)(y_, (+)((*)(x_12, y_), (*)(x_123, y_3), (*)(x_2, y_1), (*)(x_23, y_13), (*)(-1, x_, y_12), (*)(-1, x_1, y_2), (*)(-1, x_13, y_23), (*)(-1, x_3, y_123))), (*)(y_12, (+)((*)(x_, y_), (*)(x_1, y_1), (*)(x_12, y_12), (*)(x_123, y_123), (*)(x_13, y_13), (*)(x_2, y_2), (*)(x_23, y_23), (*)(x_3, y_3))), (*)(y_123, (+)((*)(x_, y_3), (*)(x_1, y_13), (*)(x_12, y_123), (*)(x_123, y_12), (*)(x_13, y_1), (*)(x_2, y_23), (*)(x_23, y_2), (*)(x_3, y_))), (*)(y_13, (+)((*)(x_123, y_1), (*)(x_13, y_12), (*)(x_23, y_), (*)(x_3, y_2), (*)(-1, x_, y_23), (*)(-1, x_1, y_123), (*)(-1, x_12, y_13), (*)(-1, x_2, y_3))), (*)(y_2, (+)((*)(x_, y_1), (*)(x_1, y_), (*)(x_123, y_23), (*)(x_23, y_123), (*)(-1, x_12, y_2), (*)(-1, x_13, y_3), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))), (*)(y_3, (+)((*)(x_12, y_3), (*)(x_123, y_), (*)(x_2, y_13), (*)(x_23, y_1), (*)(-1, x_, y_123), (*)(-1, x_1, y_23), (*)(-1, x_13, y_2), (*)(-1, x_3, y_12))), (*)(-1, y_1, (+)((*)(x_, y_2), (*)(x_1, y_12), (*)(x_12, y_1), (*)(x_2, y_), (*)(-1, x_123, y_13), (*)(-1, x_13, y_123), (*)(-1, x_23, y_3), (*)(-1, x_3, y_23))), (*)(-1, y_23, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(x_2, y_123), (*)(x_3, y_1), (*)(-1, x_, y_13), (*)(-1, x_1, y_3), (*)(-1, x_123, y_2), (*)(-1, x_23, y_12))))
    ret_124 = (+)((*)(y_, (+)((*)(x_12, y_4), (*)(x_123, y_34), (*)(x_1234, y_3), (*)(x_124, y_), (*)(x_2, y_14), (*)(x_23, y_134), (*)(x_234, y_13), (*)(x_24, y_1), (*)(-1, x_, y_124), (*)(-1, x_1, y_24), (*)(-1, x_13, y_234), (*)(-1, x_134, y_23), (*)(-1, x_14, y_2), (*)(-1, x_3, y_1234), (*)(-1, x_34, y_123), (*)(-1, x_4, y_12))), (*)(y_1, (+)((*)(x_123, y_134), (*)(x_124, y_1), (*)(x_13, y_1234), (*)(x_14, y_12), (*)(x_23, y_34), (*)(x_24, y_), (*)(x_3, y_234), (*)(x_4, y_2), (*)(-1, x_, y_24), (*)(-1, x_1, y_124), (*)(-1, x_12, y_14), (*)(-1, x_1234, y_13), (*)(-1, x_134, y_123), (*)(-1, x_2, y_4), (*)(-1, x_234, y_3), (*)(-1, x_34, y_23))), (*)(y_12, (+)((*)(x_, y_4), (*)(x_1, y_14), (*)(x_12, y_124), (*)(x_123, y_1234), (*)(x_1234, y_123), (*)(x_124, y_12), (*)(x_13, y_134), (*)(x_134, y_13), (*)(x_14, y_1), (*)(x_2, y_24), (*)(x_23, y_234), (*)(x_234, y_23), (*)(x_24, y_2), (*)(x_3, y_34), (*)(x_34, y_3), (*)(x_4, y_))), (*)(y_1234, (+)((*)(x_, y_3), (*)(x_1, y_13), (*)(x_12, y_123), (*)(x_123, y_12), (*)(x_13, y_1), (*)(x_2, y_23), (*)(x_23, y_2), (*)(x_3, y_))), (*)(y_124, (+)((*)(x_, y_), (*)(x_1, y_1), (*)(x_12, y_12), (*)(x_123, y_123), (*)(x_13, y_13), (*)(x_2, y_2), (*)(x_23, y_23), (*)(x_3, y_3))), (*)(y_13, (+)((*)(x_123, y_14), (*)(x_1234, y_1), (*)(x_13, y_124), (*)(x_134, y_12), (*)(x_23, y_4), (*)(x_234, y_), (*)(x_3, y_24), (*)(x_34, y_2), (*)(-1, x_, y_234), (*)(-1, x_1, y_1234), (*)(-1, x_12, y_134), (*)(-1, x_124, y_13), (*)(-1, x_14, y_123), (*)(-1, x_2, y_34), (*)(-1, x_24, y_3), (*)(-1, x_4, y_23))), (*)(y_134, (+)((*)(x_123, y_1), (*)(x_13, y_12), (*)(x_23, y_), (*)(x_3, y_2), (*)(-1, x_, y_23), (*)(-1, x_1, y_123), (*)(-1, x_12, y_13), (*)(-1, x_2, y_3))), (*)(y_24, (+)((*)(x_, y_1), (*)(x_1, y_), (*)(x_123, y_23), (*)(x_23, y_123), (*)(-1, x_12, y_2), (*)(-1, x_13, y_3), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))), (*)(y_34, (+)((*)(x_12, y_3), (*)(x_123, y_), (*)(x_2, y_13), (*)(x_23, y_1), (*)(-1, x_, y_123), (*)(-1, x_1, y_23), (*)(-1, x_13, y_2), (*)(-1, x_3, y_12))), (*)(y_4, (+)((*)(x_12, y_), (*)(x_123, y_3), (*)(x_2, y_1), (*)(x_23, y_13), (*)(-1, x_, y_12), (*)(-1, x_1, y_2), (*)(-1, x_13, y_23), (*)(-1, x_3, y_123))), (*)(-1, y_123, (+)((*)(x_1234, y_12), (*)(x_124, y_123), (*)(x_134, y_1), (*)(x_14, y_13), (*)(x_234, y_2), (*)(x_24, y_23), (*)(x_34, y_), (*)(x_4, y_3), (*)(-1, x_, y_34), (*)(-1, x_1, y_134), (*)(-1, x_12, y_1234), (*)(-1, x_123, y_124), (*)(-1, x_13, y_14), (*)(-1, x_2, y_234), (*)(-1, x_23, y_24), (*)(-1, x_3, y_4))), (*)(-1, y_14, (+)((*)(x_, y_2), (*)(x_1, y_12), (*)(x_12, y_1), (*)(x_2, y_), (*)(-1, x_123, y_13), (*)(-1, x_13, y_123), (*)(-1, x_23, y_3), (*)(-1, x_3, y_23))), (*)(-1, y_2, (+)((*)(x_12, y_24), (*)(x_1234, y_23), (*)(x_13, y_34), (*)(x_14, y_), (*)(x_2, y_124), (*)(x_234, y_123), (*)(x_3, y_134), (*)(x_4, y_1), (*)(-1, x_, y_14), (*)(-1, x_1, y_4), (*)(-1, x_123, y_234), (*)(-1, x_124, y_2), (*)(-1, x_134, y_3), (*)(-1, x_23, y_1234), (*)(-1, x_24, y_12), (*)(-1, x_34, y_13))), (*)(-1, y_23, (+)((*)(x_12, y_234), (*)(x_124, y_23), (*)(x_13, y_4), (*)(x_134, y_), (*)(x_2, y_1234), (*)(x_24, y_123), (*)(x_3, y_14), (*)(x_34, y_1), (*)(-1, x_, y_134), (*)(-1, x_1, y_34), (*)(-1, x_123, y_24), (*)(-1, x_1234, y_2), (*)(-1, x_14, y_3), (*)(-1, x_23, y_124), (*)(-1, x_234, y_12), (*)(-1, x_4, y_13))), (*)(-1, y_234, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(x_2, y_123), (*)(x_3, y_1), (*)(-1, x_, y_13), (*)(-1, x_1, y_3), (*)(-1, x_123, y_2), (*)(-1, x_23, y_12))), (*)(-1, y_3, (+)((*)(x_, y_1234), (*)(x_1, y_234), (*)(x_1234, y_), (*)(x_124, y_3), (*)(x_13, y_24), (*)(x_234, y_1), (*)(x_24, y_13), (*)(x_3, y_124), (*)(-1, x_12, y_34), (*)(-1, x_123, y_4), (*)(-1, x_134, y_2), (*)(-1, x_14, y_23), (*)(-1, x_2, y_134), (*)(-1, x_23, y_14), (*)(-1, x_34, y_12), (*)(-1, x_4, y_123))))
    ret_123 = (+)((*)(y_, (+)((*)(x_12, y_3), (*)(x_123, y_), (*)(x_2, y_13), (*)(x_23, y_1), (*)(-1, x_, y_123), (*)(-1, x_1, y_23), (*)(-1, x_13, y_2), (*)(-1, x_3, y_12))), (*)(y_1, (+)((*)(x_123, y_1), (*)(x_13, y_12), (*)(x_23, y_), (*)(x_3, y_2), (*)(-1, x_, y_23), (*)(-1, x_1, y_123), (*)(-1, x_12, y_13), (*)(-1, x_2, y_3))), (*)(y_12, (+)((*)(x_, y_3), (*)(x_1, y_13), (*)(x_12, y_123), (*)(x_123, y_12), (*)(x_13, y_1), (*)(x_2, y_23), (*)(x_23, y_2), (*)(x_3, y_))), (*)(y_123, (+)((*)(x_, y_), (*)(x_1, y_1), (*)(x_12, y_12), (*)(x_123, y_123), (*)(x_13, y_13), (*)(x_2, y_2), (*)(x_23, y_23), (*)(x_3, y_3))), (*)(y_23, (+)((*)(x_, y_1), (*)(x_1, y_), (*)(x_123, y_23), (*)(x_23, y_123), (*)(-1, x_12, y_2), (*)(-1, x_13, y_3), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))), (*)(y_3, (+)((*)(x_12, y_), (*)(x_123, y_3), (*)(x_2, y_1), (*)(x_23, y_13), (*)(-1, x_, y_12), (*)(-1, x_1, y_2), (*)(-1, x_13, y_23), (*)(-1, x_3, y_123))), (*)(-1, y_13, (+)((*)(x_, y_2), (*)(x_1, y_12), (*)(x_12, y_1), (*)(x_2, y_), (*)(-1, x_123, y_13), (*)(-1, x_13, y_123), (*)(-1, x_23, y_3), (*)(-1, x_3, y_23))), (*)(-1, y_2, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(x_2, y_123), (*)(x_3, y_1), (*)(-1, x_, y_13), (*)(-1, x_1, y_3), (*)(-1, x_123, y_2), (*)(-1, x_23, y_12))))
    ret_1234 = (+)((*)(y_, (+)((*)(x_, y_1234), (*)(x_1, y_234), (*)(x_1234, y_), (*)(x_124, y_3), (*)(x_13, y_24), (*)(x_234, y_1), (*)(x_24, y_13), (*)(x_3, y_124), (*)(-1, x_12, y_34), (*)(-1, x_123, y_4), (*)(-1, x_134, y_2), (*)(-1, x_14, y_23), (*)(-1, x_2, y_134), (*)(-1, x_23, y_14), (*)(-1, x_34, y_12), (*)(-1, x_4, y_123))), (*)(y_12, (+)((*)(x_1234, y_12), (*)(x_124, y_123), (*)(x_134, y_1), (*)(x_14, y_13), (*)(x_234, y_2), (*)(x_24, y_23), (*)(x_34, y_), (*)(x_4, y_3), (*)(-1, x_, y_34), (*)(-1, x_1, y_134), (*)(-1, x_12, y_1234), (*)(-1, x_123, y_124), (*)(-1, x_13, y_14), (*)(-1, x_2, y_234), (*)(-1, x_23, y_24), (*)(-1, x_3, y_4))), (*)(y_1234, (+)((*)(x_, y_), (*)(x_1, y_1), (*)(x_12, y_12), (*)(x_123, y_123), (*)(x_13, y_13), (*)(x_2, y_2), (*)(x_23, y_23), (*)(x_3, y_3))), (*)(y_124, (+)((*)(x_, y_3), (*)(x_1, y_13), (*)(x_12, y_123), (*)(x_123, y_12), (*)(x_13, y_1), (*)(x_2, y_23), (*)(x_23, y_2), (*)(x_3, y_))), (*)(y_14, (+)((*)(x_123, y_1), (*)(x_13, y_12), (*)(x_23, y_), (*)(x_3, y_2), (*)(-1, x_, y_23), (*)(-1, x_1, y_123), (*)(-1, x_12, y_13), (*)(-1, x_2, y_3))), (*)(y_2, (+)((*)(x_12, y_234), (*)(x_124, y_23), (*)(x_13, y_4), (*)(x_134, y_), (*)(x_2, y_1234), (*)(x_24, y_123), (*)(x_3, y_14), (*)(x_34, y_1), (*)(-1, x_, y_134), (*)(-1, x_1, y_34), (*)(-1, x_123, y_24), (*)(-1, x_1234, y_2), (*)(-1, x_14, y_3), (*)(-1, x_23, y_124), (*)(-1, x_234, y_12), (*)(-1, x_4, y_13))), (*)(y_23, (+)((*)(x_12, y_24), (*)(x_1234, y_23), (*)(x_13, y_34), (*)(x_14, y_), (*)(x_2, y_124), (*)(x_234, y_123), (*)(x_3, y_134), (*)(x_4, y_1), (*)(-1, x_, y_14), (*)(-1, x_1, y_4), (*)(-1, x_123, y_234), (*)(-1, x_124, y_2), (*)(-1, x_134, y_3), (*)(-1, x_23, y_1234), (*)(-1, x_24, y_12), (*)(-1, x_34, y_13))), (*)(y_234, (+)((*)(x_, y_1), (*)(x_1, y_), (*)(x_123, y_23), (*)(x_23, y_123), (*)(-1, x_12, y_2), (*)(-1, x_13, y_3), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))), (*)(y_34, (+)((*)(x_12, y_), (*)(x_123, y_3), (*)(x_2, y_1), (*)(x_23, y_13), (*)(-1, x_, y_12), (*)(-1, x_1, y_2), (*)(-1, x_13, y_23), (*)(-1, x_3, y_123))), (*)(y_4, (+)((*)(x_12, y_3), (*)(x_123, y_), (*)(x_2, y_13), (*)(x_23, y_1), (*)(-1, x_, y_123), (*)(-1, x_1, y_23), (*)(-1, x_13, y_2), (*)(-1, x_3, y_12))), (*)(-1, y_1, (+)((*)(x_123, y_14), (*)(x_1234, y_1), (*)(x_13, y_124), (*)(x_134, y_12), (*)(x_23, y_4), (*)(x_234, y_), (*)(x_3, y_24), (*)(x_34, y_2), (*)(-1, x_, y_234), (*)(-1, x_1, y_1234), (*)(-1, x_12, y_134), (*)(-1, x_124, y_13), (*)(-1, x_14, y_123), (*)(-1, x_2, y_34), (*)(-1, x_24, y_3), (*)(-1, x_4, y_23))), (*)(-1, y_123, (+)((*)(x_, y_4), (*)(x_1, y_14), (*)(x_12, y_124), (*)(x_123, y_1234), (*)(x_1234, y_123), (*)(x_124, y_12), (*)(x_13, y_134), (*)(x_134, y_13), (*)(x_14, y_1), (*)(x_2, y_24), (*)(x_23, y_234), (*)(x_234, y_23), (*)(x_24, y_2), (*)(x_3, y_34), (*)(x_34, y_3), (*)(x_4, y_))), (*)(-1, y_13, (+)((*)(x_123, y_134), (*)(x_124, y_1), (*)(x_13, y_1234), (*)(x_14, y_12), (*)(x_23, y_34), (*)(x_24, y_), (*)(x_3, y_234), (*)(x_4, y_2), (*)(-1, x_, y_24), (*)(-1, x_1, y_124), (*)(-1, x_12, y_14), (*)(-1, x_1234, y_13), (*)(-1, x_134, y_123), (*)(-1, x_2, y_4), (*)(-1, x_234, y_3), (*)(-1, x_34, y_23))), (*)(-1, y_134, (+)((*)(x_, y_2), (*)(x_1, y_12), (*)(x_12, y_1), (*)(x_2, y_), (*)(-1, x_123, y_13), (*)(-1, x_13, y_123), (*)(-1, x_23, y_3), (*)(-1, x_3, y_23))), (*)(-1, y_24, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(x_2, y_123), (*)(x_3, y_1), (*)(-1, x_, y_13), (*)(-1, x_1, y_3), (*)(-1, x_123, y_2), (*)(-1, x_23, y_12))), (*)(-1, y_3, (+)((*)(x_12, y_4), (*)(x_123, y_34), (*)(x_1234, y_3), (*)(x_124, y_), (*)(x_2, y_14), (*)(x_23, y_134), (*)(x_234, y_13), (*)(x_24, y_1), (*)(-1, x_, y_124), (*)(-1, x_1, y_24), (*)(-1, x_13, y_234), (*)(-1, x_134, y_23), (*)(-1, x_14, y_2), (*)(-1, x_3, y_1234), (*)(-1, x_34, y_123), (*)(-1, x_4, y_12))))
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function sandwich(x::MultiVectorAll, y::MultiVectorEven)
    x_ = x.e
    x_4 = x.e4
    x_3 = x.e3
    x_34 = x.e34
    x_2 = x.e2
    x_24 = x.e24
    x_23 = x.e23
    x_234 = x.e234
    x_1 = x.e1
    x_14 = x.e14
    x_13 = x.e13
    x_134 = x.e134
    x_12 = x.e12
    x_124 = x.e124
    x_123 = x.e123
    x_1234 = x.e1234
    y_ = y.e
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    y_1234 = y.e1234
    ret_ = (+)((*)(y_, (+)((*)(x_, y_), (*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(-1, y_12, (+)((*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_, y_12), (*)(-1, x_13, y_23))), (*)(-1, y_13, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_, y_13), (*)(-1, x_23, y_12))), (*)(-1, y_23, (+)((*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_, y_23), (*)(-1, x_12, y_13))))
    ret_4 = (+)((*)(y_, (+)((*)(x_1, y_14), (*)(x_123, y_1234), (*)(x_124, y_12), (*)(x_134, y_13), (*)(x_2, y_24), (*)(x_234, y_23), (*)(x_3, y_34), (*)(x_4, y_))), (*)(y_14, (+)((*)(x_1, y_), (*)(x_123, y_23), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))), (*)(y_24, (+)((*)(x_1, y_12), (*)(x_2, y_), (*)(-1, x_123, y_13), (*)(-1, x_3, y_23))), (*)(y_34, (+)((*)(x_1, y_13), (*)(x_123, y_12), (*)(x_2, y_23), (*)(x_3, y_))), (*)(-1, y_12, (+)((*)(x_123, y_34), (*)(x_124, y_), (*)(x_2, y_14), (*)(x_234, y_13), (*)(-1, x_1, y_24), (*)(-1, x_134, y_23), (*)(-1, x_3, y_1234), (*)(-1, x_4, y_12))), (*)(-1, y_1234, (+)((*)(x_123, y_), (*)(x_2, y_13), (*)(-1, x_1, y_23), (*)(-1, x_3, y_12))), (*)(-1, y_13, (+)((*)(x_124, y_23), (*)(x_134, y_), (*)(x_2, y_1234), (*)(x_3, y_14), (*)(-1, x_1, y_34), (*)(-1, x_123, y_24), (*)(-1, x_234, y_12), (*)(-1, x_4, y_13))), (*)(-1, y_23, (+)((*)(x_123, y_14), (*)(x_134, y_12), (*)(x_234, y_), (*)(x_3, y_24), (*)(-1, x_1, y_1234), (*)(-1, x_124, y_13), (*)(-1, x_2, y_34), (*)(-1, x_4, y_23))))
    ret_3 = (+)((*)(y_, (+)((*)(x_1, y_13), (*)(x_123, y_12), (*)(x_2, y_23), (*)(x_3, y_))), (*)(y_13, (+)((*)(x_1, y_), (*)(x_123, y_23), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))), (*)(y_23, (+)((*)(x_1, y_12), (*)(x_2, y_), (*)(-1, x_123, y_13), (*)(-1, x_3, y_23))), (*)(-1, y_12, (+)((*)(x_123, y_), (*)(x_2, y_13), (*)(-1, x_1, y_23), (*)(-1, x_3, y_12))))
    ret_34 = (+)((*)(y_, (+)((*)(x_1234, y_12), (*)(x_14, y_13), (*)(x_24, y_23), (*)(x_34, y_), (*)(-1, x_, y_34), (*)(-1, x_12, y_1234), (*)(-1, x_13, y_14), (*)(-1, x_23, y_24))), (*)(y_13, (+)((*)(x_12, y_24), (*)(x_1234, y_23), (*)(x_13, y_34), (*)(x_14, y_), (*)(-1, x_, y_14), (*)(-1, x_23, y_1234), (*)(-1, x_24, y_12), (*)(-1, x_34, y_13))), (*)(y_23, (+)((*)(x_13, y_1234), (*)(x_14, y_12), (*)(x_23, y_34), (*)(x_24, y_), (*)(-1, x_, y_24), (*)(-1, x_12, y_14), (*)(-1, x_1234, y_13), (*)(-1, x_34, y_23))), (*)(y_34, (+)((*)(x_, y_), (*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(-1, y_12, (+)((*)(x_, y_1234), (*)(x_1234, y_), (*)(x_13, y_24), (*)(x_24, y_13), (*)(-1, x_12, y_34), (*)(-1, x_14, y_23), (*)(-1, x_23, y_14), (*)(-1, x_34, y_12))), (*)(-1, y_1234, (+)((*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_, y_12), (*)(-1, x_13, y_23))), (*)(-1, y_14, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_, y_13), (*)(-1, x_23, y_12))), (*)(-1, y_24, (+)((*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_, y_23), (*)(-1, x_12, y_13))))
    ret_2 = (+)((*)(y_, (+)((*)(x_1, y_12), (*)(x_2, y_), (*)(-1, x_123, y_13), (*)(-1, x_3, y_23))), (*)(y_12, (+)((*)(x_1, y_), (*)(x_123, y_23), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))), (*)(y_13, (+)((*)(x_123, y_), (*)(x_2, y_13), (*)(-1, x_1, y_23), (*)(-1, x_3, y_12))), (*)(-1, y_23, (+)((*)(x_1, y_13), (*)(x_123, y_12), (*)(x_2, y_23), (*)(x_3, y_))))
    ret_24 = (+)((*)(y_, (+)((*)(x_13, y_1234), (*)(x_14, y_12), (*)(x_23, y_34), (*)(x_24, y_), (*)(-1, x_, y_24), (*)(-1, x_12, y_14), (*)(-1, x_1234, y_13), (*)(-1, x_34, y_23))), (*)(y_12, (+)((*)(x_12, y_24), (*)(x_1234, y_23), (*)(x_13, y_34), (*)(x_14, y_), (*)(-1, x_, y_14), (*)(-1, x_23, y_1234), (*)(-1, x_24, y_12), (*)(-1, x_34, y_13))), (*)(y_1234, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_, y_13), (*)(-1, x_23, y_12))), (*)(y_13, (+)((*)(x_, y_1234), (*)(x_1234, y_), (*)(x_13, y_24), (*)(x_24, y_13), (*)(-1, x_12, y_34), (*)(-1, x_14, y_23), (*)(-1, x_23, y_14), (*)(-1, x_34, y_12))), (*)(y_24, (+)((*)(x_, y_), (*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(y_34, (+)((*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_, y_23), (*)(-1, x_12, y_13))), (*)(-1, y_14, (+)((*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_, y_12), (*)(-1, x_13, y_23))), (*)(-1, y_23, (+)((*)(x_1234, y_12), (*)(x_14, y_13), (*)(x_24, y_23), (*)(x_34, y_), (*)(-1, x_, y_34), (*)(-1, x_12, y_1234), (*)(-1, x_13, y_14), (*)(-1, x_23, y_24))))
    ret_23 = (+)((*)(y_, (+)((*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_, y_23), (*)(-1, x_12, y_13))), (*)(y_12, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_, y_13), (*)(-1, x_23, y_12))), (*)(y_23, (+)((*)(x_, y_), (*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(-1, y_13, (+)((*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_, y_12), (*)(-1, x_13, y_23))))
    ret_234 = (+)((*)(y_, (+)((*)(x_123, y_14), (*)(x_134, y_12), (*)(x_234, y_), (*)(x_3, y_24), (*)(-1, x_1, y_1234), (*)(-1, x_124, y_13), (*)(-1, x_2, y_34), (*)(-1, x_4, y_23))), (*)(y_12, (+)((*)(x_124, y_23), (*)(x_134, y_), (*)(x_2, y_1234), (*)(x_3, y_14), (*)(-1, x_1, y_34), (*)(-1, x_123, y_24), (*)(-1, x_234, y_12), (*)(-1, x_4, y_13))), (*)(y_1234, (+)((*)(x_1, y_), (*)(x_123, y_23), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))), (*)(y_14, (+)((*)(x_123, y_), (*)(x_2, y_13), (*)(-1, x_1, y_23), (*)(-1, x_3, y_12))), (*)(y_23, (+)((*)(x_1, y_14), (*)(x_123, y_1234), (*)(x_124, y_12), (*)(x_134, y_13), (*)(x_2, y_24), (*)(x_234, y_23), (*)(x_3, y_34), (*)(x_4, y_))), (*)(y_34, (+)((*)(x_1, y_12), (*)(x_2, y_), (*)(-1, x_123, y_13), (*)(-1, x_3, y_23))), (*)(-1, y_13, (+)((*)(x_123, y_34), (*)(x_124, y_), (*)(x_2, y_14), (*)(x_234, y_13), (*)(-1, x_1, y_24), (*)(-1, x_134, y_23), (*)(-1, x_3, y_1234), (*)(-1, x_4, y_12))), (*)(-1, y_24, (+)((*)(x_1, y_13), (*)(x_123, y_12), (*)(x_2, y_23), (*)(x_3, y_))))
    ret_1 = (+)((*)(y_, (+)((*)(x_1, y_), (*)(x_123, y_23), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))), (*)(-1, y_12, (+)((*)(x_1, y_12), (*)(x_2, y_), (*)(-1, x_123, y_13), (*)(-1, x_3, y_23))), (*)(-1, y_13, (+)((*)(x_1, y_13), (*)(x_123, y_12), (*)(x_2, y_23), (*)(x_3, y_))), (*)(-1, y_23, (+)((*)(x_123, y_), (*)(x_2, y_13), (*)(-1, x_1, y_23), (*)(-1, x_3, y_12))))
    ret_14 = (+)((*)(y_, (+)((*)(x_12, y_24), (*)(x_1234, y_23), (*)(x_13, y_34), (*)(x_14, y_), (*)(-1, x_, y_14), (*)(-1, x_23, y_1234), (*)(-1, x_24, y_12), (*)(-1, x_34, y_13))), (*)(y_14, (+)((*)(x_, y_), (*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(y_24, (+)((*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_, y_12), (*)(-1, x_13, y_23))), (*)(y_34, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_, y_13), (*)(-1, x_23, y_12))), (*)(-1, y_12, (+)((*)(x_13, y_1234), (*)(x_14, y_12), (*)(x_23, y_34), (*)(x_24, y_), (*)(-1, x_, y_24), (*)(-1, x_12, y_14), (*)(-1, x_1234, y_13), (*)(-1, x_34, y_23))), (*)(-1, y_1234, (+)((*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_, y_23), (*)(-1, x_12, y_13))), (*)(-1, y_13, (+)((*)(x_1234, y_12), (*)(x_14, y_13), (*)(x_24, y_23), (*)(x_34, y_), (*)(-1, x_, y_34), (*)(-1, x_12, y_1234), (*)(-1, x_13, y_14), (*)(-1, x_23, y_24))), (*)(-1, y_23, (+)((*)(x_, y_1234), (*)(x_1234, y_), (*)(x_13, y_24), (*)(x_24, y_13), (*)(-1, x_12, y_34), (*)(-1, x_14, y_23), (*)(-1, x_23, y_14), (*)(-1, x_34, y_12))))
    ret_13 = (+)((*)(y_, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_, y_13), (*)(-1, x_23, y_12))), (*)(y_13, (+)((*)(x_, y_), (*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(y_23, (+)((*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_, y_12), (*)(-1, x_13, y_23))), (*)(-1, y_12, (+)((*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_, y_23), (*)(-1, x_12, y_13))))
    ret_134 = (+)((*)(y_, (+)((*)(x_124, y_23), (*)(x_134, y_), (*)(x_2, y_1234), (*)(x_3, y_14), (*)(-1, x_1, y_34), (*)(-1, x_123, y_24), (*)(-1, x_234, y_12), (*)(-1, x_4, y_13))), (*)(y_13, (+)((*)(x_1, y_14), (*)(x_123, y_1234), (*)(x_124, y_12), (*)(x_134, y_13), (*)(x_2, y_24), (*)(x_234, y_23), (*)(x_3, y_34), (*)(x_4, y_))), (*)(y_23, (+)((*)(x_123, y_34), (*)(x_124, y_), (*)(x_2, y_14), (*)(x_234, y_13), (*)(-1, x_1, y_24), (*)(-1, x_134, y_23), (*)(-1, x_3, y_1234), (*)(-1, x_4, y_12))), (*)(y_34, (+)((*)(x_1, y_), (*)(x_123, y_23), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))), (*)(-1, y_12, (+)((*)(x_123, y_14), (*)(x_134, y_12), (*)(x_234, y_), (*)(x_3, y_24), (*)(-1, x_1, y_1234), (*)(-1, x_124, y_13), (*)(-1, x_2, y_34), (*)(-1, x_4, y_23))), (*)(-1, y_1234, (+)((*)(x_1, y_12), (*)(x_2, y_), (*)(-1, x_123, y_13), (*)(-1, x_3, y_23))), (*)(-1, y_14, (+)((*)(x_1, y_13), (*)(x_123, y_12), (*)(x_2, y_23), (*)(x_3, y_))), (*)(-1, y_24, (+)((*)(x_123, y_), (*)(x_2, y_13), (*)(-1, x_1, y_23), (*)(-1, x_3, y_12))))
    ret_12 = (+)((*)(y_, (+)((*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_, y_12), (*)(-1, x_13, y_23))), (*)(y_12, (+)((*)(x_, y_), (*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(y_13, (+)((*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_, y_23), (*)(-1, x_12, y_13))), (*)(-1, y_23, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_, y_13), (*)(-1, x_23, y_12))))
    ret_124 = (+)((*)(y_, (+)((*)(x_123, y_34), (*)(x_124, y_), (*)(x_2, y_14), (*)(x_234, y_13), (*)(-1, x_1, y_24), (*)(-1, x_134, y_23), (*)(-1, x_3, y_1234), (*)(-1, x_4, y_12))), (*)(y_12, (+)((*)(x_1, y_14), (*)(x_123, y_1234), (*)(x_124, y_12), (*)(x_134, y_13), (*)(x_2, y_24), (*)(x_234, y_23), (*)(x_3, y_34), (*)(x_4, y_))), (*)(y_1234, (+)((*)(x_1, y_13), (*)(x_123, y_12), (*)(x_2, y_23), (*)(x_3, y_))), (*)(y_13, (+)((*)(x_123, y_14), (*)(x_134, y_12), (*)(x_234, y_), (*)(x_3, y_24), (*)(-1, x_1, y_1234), (*)(-1, x_124, y_13), (*)(-1, x_2, y_34), (*)(-1, x_4, y_23))), (*)(y_24, (+)((*)(x_1, y_), (*)(x_123, y_23), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))), (*)(y_34, (+)((*)(x_123, y_), (*)(x_2, y_13), (*)(-1, x_1, y_23), (*)(-1, x_3, y_12))), (*)(-1, y_14, (+)((*)(x_1, y_12), (*)(x_2, y_), (*)(-1, x_123, y_13), (*)(-1, x_3, y_23))), (*)(-1, y_23, (+)((*)(x_124, y_23), (*)(x_134, y_), (*)(x_2, y_1234), (*)(x_3, y_14), (*)(-1, x_1, y_34), (*)(-1, x_123, y_24), (*)(-1, x_234, y_12), (*)(-1, x_4, y_13))))
    ret_123 = (+)((*)(y_, (+)((*)(x_123, y_), (*)(x_2, y_13), (*)(-1, x_1, y_23), (*)(-1, x_3, y_12))), (*)(y_12, (+)((*)(x_1, y_13), (*)(x_123, y_12), (*)(x_2, y_23), (*)(x_3, y_))), (*)(y_23, (+)((*)(x_1, y_), (*)(x_123, y_23), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))), (*)(-1, y_13, (+)((*)(x_1, y_12), (*)(x_2, y_), (*)(-1, x_123, y_13), (*)(-1, x_3, y_23))))
    ret_1234 = (+)((*)(y_, (+)((*)(x_, y_1234), (*)(x_1234, y_), (*)(x_13, y_24), (*)(x_24, y_13), (*)(-1, x_12, y_34), (*)(-1, x_14, y_23), (*)(-1, x_23, y_14), (*)(-1, x_34, y_12))), (*)(y_12, (+)((*)(x_1234, y_12), (*)(x_14, y_13), (*)(x_24, y_23), (*)(x_34, y_), (*)(-1, x_, y_34), (*)(-1, x_12, y_1234), (*)(-1, x_13, y_14), (*)(-1, x_23, y_24))), (*)(y_1234, (+)((*)(x_, y_), (*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(y_14, (+)((*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_, y_23), (*)(-1, x_12, y_13))), (*)(y_23, (+)((*)(x_12, y_24), (*)(x_1234, y_23), (*)(x_13, y_34), (*)(x_14, y_), (*)(-1, x_, y_14), (*)(-1, x_23, y_1234), (*)(-1, x_24, y_12), (*)(-1, x_34, y_13))), (*)(y_34, (+)((*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_, y_12), (*)(-1, x_13, y_23))), (*)(-1, y_13, (+)((*)(x_13, y_1234), (*)(x_14, y_12), (*)(x_23, y_34), (*)(x_24, y_), (*)(-1, x_, y_24), (*)(-1, x_12, y_14), (*)(-1, x_1234, y_13), (*)(-1, x_34, y_23))), (*)(-1, y_24, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_, y_13), (*)(-1, x_23, y_12))))
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function sandwich(x::MultiVectorAll, y::MultiVector0)
    x_ = x.e
    x_4 = x.e4
    x_3 = x.e3
    x_34 = x.e34
    x_2 = x.e2
    x_24 = x.e24
    x_23 = x.e23
    x_234 = x.e234
    x_1 = x.e1
    x_14 = x.e14
    x_13 = x.e13
    x_134 = x.e134
    x_12 = x.e12
    x_124 = x.e124
    x_123 = x.e123
    x_1234 = x.e1234
    y_ = y.e
    ret_ = (*)(x_, (^)(y_, 2))
    ret_4 = (*)(x_4, (^)(y_, 2))
    ret_3 = (*)(x_3, (^)(y_, 2))
    ret_34 = (*)(x_34, (^)(y_, 2))
    ret_2 = (*)(x_2, (^)(y_, 2))
    ret_24 = (*)(x_24, (^)(y_, 2))
    ret_23 = (*)(x_23, (^)(y_, 2))
    ret_234 = (*)(x_234, (^)(y_, 2))
    ret_1 = (*)(x_1, (^)(y_, 2))
    ret_14 = (*)(x_14, (^)(y_, 2))
    ret_13 = (*)(x_13, (^)(y_, 2))
    ret_134 = (*)(x_134, (^)(y_, 2))
    ret_12 = (*)(x_12, (^)(y_, 2))
    ret_124 = (*)(x_124, (^)(y_, 2))
    ret_123 = (*)(x_123, (^)(y_, 2))
    ret_1234 = (*)(x_1234, (^)(y_, 2))
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function sandwich(x::MultiVectorAll, y::MultiVector1)
    x_ = x.e
    x_4 = x.e4
    x_3 = x.e3
    x_34 = x.e34
    x_2 = x.e2
    x_24 = x.e24
    x_23 = x.e23
    x_234 = x.e234
    x_1 = x.e1
    x_14 = x.e14
    x_13 = x.e13
    x_134 = x.e134
    x_12 = x.e12
    x_124 = x.e124
    x_123 = x.e123
    x_1234 = x.e1234
    y_4 = y.e4
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    ret_ = (+)((*)(y_1, (+)((*)(x_, y_1), (*)(-1, x_12, y_2), (*)(-1, x_13, y_3))), (*)(y_2, (+)((*)(x_, y_2), (*)(x_12, y_1), (*)(-1, x_23, y_3))), (*)(y_3, (+)((*)(x_, y_3), (*)(x_13, y_1), (*)(x_23, y_2))))
    ret_4 = (+)((*)(y_4, (+)((*)(x_1, y_1), (*)(x_2, y_2), (*)(x_3, y_3))), (*)(-1, y_1, (+)((*)(x_4, y_1), (*)(-1, x_1, y_4), (*)(-1, x_124, y_2), (*)(-1, x_134, y_3))), (*)(-1, y_2, (+)((*)(x_124, y_1), (*)(x_4, y_2), (*)(-1, x_2, y_4), (*)(-1, x_234, y_3))), (*)(-1, y_3, (+)((*)(x_134, y_1), (*)(x_234, y_2), (*)(x_4, y_3), (*)(-1, x_3, y_4))))
    ret_3 = (+)((*)(y_3, (+)((*)(x_1, y_1), (*)(x_2, y_2), (*)(x_3, y_3))), (*)(-1, y_1, (+)((*)(x_3, y_1), (*)(-1, x_1, y_3), (*)(-1, x_123, y_2))), (*)(-1, y_2, (+)((*)(x_123, y_1), (*)(x_3, y_2), (*)(-1, x_2, y_3))))
    ret_34 = (+)((*)(y_1, (+)((*)(x_13, y_4), (*)(x_34, y_1), (*)(-1, x_1234, y_2), (*)(-1, x_14, y_3))), (*)(y_2, (+)((*)(x_1234, y_1), (*)(x_23, y_4), (*)(x_34, y_2), (*)(-1, x_24, y_3))), (*)(y_4, (+)((*)(x_, y_3), (*)(x_13, y_1), (*)(x_23, y_2))), (*)(-1, y_3, (+)((*)(x_, y_4), (*)(x_14, y_1), (*)(x_24, y_2), (*)(x_34, y_3))))
    ret_2 = (+)((*)(y_2, (+)((*)(x_1, y_1), (*)(x_2, y_2), (*)(x_3, y_3))), (*)(y_3, (+)((*)(x_123, y_1), (*)(x_3, y_2), (*)(-1, x_2, y_3))), (*)(-1, y_1, (+)((*)(x_123, y_3), (*)(x_2, y_1), (*)(-1, x_1, y_2))))
    ret_24 = (+)((*)(y_1, (+)((*)(x_12, y_4), (*)(x_1234, y_3), (*)(x_24, y_1), (*)(-1, x_14, y_2))), (*)(y_4, (+)((*)(x_, y_2), (*)(x_12, y_1), (*)(-1, x_23, y_3))), (*)(-1, y_2, (+)((*)(x_, y_4), (*)(x_14, y_1), (*)(x_24, y_2), (*)(x_34, y_3))), (*)(-1, y_3, (+)((*)(x_1234, y_1), (*)(x_23, y_4), (*)(x_34, y_2), (*)(-1, x_24, y_3))))
    ret_23 = (+)((*)(y_1, (+)((*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_13, y_2))), (*)(y_3, (+)((*)(x_, y_2), (*)(x_12, y_1), (*)(-1, x_23, y_3))), (*)(-1, y_2, (+)((*)(x_, y_3), (*)(x_13, y_1), (*)(x_23, y_2))))
    ret_234 = (+)((*)(y_2, (+)((*)(x_134, y_1), (*)(x_234, y_2), (*)(x_4, y_3), (*)(-1, x_3, y_4))), (*)(y_4, (+)((*)(x_123, y_1), (*)(x_3, y_2), (*)(-1, x_2, y_3))), (*)(-1, y_1, (+)((*)(x_124, y_3), (*)(x_234, y_1), (*)(-1, x_123, y_4), (*)(-1, x_134, y_2))), (*)(-1, y_3, (+)((*)(x_124, y_1), (*)(x_4, y_2), (*)(-1, x_2, y_4), (*)(-1, x_234, y_3))))
    ret_1 = (+)((*)(y_1, (+)((*)(x_1, y_1), (*)(x_2, y_2), (*)(x_3, y_3))), (*)(y_2, (+)((*)(x_123, y_3), (*)(x_2, y_1), (*)(-1, x_1, y_2))), (*)(y_3, (+)((*)(x_3, y_1), (*)(-1, x_1, y_3), (*)(-1, x_123, y_2))))
    ret_14 = (+)((*)(y_4, (+)((*)(x_, y_1), (*)(-1, x_12, y_2), (*)(-1, x_13, y_3))), (*)(-1, y_1, (+)((*)(x_, y_4), (*)(x_14, y_1), (*)(x_24, y_2), (*)(x_34, y_3))), (*)(-1, y_2, (+)((*)(x_12, y_4), (*)(x_1234, y_3), (*)(x_24, y_1), (*)(-1, x_14, y_2))), (*)(-1, y_3, (+)((*)(x_13, y_4), (*)(x_34, y_1), (*)(-1, x_1234, y_2), (*)(-1, x_14, y_3))))
    ret_13 = (+)((*)(y_3, (+)((*)(x_, y_1), (*)(-1, x_12, y_2), (*)(-1, x_13, y_3))), (*)(-1, y_1, (+)((*)(x_, y_3), (*)(x_13, y_1), (*)(x_23, y_2))), (*)(-1, y_2, (+)((*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_13, y_2))))
    ret_134 = (+)((*)(y_1, (+)((*)(x_134, y_1), (*)(x_234, y_2), (*)(x_4, y_3), (*)(-1, x_3, y_4))), (*)(y_2, (+)((*)(x_124, y_3), (*)(x_234, y_1), (*)(-1, x_123, y_4), (*)(-1, x_134, y_2))), (*)(y_4, (+)((*)(x_3, y_1), (*)(-1, x_1, y_3), (*)(-1, x_123, y_2))), (*)(-1, y_3, (+)((*)(x_4, y_1), (*)(-1, x_1, y_4), (*)(-1, x_124, y_2), (*)(-1, x_134, y_3))))
    ret_12 = (+)((*)(y_2, (+)((*)(x_, y_1), (*)(-1, x_12, y_2), (*)(-1, x_13, y_3))), (*)(y_3, (+)((*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_13, y_2))), (*)(-1, y_1, (+)((*)(x_, y_2), (*)(x_12, y_1), (*)(-1, x_23, y_3))))
    ret_124 = (+)((*)(y_1, (+)((*)(x_124, y_1), (*)(x_4, y_2), (*)(-1, x_2, y_4), (*)(-1, x_234, y_3))), (*)(y_4, (+)((*)(x_123, y_3), (*)(x_2, y_1), (*)(-1, x_1, y_2))), (*)(-1, y_2, (+)((*)(x_4, y_1), (*)(-1, x_1, y_4), (*)(-1, x_124, y_2), (*)(-1, x_134, y_3))), (*)(-1, y_3, (+)((*)(x_124, y_3), (*)(x_234, y_1), (*)(-1, x_123, y_4), (*)(-1, x_134, y_2))))
    ret_123 = (+)((*)(y_1, (+)((*)(x_123, y_1), (*)(x_3, y_2), (*)(-1, x_2, y_3))), (*)(y_3, (+)((*)(x_123, y_3), (*)(x_2, y_1), (*)(-1, x_1, y_2))), (*)(-1, y_2, (+)((*)(x_3, y_1), (*)(-1, x_1, y_3), (*)(-1, x_123, y_2))))
    ret_1234 = (+)((*)(y_2, (+)((*)(x_13, y_4), (*)(x_34, y_1), (*)(-1, x_1234, y_2), (*)(-1, x_14, y_3))), (*)(y_4, (+)((*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_13, y_2))), (*)(-1, y_1, (+)((*)(x_1234, y_1), (*)(x_23, y_4), (*)(x_34, y_2), (*)(-1, x_24, y_3))), (*)(-1, y_3, (+)((*)(x_12, y_4), (*)(x_1234, y_3), (*)(x_24, y_1), (*)(-1, x_14, y_2))))
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function sandwich(x::MultiVectorAll, y::MultiVector2)
    x_ = x.e
    x_4 = x.e4
    x_3 = x.e3
    x_34 = x.e34
    x_2 = x.e2
    x_24 = x.e24
    x_23 = x.e23
    x_234 = x.e234
    x_1 = x.e1
    x_14 = x.e14
    x_13 = x.e13
    x_134 = x.e134
    x_12 = x.e12
    x_124 = x.e124
    x_123 = x.e123
    x_1234 = x.e1234
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    ret_ = (+)((*)(-1, y_12, (+)((*)(x_23, y_13), (*)(-1, x_, y_12), (*)(-1, x_13, y_23))), (*)(-1, y_13, (+)((*)(x_12, y_23), (*)(-1, x_, y_13), (*)(-1, x_23, y_12))), (*)(-1, y_23, (+)((*)(x_13, y_12), (*)(-1, x_, y_23), (*)(-1, x_12, y_13))))
    ret_4 = (+)((*)(y_14, (+)((*)(x_123, y_23), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))), (*)(y_24, (+)((*)(x_1, y_12), (*)(-1, x_123, y_13), (*)(-1, x_3, y_23))), (*)(y_34, (+)((*)(x_1, y_13), (*)(x_123, y_12), (*)(x_2, y_23))), (*)(-1, y_12, (+)((*)(x_123, y_34), (*)(x_2, y_14), (*)(x_234, y_13), (*)(-1, x_1, y_24), (*)(-1, x_134, y_23), (*)(-1, x_4, y_12))), (*)(-1, y_13, (+)((*)(x_124, y_23), (*)(x_3, y_14), (*)(-1, x_1, y_34), (*)(-1, x_123, y_24), (*)(-1, x_234, y_12), (*)(-1, x_4, y_13))), (*)(-1, y_23, (+)((*)(x_123, y_14), (*)(x_134, y_12), (*)(x_3, y_24), (*)(-1, x_124, y_13), (*)(-1, x_2, y_34), (*)(-1, x_4, y_23))))
    ret_3 = (+)((*)(y_13, (+)((*)(x_123, y_23), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))), (*)(y_23, (+)((*)(x_1, y_12), (*)(-1, x_123, y_13), (*)(-1, x_3, y_23))), (*)(-1, y_12, (+)((*)(x_2, y_13), (*)(-1, x_1, y_23), (*)(-1, x_3, y_12))))
    ret_34 = (+)((*)(y_13, (+)((*)(x_12, y_24), (*)(x_1234, y_23), (*)(x_13, y_34), (*)(-1, x_, y_14), (*)(-1, x_24, y_12), (*)(-1, x_34, y_13))), (*)(y_23, (+)((*)(x_14, y_12), (*)(x_23, y_34), (*)(-1, x_, y_24), (*)(-1, x_12, y_14), (*)(-1, x_1234, y_13), (*)(-1, x_34, y_23))), (*)(y_34, (+)((*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(-1, y_12, (+)((*)(x_13, y_24), (*)(x_24, y_13), (*)(-1, x_12, y_34), (*)(-1, x_14, y_23), (*)(-1, x_23, y_14), (*)(-1, x_34, y_12))), (*)(-1, y_14, (+)((*)(x_12, y_23), (*)(-1, x_, y_13), (*)(-1, x_23, y_12))), (*)(-1, y_24, (+)((*)(x_13, y_12), (*)(-1, x_, y_23), (*)(-1, x_12, y_13))))
    ret_2 = (+)((*)(y_12, (+)((*)(x_123, y_23), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))), (*)(y_13, (+)((*)(x_2, y_13), (*)(-1, x_1, y_23), (*)(-1, x_3, y_12))), (*)(-1, y_23, (+)((*)(x_1, y_13), (*)(x_123, y_12), (*)(x_2, y_23))))
    ret_24 = (+)((*)(y_12, (+)((*)(x_12, y_24), (*)(x_1234, y_23), (*)(x_13, y_34), (*)(-1, x_, y_14), (*)(-1, x_24, y_12), (*)(-1, x_34, y_13))), (*)(y_13, (+)((*)(x_13, y_24), (*)(x_24, y_13), (*)(-1, x_12, y_34), (*)(-1, x_14, y_23), (*)(-1, x_23, y_14), (*)(-1, x_34, y_12))), (*)(y_24, (+)((*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(y_34, (+)((*)(x_13, y_12), (*)(-1, x_, y_23), (*)(-1, x_12, y_13))), (*)(-1, y_14, (+)((*)(x_23, y_13), (*)(-1, x_, y_12), (*)(-1, x_13, y_23))), (*)(-1, y_23, (+)((*)(x_1234, y_12), (*)(x_14, y_13), (*)(x_24, y_23), (*)(-1, x_, y_34), (*)(-1, x_13, y_14), (*)(-1, x_23, y_24))))
    ret_23 = (+)((*)(y_12, (+)((*)(x_12, y_23), (*)(-1, x_, y_13), (*)(-1, x_23, y_12))), (*)(y_23, (+)((*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(-1, y_13, (+)((*)(x_23, y_13), (*)(-1, x_, y_12), (*)(-1, x_13, y_23))))
    ret_234 = (+)((*)(y_12, (+)((*)(x_124, y_23), (*)(x_3, y_14), (*)(-1, x_1, y_34), (*)(-1, x_123, y_24), (*)(-1, x_234, y_12), (*)(-1, x_4, y_13))), (*)(y_14, (+)((*)(x_2, y_13), (*)(-1, x_1, y_23), (*)(-1, x_3, y_12))), (*)(y_23, (+)((*)(x_1, y_14), (*)(x_124, y_12), (*)(x_134, y_13), (*)(x_2, y_24), (*)(x_234, y_23), (*)(x_3, y_34))), (*)(y_34, (+)((*)(x_1, y_12), (*)(-1, x_123, y_13), (*)(-1, x_3, y_23))), (*)(-1, y_13, (+)((*)(x_123, y_34), (*)(x_2, y_14), (*)(x_234, y_13), (*)(-1, x_1, y_24), (*)(-1, x_134, y_23), (*)(-1, x_4, y_12))), (*)(-1, y_24, (+)((*)(x_1, y_13), (*)(x_123, y_12), (*)(x_2, y_23))))
    ret_1 = (+)((*)(-1, y_12, (+)((*)(x_1, y_12), (*)(-1, x_123, y_13), (*)(-1, x_3, y_23))), (*)(-1, y_13, (+)((*)(x_1, y_13), (*)(x_123, y_12), (*)(x_2, y_23))), (*)(-1, y_23, (+)((*)(x_2, y_13), (*)(-1, x_1, y_23), (*)(-1, x_3, y_12))))
    ret_14 = (+)((*)(y_14, (+)((*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(y_24, (+)((*)(x_23, y_13), (*)(-1, x_, y_12), (*)(-1, x_13, y_23))), (*)(y_34, (+)((*)(x_12, y_23), (*)(-1, x_, y_13), (*)(-1, x_23, y_12))), (*)(-1, y_12, (+)((*)(x_14, y_12), (*)(x_23, y_34), (*)(-1, x_, y_24), (*)(-1, x_12, y_14), (*)(-1, x_1234, y_13), (*)(-1, x_34, y_23))), (*)(-1, y_13, (+)((*)(x_1234, y_12), (*)(x_14, y_13), (*)(x_24, y_23), (*)(-1, x_, y_34), (*)(-1, x_13, y_14), (*)(-1, x_23, y_24))), (*)(-1, y_23, (+)((*)(x_13, y_24), (*)(x_24, y_13), (*)(-1, x_12, y_34), (*)(-1, x_14, y_23), (*)(-1, x_23, y_14), (*)(-1, x_34, y_12))))
    ret_13 = (+)((*)(y_13, (+)((*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(y_23, (+)((*)(x_23, y_13), (*)(-1, x_, y_12), (*)(-1, x_13, y_23))), (*)(-1, y_12, (+)((*)(x_13, y_12), (*)(-1, x_, y_23), (*)(-1, x_12, y_13))))
    ret_134 = (+)((*)(y_13, (+)((*)(x_1, y_14), (*)(x_124, y_12), (*)(x_134, y_13), (*)(x_2, y_24), (*)(x_234, y_23), (*)(x_3, y_34))), (*)(y_23, (+)((*)(x_123, y_34), (*)(x_2, y_14), (*)(x_234, y_13), (*)(-1, x_1, y_24), (*)(-1, x_134, y_23), (*)(-1, x_4, y_12))), (*)(y_34, (+)((*)(x_123, y_23), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))), (*)(-1, y_12, (+)((*)(x_123, y_14), (*)(x_134, y_12), (*)(x_3, y_24), (*)(-1, x_124, y_13), (*)(-1, x_2, y_34), (*)(-1, x_4, y_23))), (*)(-1, y_14, (+)((*)(x_1, y_13), (*)(x_123, y_12), (*)(x_2, y_23))), (*)(-1, y_24, (+)((*)(x_2, y_13), (*)(-1, x_1, y_23), (*)(-1, x_3, y_12))))
    ret_12 = (+)((*)(y_12, (+)((*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(y_13, (+)((*)(x_13, y_12), (*)(-1, x_, y_23), (*)(-1, x_12, y_13))), (*)(-1, y_23, (+)((*)(x_12, y_23), (*)(-1, x_, y_13), (*)(-1, x_23, y_12))))
    ret_124 = (+)((*)(y_12, (+)((*)(x_1, y_14), (*)(x_124, y_12), (*)(x_134, y_13), (*)(x_2, y_24), (*)(x_234, y_23), (*)(x_3, y_34))), (*)(y_13, (+)((*)(x_123, y_14), (*)(x_134, y_12), (*)(x_3, y_24), (*)(-1, x_124, y_13), (*)(-1, x_2, y_34), (*)(-1, x_4, y_23))), (*)(y_24, (+)((*)(x_123, y_23), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))), (*)(y_34, (+)((*)(x_2, y_13), (*)(-1, x_1, y_23), (*)(-1, x_3, y_12))), (*)(-1, y_14, (+)((*)(x_1, y_12), (*)(-1, x_123, y_13), (*)(-1, x_3, y_23))), (*)(-1, y_23, (+)((*)(x_124, y_23), (*)(x_3, y_14), (*)(-1, x_1, y_34), (*)(-1, x_123, y_24), (*)(-1, x_234, y_12), (*)(-1, x_4, y_13))))
    ret_123 = (+)((*)(y_12, (+)((*)(x_1, y_13), (*)(x_123, y_12), (*)(x_2, y_23))), (*)(y_23, (+)((*)(x_123, y_23), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))), (*)(-1, y_13, (+)((*)(x_1, y_12), (*)(-1, x_123, y_13), (*)(-1, x_3, y_23))))
    ret_1234 = (+)((*)(y_12, (+)((*)(x_1234, y_12), (*)(x_14, y_13), (*)(x_24, y_23), (*)(-1, x_, y_34), (*)(-1, x_13, y_14), (*)(-1, x_23, y_24))), (*)(y_14, (+)((*)(x_13, y_12), (*)(-1, x_, y_23), (*)(-1, x_12, y_13))), (*)(y_23, (+)((*)(x_12, y_24), (*)(x_1234, y_23), (*)(x_13, y_34), (*)(-1, x_, y_14), (*)(-1, x_24, y_12), (*)(-1, x_34, y_13))), (*)(y_34, (+)((*)(x_23, y_13), (*)(-1, x_, y_12), (*)(-1, x_13, y_23))), (*)(-1, y_13, (+)((*)(x_14, y_12), (*)(x_23, y_34), (*)(-1, x_, y_24), (*)(-1, x_12, y_14), (*)(-1, x_1234, y_13), (*)(-1, x_34, y_23))), (*)(-1, y_24, (+)((*)(x_12, y_23), (*)(-1, x_, y_13), (*)(-1, x_23, y_12))))
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function sandwich(x::MultiVectorAll, y::MultiVector3)
    x_ = x.e
    x_4 = x.e4
    x_3 = x.e3
    x_34 = x.e34
    x_2 = x.e2
    x_24 = x.e24
    x_23 = x.e23
    x_234 = x.e234
    x_1 = x.e1
    x_14 = x.e14
    x_13 = x.e13
    x_134 = x.e134
    x_12 = x.e12
    x_124 = x.e124
    x_123 = x.e123
    x_1234 = x.e1234
    y_234 = y.e234
    y_134 = y.e134
    y_124 = y.e124
    y_123 = y.e123
    ret_ = (*)(x_, (^)(y_123, 2))
    ret_4 = (+)((*)(y_123, (+)((*)(x_1, y_234), (*)(x_3, y_124), (*)(-1, x_2, y_134), (*)(-1, x_4, y_123))), (*)(x_1, y_123, y_234), (*)(x_3, y_123, y_124), (*)(-1, x_2, y_123, y_134))
    ret_3 = (*)(x_3, (^)(y_123, 2))
    ret_34 = (+)((*)(y_123, (+)((*)(x_23, y_134), (*)(-1, x_, y_124), (*)(-1, x_13, y_234), (*)(-1, x_34, y_123))), (*)(x_, y_123, y_124), (*)(x_23, y_123, y_134), (*)(-1, x_13, y_123, y_234))
    ret_2 = (*)(x_2, (^)(y_123, 2))
    ret_24 = (+)((*)(x_23, y_123, y_124), (*)(-1, y_123, (+)((*)(x_12, y_234), (*)(x_24, y_123), (*)(-1, x_, y_134), (*)(-1, x_23, y_124))), (*)(-1, x_, y_123, y_134), (*)(-1, x_12, y_123, y_234))
    ret_23 = (*)(x_23, (^)(y_123, 2))
    ret_234 = (+)((*)(x_123, y_123, y_234), (*)(x_2, y_123, y_124), (*)(x_3, y_123, y_134), (*)(-1, y_123, (+)((*)(x_2, y_124), (*)(x_234, y_123), (*)(x_3, y_134), (*)(-1, x_123, y_234))))
    ret_1 = (*)(x_1, (^)(y_123, 2))
    ret_14 = (+)((*)(y_123, (+)((*)(x_13, y_124), (*)(-1, x_, y_234), (*)(-1, x_12, y_134), (*)(-1, x_14, y_123))), (*)(x_, y_123, y_234), (*)(x_13, y_123, y_124), (*)(-1, x_12, y_123, y_134))
    ret_13 = (*)(x_13, (^)(y_123, 2))
    ret_134 = (+)((*)(y_123, (+)((*)(x_123, y_134), (*)(x_3, y_234), (*)(-1, x_1, y_124), (*)(-1, x_134, y_123))), (*)(x_1, y_123, y_124), (*)(x_123, y_123, y_134), (*)(-1, x_3, y_123, y_234))
    ret_12 = (*)(x_12, (^)(y_123, 2))
    ret_124 = (+)((*)(x_123, y_123, y_124), (*)(-1, y_123, (+)((*)(x_124, y_123), (*)(-1, x_1, y_134), (*)(-1, x_123, y_124), (*)(-1, x_2, y_234))), (*)(-1, x_1, y_123, y_134), (*)(-1, x_2, y_123, y_234))
    ret_123 = (*)(x_123, (^)(y_123, 2))
    ret_1234 = (+)((*)(x_12, y_123, y_124), (*)(x_13, y_123, y_134), (*)(x_23, y_123, y_234), (*)(-1, y_123, (+)((*)(x_12, y_124), (*)(x_1234, y_123), (*)(x_13, y_134), (*)(x_23, y_234))))
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function sandwich(x::MultiVectorAll, y::MultiVector4)
    return MultiVectorZero(; )
end
function sandwich(x::MultiVectorAll, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function sandwich(x::MultiVectorEven, y::MultiVectorAll)
    x_ = x.e
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    x_1234 = x.e1234
    y_ = y.e
    y_4 = y.e4
    y_3 = y.e3
    y_34 = y.e34
    y_2 = y.e2
    y_24 = y.e24
    y_23 = y.e23
    y_234 = y.e234
    y_1 = y.e1
    y_14 = y.e14
    y_13 = y.e13
    y_134 = y.e134
    y_12 = y.e12
    y_124 = y.e124
    y_123 = y.e123
    y_1234 = y.e1234
    ret_ = (+)((*)(y_, (+)((*)(x_, y_), (*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(y_1, (+)((*)(x_, y_1), (*)(x_23, y_123), (*)(-1, x_12, y_2), (*)(-1, x_13, y_3))), (*)(y_2, (+)((*)(x_, y_2), (*)(x_12, y_1), (*)(-1, x_13, y_123), (*)(-1, x_23, y_3))), (*)(y_3, (+)((*)(x_, y_3), (*)(x_12, y_123), (*)(x_13, y_1), (*)(x_23, y_2))), (*)(-1, y_12, (+)((*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_, y_12), (*)(-1, x_13, y_23))), (*)(-1, y_123, (+)((*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_, y_123), (*)(-1, x_13, y_2))), (*)(-1, y_13, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_, y_13), (*)(-1, x_23, y_12))), (*)(-1, y_23, (+)((*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_, y_23), (*)(-1, x_12, y_13))))
    ret_4 = (+)((*)(y_, (+)((*)(x_, y_4), (*)(x_12, y_124), (*)(x_1234, y_123), (*)(x_13, y_134), (*)(x_14, y_1), (*)(x_23, y_234), (*)(x_24, y_2), (*)(x_34, y_3))), (*)(y_123, (+)((*)(x_, y_1234), (*)(x_1234, y_), (*)(x_13, y_24), (*)(x_24, y_13), (*)(-1, x_12, y_34), (*)(-1, x_14, y_23), (*)(-1, x_23, y_14), (*)(-1, x_34, y_12))), (*)(y_14, (+)((*)(x_, y_1), (*)(x_23, y_123), (*)(-1, x_12, y_2), (*)(-1, x_13, y_3))), (*)(y_24, (+)((*)(x_, y_2), (*)(x_12, y_1), (*)(-1, x_13, y_123), (*)(-1, x_23, y_3))), (*)(y_34, (+)((*)(x_, y_3), (*)(x_12, y_123), (*)(x_13, y_1), (*)(x_23, y_2))), (*)(y_4, (+)((*)(x_, y_), (*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(-1, y_1, (+)((*)(x_12, y_24), (*)(x_1234, y_23), (*)(x_13, y_34), (*)(x_14, y_), (*)(-1, x_, y_14), (*)(-1, x_23, y_1234), (*)(-1, x_24, y_12), (*)(-1, x_34, y_13))), (*)(-1, y_12, (+)((*)(x_12, y_4), (*)(x_1234, y_3), (*)(x_23, y_134), (*)(x_24, y_1), (*)(-1, x_, y_124), (*)(-1, x_13, y_234), (*)(-1, x_14, y_2), (*)(-1, x_34, y_123))), (*)(-1, y_1234, (+)((*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_, y_123), (*)(-1, x_13, y_2))), (*)(-1, y_124, (+)((*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_, y_12), (*)(-1, x_13, y_23))), (*)(-1, y_13, (+)((*)(x_12, y_234), (*)(x_13, y_4), (*)(x_24, y_123), (*)(x_34, y_1), (*)(-1, x_, y_134), (*)(-1, x_1234, y_2), (*)(-1, x_14, y_3), (*)(-1, x_23, y_124))), (*)(-1, y_134, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_, y_13), (*)(-1, x_23, y_12))), (*)(-1, y_2, (+)((*)(x_13, y_1234), (*)(x_14, y_12), (*)(x_23, y_34), (*)(x_24, y_), (*)(-1, x_, y_24), (*)(-1, x_12, y_14), (*)(-1, x_1234, y_13), (*)(-1, x_34, y_23))), (*)(-1, y_23, (+)((*)(x_1234, y_1), (*)(x_13, y_124), (*)(x_23, y_4), (*)(x_34, y_2), (*)(-1, x_, y_234), (*)(-1, x_12, y_134), (*)(-1, x_14, y_123), (*)(-1, x_24, y_3))), (*)(-1, y_234, (+)((*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_, y_23), (*)(-1, x_12, y_13))), (*)(-1, y_3, (+)((*)(x_1234, y_12), (*)(x_14, y_13), (*)(x_24, y_23), (*)(x_34, y_), (*)(-1, x_, y_34), (*)(-1, x_12, y_1234), (*)(-1, x_13, y_14), (*)(-1, x_23, y_24))))
    ret_3 = (+)((*)(y_, (+)((*)(x_, y_3), (*)(x_12, y_123), (*)(x_13, y_1), (*)(x_23, y_2))), (*)(y_13, (+)((*)(x_, y_1), (*)(x_23, y_123), (*)(-1, x_12, y_2), (*)(-1, x_13, y_3))), (*)(y_23, (+)((*)(x_, y_2), (*)(x_12, y_1), (*)(-1, x_13, y_123), (*)(-1, x_23, y_3))), (*)(y_3, (+)((*)(x_, y_), (*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(-1, y_1, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_, y_13), (*)(-1, x_23, y_12))), (*)(-1, y_12, (+)((*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_, y_123), (*)(-1, x_13, y_2))), (*)(-1, y_123, (+)((*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_, y_12), (*)(-1, x_13, y_23))), (*)(-1, y_2, (+)((*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_, y_23), (*)(-1, x_12, y_13))))
    ret_34 = (+)((*)(y_, (+)((*)(x_1234, y_12), (*)(x_14, y_13), (*)(x_24, y_23), (*)(x_34, y_), (*)(-1, x_, y_34), (*)(-1, x_12, y_1234), (*)(-1, x_13, y_14), (*)(-1, x_23, y_24))), (*)(y_1, (+)((*)(x_12, y_234), (*)(x_13, y_4), (*)(x_24, y_123), (*)(x_34, y_1), (*)(-1, x_, y_134), (*)(-1, x_1234, y_2), (*)(-1, x_14, y_3), (*)(-1, x_23, y_124))), (*)(y_123, (+)((*)(x_12, y_4), (*)(x_1234, y_3), (*)(x_23, y_134), (*)(x_24, y_1), (*)(-1, x_, y_124), (*)(-1, x_13, y_234), (*)(-1, x_14, y_2), (*)(-1, x_34, y_123))), (*)(y_13, (+)((*)(x_12, y_24), (*)(x_1234, y_23), (*)(x_13, y_34), (*)(x_14, y_), (*)(-1, x_, y_14), (*)(-1, x_23, y_1234), (*)(-1, x_24, y_12), (*)(-1, x_34, y_13))), (*)(y_134, (+)((*)(x_, y_1), (*)(x_23, y_123), (*)(-1, x_12, y_2), (*)(-1, x_13, y_3))), (*)(y_2, (+)((*)(x_1234, y_1), (*)(x_13, y_124), (*)(x_23, y_4), (*)(x_34, y_2), (*)(-1, x_, y_234), (*)(-1, x_12, y_134), (*)(-1, x_14, y_123), (*)(-1, x_24, y_3))), (*)(y_23, (+)((*)(x_13, y_1234), (*)(x_14, y_12), (*)(x_23, y_34), (*)(x_24, y_), (*)(-1, x_, y_24), (*)(-1, x_12, y_14), (*)(-1, x_1234, y_13), (*)(-1, x_34, y_23))), (*)(y_234, (+)((*)(x_, y_2), (*)(x_12, y_1), (*)(-1, x_13, y_123), (*)(-1, x_23, y_3))), (*)(y_34, (+)((*)(x_, y_), (*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(y_4, (+)((*)(x_, y_3), (*)(x_12, y_123), (*)(x_13, y_1), (*)(x_23, y_2))), (*)(-1, y_12, (+)((*)(x_, y_1234), (*)(x_1234, y_), (*)(x_13, y_24), (*)(x_24, y_13), (*)(-1, x_12, y_34), (*)(-1, x_14, y_23), (*)(-1, x_23, y_14), (*)(-1, x_34, y_12))), (*)(-1, y_1234, (+)((*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_, y_12), (*)(-1, x_13, y_23))), (*)(-1, y_124, (+)((*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_, y_123), (*)(-1, x_13, y_2))), (*)(-1, y_14, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_, y_13), (*)(-1, x_23, y_12))), (*)(-1, y_24, (+)((*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_, y_23), (*)(-1, x_12, y_13))), (*)(-1, y_3, (+)((*)(x_, y_4), (*)(x_12, y_124), (*)(x_1234, y_123), (*)(x_13, y_134), (*)(x_14, y_1), (*)(x_23, y_234), (*)(x_24, y_2), (*)(x_34, y_3))))
    ret_2 = (+)((*)(y_, (+)((*)(x_, y_2), (*)(x_12, y_1), (*)(-1, x_13, y_123), (*)(-1, x_23, y_3))), (*)(y_12, (+)((*)(x_, y_1), (*)(x_23, y_123), (*)(-1, x_12, y_2), (*)(-1, x_13, y_3))), (*)(y_123, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_, y_13), (*)(-1, x_23, y_12))), (*)(y_13, (+)((*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_, y_123), (*)(-1, x_13, y_2))), (*)(y_2, (+)((*)(x_, y_), (*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(y_3, (+)((*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_, y_23), (*)(-1, x_12, y_13))), (*)(-1, y_1, (+)((*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_, y_12), (*)(-1, x_13, y_23))), (*)(-1, y_23, (+)((*)(x_, y_3), (*)(x_12, y_123), (*)(x_13, y_1), (*)(x_23, y_2))))
    ret_24 = (+)((*)(y_, (+)((*)(x_13, y_1234), (*)(x_14, y_12), (*)(x_23, y_34), (*)(x_24, y_), (*)(-1, x_, y_24), (*)(-1, x_12, y_14), (*)(-1, x_1234, y_13), (*)(-1, x_34, y_23))), (*)(y_1, (+)((*)(x_12, y_4), (*)(x_1234, y_3), (*)(x_23, y_134), (*)(x_24, y_1), (*)(-1, x_, y_124), (*)(-1, x_13, y_234), (*)(-1, x_14, y_2), (*)(-1, x_34, y_123))), (*)(y_12, (+)((*)(x_12, y_24), (*)(x_1234, y_23), (*)(x_13, y_34), (*)(x_14, y_), (*)(-1, x_, y_14), (*)(-1, x_23, y_1234), (*)(-1, x_24, y_12), (*)(-1, x_34, y_13))), (*)(y_1234, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_, y_13), (*)(-1, x_23, y_12))), (*)(y_124, (+)((*)(x_, y_1), (*)(x_23, y_123), (*)(-1, x_12, y_2), (*)(-1, x_13, y_3))), (*)(y_13, (+)((*)(x_, y_1234), (*)(x_1234, y_), (*)(x_13, y_24), (*)(x_24, y_13), (*)(-1, x_12, y_34), (*)(-1, x_14, y_23), (*)(-1, x_23, y_14), (*)(-1, x_34, y_12))), (*)(y_134, (+)((*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_, y_123), (*)(-1, x_13, y_2))), (*)(y_24, (+)((*)(x_, y_), (*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(y_34, (+)((*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_, y_23), (*)(-1, x_12, y_13))), (*)(y_4, (+)((*)(x_, y_2), (*)(x_12, y_1), (*)(-1, x_13, y_123), (*)(-1, x_23, y_3))), (*)(-1, y_123, (+)((*)(x_12, y_234), (*)(x_13, y_4), (*)(x_24, y_123), (*)(x_34, y_1), (*)(-1, x_, y_134), (*)(-1, x_1234, y_2), (*)(-1, x_14, y_3), (*)(-1, x_23, y_124))), (*)(-1, y_14, (+)((*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_, y_12), (*)(-1, x_13, y_23))), (*)(-1, y_2, (+)((*)(x_, y_4), (*)(x_12, y_124), (*)(x_1234, y_123), (*)(x_13, y_134), (*)(x_14, y_1), (*)(x_23, y_234), (*)(x_24, y_2), (*)(x_34, y_3))), (*)(-1, y_23, (+)((*)(x_1234, y_12), (*)(x_14, y_13), (*)(x_24, y_23), (*)(x_34, y_), (*)(-1, x_, y_34), (*)(-1, x_12, y_1234), (*)(-1, x_13, y_14), (*)(-1, x_23, y_24))), (*)(-1, y_234, (+)((*)(x_, y_3), (*)(x_12, y_123), (*)(x_13, y_1), (*)(x_23, y_2))), (*)(-1, y_3, (+)((*)(x_1234, y_1), (*)(x_13, y_124), (*)(x_23, y_4), (*)(x_34, y_2), (*)(-1, x_, y_234), (*)(-1, x_12, y_134), (*)(-1, x_14, y_123), (*)(-1, x_24, y_3))))
    ret_23 = (+)((*)(y_, (+)((*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_, y_23), (*)(-1, x_12, y_13))), (*)(y_1, (+)((*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_, y_123), (*)(-1, x_13, y_2))), (*)(y_12, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_, y_13), (*)(-1, x_23, y_12))), (*)(y_123, (+)((*)(x_, y_1), (*)(x_23, y_123), (*)(-1, x_12, y_2), (*)(-1, x_13, y_3))), (*)(y_23, (+)((*)(x_, y_), (*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(y_3, (+)((*)(x_, y_2), (*)(x_12, y_1), (*)(-1, x_13, y_123), (*)(-1, x_23, y_3))), (*)(-1, y_13, (+)((*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_, y_12), (*)(-1, x_13, y_23))), (*)(-1, y_2, (+)((*)(x_, y_3), (*)(x_12, y_123), (*)(x_13, y_1), (*)(x_23, y_2))))
    ret_234 = (+)((*)(y_, (+)((*)(x_1234, y_1), (*)(x_13, y_124), (*)(x_23, y_4), (*)(x_34, y_2), (*)(-1, x_, y_234), (*)(-1, x_12, y_134), (*)(-1, x_14, y_123), (*)(-1, x_24, y_3))), (*)(y_12, (+)((*)(x_12, y_234), (*)(x_13, y_4), (*)(x_24, y_123), (*)(x_34, y_1), (*)(-1, x_, y_134), (*)(-1, x_1234, y_2), (*)(-1, x_14, y_3), (*)(-1, x_23, y_124))), (*)(y_1234, (+)((*)(x_, y_1), (*)(x_23, y_123), (*)(-1, x_12, y_2), (*)(-1, x_13, y_3))), (*)(y_124, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_, y_13), (*)(-1, x_23, y_12))), (*)(y_14, (+)((*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_, y_123), (*)(-1, x_13, y_2))), (*)(y_2, (+)((*)(x_1234, y_12), (*)(x_14, y_13), (*)(x_24, y_23), (*)(x_34, y_), (*)(-1, x_, y_34), (*)(-1, x_12, y_1234), (*)(-1, x_13, y_14), (*)(-1, x_23, y_24))), (*)(y_23, (+)((*)(x_, y_4), (*)(x_12, y_124), (*)(x_1234, y_123), (*)(x_13, y_134), (*)(x_14, y_1), (*)(x_23, y_234), (*)(x_24, y_2), (*)(x_34, y_3))), (*)(y_234, (+)((*)(x_, y_), (*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(y_34, (+)((*)(x_, y_2), (*)(x_12, y_1), (*)(-1, x_13, y_123), (*)(-1, x_23, y_3))), (*)(y_4, (+)((*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_, y_23), (*)(-1, x_12, y_13))), (*)(-1, y_1, (+)((*)(x_, y_1234), (*)(x_1234, y_), (*)(x_13, y_24), (*)(x_24, y_13), (*)(-1, x_12, y_34), (*)(-1, x_14, y_23), (*)(-1, x_23, y_14), (*)(-1, x_34, y_12))), (*)(-1, y_123, (+)((*)(x_12, y_24), (*)(x_1234, y_23), (*)(x_13, y_34), (*)(x_14, y_), (*)(-1, x_, y_14), (*)(-1, x_23, y_1234), (*)(-1, x_24, y_12), (*)(-1, x_34, y_13))), (*)(-1, y_13, (+)((*)(x_12, y_4), (*)(x_1234, y_3), (*)(x_23, y_134), (*)(x_24, y_1), (*)(-1, x_, y_124), (*)(-1, x_13, y_234), (*)(-1, x_14, y_2), (*)(-1, x_34, y_123))), (*)(-1, y_134, (+)((*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_, y_12), (*)(-1, x_13, y_23))), (*)(-1, y_24, (+)((*)(x_, y_3), (*)(x_12, y_123), (*)(x_13, y_1), (*)(x_23, y_2))), (*)(-1, y_3, (+)((*)(x_13, y_1234), (*)(x_14, y_12), (*)(x_23, y_34), (*)(x_24, y_), (*)(-1, x_, y_24), (*)(-1, x_12, y_14), (*)(-1, x_1234, y_13), (*)(-1, x_34, y_23))))
    ret_1 = (+)((*)(y_, (+)((*)(x_, y_1), (*)(x_23, y_123), (*)(-1, x_12, y_2), (*)(-1, x_13, y_3))), (*)(y_1, (+)((*)(x_, y_), (*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(y_2, (+)((*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_, y_12), (*)(-1, x_13, y_23))), (*)(y_3, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_, y_13), (*)(-1, x_23, y_12))), (*)(-1, y_12, (+)((*)(x_, y_2), (*)(x_12, y_1), (*)(-1, x_13, y_123), (*)(-1, x_23, y_3))), (*)(-1, y_123, (+)((*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_, y_23), (*)(-1, x_12, y_13))), (*)(-1, y_13, (+)((*)(x_, y_3), (*)(x_12, y_123), (*)(x_13, y_1), (*)(x_23, y_2))), (*)(-1, y_23, (+)((*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_, y_123), (*)(-1, x_13, y_2))))
    ret_14 = (+)((*)(y_, (+)((*)(x_12, y_24), (*)(x_1234, y_23), (*)(x_13, y_34), (*)(x_14, y_), (*)(-1, x_, y_14), (*)(-1, x_23, y_1234), (*)(-1, x_24, y_12), (*)(-1, x_34, y_13))), (*)(y_123, (+)((*)(x_1234, y_1), (*)(x_13, y_124), (*)(x_23, y_4), (*)(x_34, y_2), (*)(-1, x_, y_234), (*)(-1, x_12, y_134), (*)(-1, x_14, y_123), (*)(-1, x_24, y_3))), (*)(y_14, (+)((*)(x_, y_), (*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(y_24, (+)((*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_, y_12), (*)(-1, x_13, y_23))), (*)(y_34, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_, y_13), (*)(-1, x_23, y_12))), (*)(y_4, (+)((*)(x_, y_1), (*)(x_23, y_123), (*)(-1, x_12, y_2), (*)(-1, x_13, y_3))), (*)(-1, y_1, (+)((*)(x_, y_4), (*)(x_12, y_124), (*)(x_1234, y_123), (*)(x_13, y_134), (*)(x_14, y_1), (*)(x_23, y_234), (*)(x_24, y_2), (*)(x_34, y_3))), (*)(-1, y_12, (+)((*)(x_13, y_1234), (*)(x_14, y_12), (*)(x_23, y_34), (*)(x_24, y_), (*)(-1, x_, y_24), (*)(-1, x_12, y_14), (*)(-1, x_1234, y_13), (*)(-1, x_34, y_23))), (*)(-1, y_1234, (+)((*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_, y_23), (*)(-1, x_12, y_13))), (*)(-1, y_124, (+)((*)(x_, y_2), (*)(x_12, y_1), (*)(-1, x_13, y_123), (*)(-1, x_23, y_3))), (*)(-1, y_13, (+)((*)(x_1234, y_12), (*)(x_14, y_13), (*)(x_24, y_23), (*)(x_34, y_), (*)(-1, x_, y_34), (*)(-1, x_12, y_1234), (*)(-1, x_13, y_14), (*)(-1, x_23, y_24))), (*)(-1, y_134, (+)((*)(x_, y_3), (*)(x_12, y_123), (*)(x_13, y_1), (*)(x_23, y_2))), (*)(-1, y_2, (+)((*)(x_12, y_4), (*)(x_1234, y_3), (*)(x_23, y_134), (*)(x_24, y_1), (*)(-1, x_, y_124), (*)(-1, x_13, y_234), (*)(-1, x_14, y_2), (*)(-1, x_34, y_123))), (*)(-1, y_23, (+)((*)(x_, y_1234), (*)(x_1234, y_), (*)(x_13, y_24), (*)(x_24, y_13), (*)(-1, x_12, y_34), (*)(-1, x_14, y_23), (*)(-1, x_23, y_14), (*)(-1, x_34, y_12))), (*)(-1, y_234, (+)((*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_, y_123), (*)(-1, x_13, y_2))), (*)(-1, y_3, (+)((*)(x_12, y_234), (*)(x_13, y_4), (*)(x_24, y_123), (*)(x_34, y_1), (*)(-1, x_, y_134), (*)(-1, x_1234, y_2), (*)(-1, x_14, y_3), (*)(-1, x_23, y_124))))
    ret_13 = (+)((*)(y_, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_, y_13), (*)(-1, x_23, y_12))), (*)(y_13, (+)((*)(x_, y_), (*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(y_23, (+)((*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_, y_12), (*)(-1, x_13, y_23))), (*)(y_3, (+)((*)(x_, y_1), (*)(x_23, y_123), (*)(-1, x_12, y_2), (*)(-1, x_13, y_3))), (*)(-1, y_1, (+)((*)(x_, y_3), (*)(x_12, y_123), (*)(x_13, y_1), (*)(x_23, y_2))), (*)(-1, y_12, (+)((*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_, y_23), (*)(-1, x_12, y_13))), (*)(-1, y_123, (+)((*)(x_, y_2), (*)(x_12, y_1), (*)(-1, x_13, y_123), (*)(-1, x_23, y_3))), (*)(-1, y_2, (+)((*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_, y_123), (*)(-1, x_13, y_2))))
    ret_134 = (+)((*)(y_, (+)((*)(x_12, y_234), (*)(x_13, y_4), (*)(x_24, y_123), (*)(x_34, y_1), (*)(-1, x_, y_134), (*)(-1, x_1234, y_2), (*)(-1, x_14, y_3), (*)(-1, x_23, y_124))), (*)(y_1, (+)((*)(x_1234, y_12), (*)(x_14, y_13), (*)(x_24, y_23), (*)(x_34, y_), (*)(-1, x_, y_34), (*)(-1, x_12, y_1234), (*)(-1, x_13, y_14), (*)(-1, x_23, y_24))), (*)(y_123, (+)((*)(x_13, y_1234), (*)(x_14, y_12), (*)(x_23, y_34), (*)(x_24, y_), (*)(-1, x_, y_24), (*)(-1, x_12, y_14), (*)(-1, x_1234, y_13), (*)(-1, x_34, y_23))), (*)(y_13, (+)((*)(x_, y_4), (*)(x_12, y_124), (*)(x_1234, y_123), (*)(x_13, y_134), (*)(x_14, y_1), (*)(x_23, y_234), (*)(x_24, y_2), (*)(x_34, y_3))), (*)(y_134, (+)((*)(x_, y_), (*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(y_2, (+)((*)(x_, y_1234), (*)(x_1234, y_), (*)(x_13, y_24), (*)(x_24, y_13), (*)(-1, x_12, y_34), (*)(-1, x_14, y_23), (*)(-1, x_23, y_14), (*)(-1, x_34, y_12))), (*)(y_23, (+)((*)(x_12, y_4), (*)(x_1234, y_3), (*)(x_23, y_134), (*)(x_24, y_1), (*)(-1, x_, y_124), (*)(-1, x_13, y_234), (*)(-1, x_14, y_2), (*)(-1, x_34, y_123))), (*)(y_234, (+)((*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_, y_12), (*)(-1, x_13, y_23))), (*)(y_34, (+)((*)(x_, y_1), (*)(x_23, y_123), (*)(-1, x_12, y_2), (*)(-1, x_13, y_3))), (*)(y_4, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_, y_13), (*)(-1, x_23, y_12))), (*)(-1, y_12, (+)((*)(x_1234, y_1), (*)(x_13, y_124), (*)(x_23, y_4), (*)(x_34, y_2), (*)(-1, x_, y_234), (*)(-1, x_12, y_134), (*)(-1, x_14, y_123), (*)(-1, x_24, y_3))), (*)(-1, y_1234, (+)((*)(x_, y_2), (*)(x_12, y_1), (*)(-1, x_13, y_123), (*)(-1, x_23, y_3))), (*)(-1, y_124, (+)((*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_, y_23), (*)(-1, x_12, y_13))), (*)(-1, y_14, (+)((*)(x_, y_3), (*)(x_12, y_123), (*)(x_13, y_1), (*)(x_23, y_2))), (*)(-1, y_24, (+)((*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_, y_123), (*)(-1, x_13, y_2))), (*)(-1, y_3, (+)((*)(x_12, y_24), (*)(x_1234, y_23), (*)(x_13, y_34), (*)(x_14, y_), (*)(-1, x_, y_14), (*)(-1, x_23, y_1234), (*)(-1, x_24, y_12), (*)(-1, x_34, y_13))))
    ret_12 = (+)((*)(y_, (+)((*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_, y_12), (*)(-1, x_13, y_23))), (*)(y_12, (+)((*)(x_, y_), (*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(y_123, (+)((*)(x_, y_3), (*)(x_12, y_123), (*)(x_13, y_1), (*)(x_23, y_2))), (*)(y_13, (+)((*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_, y_23), (*)(-1, x_12, y_13))), (*)(y_2, (+)((*)(x_, y_1), (*)(x_23, y_123), (*)(-1, x_12, y_2), (*)(-1, x_13, y_3))), (*)(y_3, (+)((*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_, y_123), (*)(-1, x_13, y_2))), (*)(-1, y_1, (+)((*)(x_, y_2), (*)(x_12, y_1), (*)(-1, x_13, y_123), (*)(-1, x_23, y_3))), (*)(-1, y_23, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_, y_13), (*)(-1, x_23, y_12))))
    ret_124 = (+)((*)(y_, (+)((*)(x_12, y_4), (*)(x_1234, y_3), (*)(x_23, y_134), (*)(x_24, y_1), (*)(-1, x_, y_124), (*)(-1, x_13, y_234), (*)(-1, x_14, y_2), (*)(-1, x_34, y_123))), (*)(y_1, (+)((*)(x_13, y_1234), (*)(x_14, y_12), (*)(x_23, y_34), (*)(x_24, y_), (*)(-1, x_, y_24), (*)(-1, x_12, y_14), (*)(-1, x_1234, y_13), (*)(-1, x_34, y_23))), (*)(y_12, (+)((*)(x_, y_4), (*)(x_12, y_124), (*)(x_1234, y_123), (*)(x_13, y_134), (*)(x_14, y_1), (*)(x_23, y_234), (*)(x_24, y_2), (*)(x_34, y_3))), (*)(y_1234, (+)((*)(x_, y_3), (*)(x_12, y_123), (*)(x_13, y_1), (*)(x_23, y_2))), (*)(y_124, (+)((*)(x_, y_), (*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(y_13, (+)((*)(x_1234, y_1), (*)(x_13, y_124), (*)(x_23, y_4), (*)(x_34, y_2), (*)(-1, x_, y_234), (*)(-1, x_12, y_134), (*)(-1, x_14, y_123), (*)(-1, x_24, y_3))), (*)(y_134, (+)((*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_, y_23), (*)(-1, x_12, y_13))), (*)(y_24, (+)((*)(x_, y_1), (*)(x_23, y_123), (*)(-1, x_12, y_2), (*)(-1, x_13, y_3))), (*)(y_34, (+)((*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_, y_123), (*)(-1, x_13, y_2))), (*)(y_4, (+)((*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_, y_12), (*)(-1, x_13, y_23))), (*)(-1, y_123, (+)((*)(x_1234, y_12), (*)(x_14, y_13), (*)(x_24, y_23), (*)(x_34, y_), (*)(-1, x_, y_34), (*)(-1, x_12, y_1234), (*)(-1, x_13, y_14), (*)(-1, x_23, y_24))), (*)(-1, y_14, (+)((*)(x_, y_2), (*)(x_12, y_1), (*)(-1, x_13, y_123), (*)(-1, x_23, y_3))), (*)(-1, y_2, (+)((*)(x_12, y_24), (*)(x_1234, y_23), (*)(x_13, y_34), (*)(x_14, y_), (*)(-1, x_, y_14), (*)(-1, x_23, y_1234), (*)(-1, x_24, y_12), (*)(-1, x_34, y_13))), (*)(-1, y_23, (+)((*)(x_12, y_234), (*)(x_13, y_4), (*)(x_24, y_123), (*)(x_34, y_1), (*)(-1, x_, y_134), (*)(-1, x_1234, y_2), (*)(-1, x_14, y_3), (*)(-1, x_23, y_124))), (*)(-1, y_234, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_, y_13), (*)(-1, x_23, y_12))), (*)(-1, y_3, (+)((*)(x_, y_1234), (*)(x_1234, y_), (*)(x_13, y_24), (*)(x_24, y_13), (*)(-1, x_12, y_34), (*)(-1, x_14, y_23), (*)(-1, x_23, y_14), (*)(-1, x_34, y_12))))
    ret_123 = (+)((*)(y_, (+)((*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_, y_123), (*)(-1, x_13, y_2))), (*)(y_1, (+)((*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_, y_23), (*)(-1, x_12, y_13))), (*)(y_12, (+)((*)(x_, y_3), (*)(x_12, y_123), (*)(x_13, y_1), (*)(x_23, y_2))), (*)(y_123, (+)((*)(x_, y_), (*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(y_23, (+)((*)(x_, y_1), (*)(x_23, y_123), (*)(-1, x_12, y_2), (*)(-1, x_13, y_3))), (*)(y_3, (+)((*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_, y_12), (*)(-1, x_13, y_23))), (*)(-1, y_13, (+)((*)(x_, y_2), (*)(x_12, y_1), (*)(-1, x_13, y_123), (*)(-1, x_23, y_3))), (*)(-1, y_2, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_, y_13), (*)(-1, x_23, y_12))))
    ret_1234 = (+)((*)(y_, (+)((*)(x_, y_1234), (*)(x_1234, y_), (*)(x_13, y_24), (*)(x_24, y_13), (*)(-1, x_12, y_34), (*)(-1, x_14, y_23), (*)(-1, x_23, y_14), (*)(-1, x_34, y_12))), (*)(y_12, (+)((*)(x_1234, y_12), (*)(x_14, y_13), (*)(x_24, y_23), (*)(x_34, y_), (*)(-1, x_, y_34), (*)(-1, x_12, y_1234), (*)(-1, x_13, y_14), (*)(-1, x_23, y_24))), (*)(y_1234, (+)((*)(x_, y_), (*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(y_124, (+)((*)(x_, y_3), (*)(x_12, y_123), (*)(x_13, y_1), (*)(x_23, y_2))), (*)(y_14, (+)((*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_, y_23), (*)(-1, x_12, y_13))), (*)(y_2, (+)((*)(x_12, y_234), (*)(x_13, y_4), (*)(x_24, y_123), (*)(x_34, y_1), (*)(-1, x_, y_134), (*)(-1, x_1234, y_2), (*)(-1, x_14, y_3), (*)(-1, x_23, y_124))), (*)(y_23, (+)((*)(x_12, y_24), (*)(x_1234, y_23), (*)(x_13, y_34), (*)(x_14, y_), (*)(-1, x_, y_14), (*)(-1, x_23, y_1234), (*)(-1, x_24, y_12), (*)(-1, x_34, y_13))), (*)(y_234, (+)((*)(x_, y_1), (*)(x_23, y_123), (*)(-1, x_12, y_2), (*)(-1, x_13, y_3))), (*)(y_34, (+)((*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_, y_12), (*)(-1, x_13, y_23))), (*)(y_4, (+)((*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_, y_123), (*)(-1, x_13, y_2))), (*)(-1, y_1, (+)((*)(x_1234, y_1), (*)(x_13, y_124), (*)(x_23, y_4), (*)(x_34, y_2), (*)(-1, x_, y_234), (*)(-1, x_12, y_134), (*)(-1, x_14, y_123), (*)(-1, x_24, y_3))), (*)(-1, y_123, (+)((*)(x_, y_4), (*)(x_12, y_124), (*)(x_1234, y_123), (*)(x_13, y_134), (*)(x_14, y_1), (*)(x_23, y_234), (*)(x_24, y_2), (*)(x_34, y_3))), (*)(-1, y_13, (+)((*)(x_13, y_1234), (*)(x_14, y_12), (*)(x_23, y_34), (*)(x_24, y_), (*)(-1, x_, y_24), (*)(-1, x_12, y_14), (*)(-1, x_1234, y_13), (*)(-1, x_34, y_23))), (*)(-1, y_134, (+)((*)(x_, y_2), (*)(x_12, y_1), (*)(-1, x_13, y_123), (*)(-1, x_23, y_3))), (*)(-1, y_24, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_, y_13), (*)(-1, x_23, y_12))), (*)(-1, y_3, (+)((*)(x_12, y_4), (*)(x_1234, y_3), (*)(x_23, y_134), (*)(x_24, y_1), (*)(-1, x_, y_124), (*)(-1, x_13, y_234), (*)(-1, x_14, y_2), (*)(-1, x_34, y_123))))
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function sandwich(x::MultiVectorEven, y::MultiVectorEven)
    x_ = x.e
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    x_1234 = x.e1234
    y_ = y.e
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    y_1234 = y.e1234
    ret_ = (+)((*)(y_, (+)((*)(x_, y_), (*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(-1, y_12, (+)((*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_, y_12), (*)(-1, x_13, y_23))), (*)(-1, y_13, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_, y_13), (*)(-1, x_23, y_12))), (*)(-1, y_23, (+)((*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_, y_23), (*)(-1, x_12, y_13))))
    ret_34 = (+)((*)(y_, (+)((*)(x_1234, y_12), (*)(x_14, y_13), (*)(x_24, y_23), (*)(x_34, y_), (*)(-1, x_, y_34), (*)(-1, x_12, y_1234), (*)(-1, x_13, y_14), (*)(-1, x_23, y_24))), (*)(y_13, (+)((*)(x_12, y_24), (*)(x_1234, y_23), (*)(x_13, y_34), (*)(x_14, y_), (*)(-1, x_, y_14), (*)(-1, x_23, y_1234), (*)(-1, x_24, y_12), (*)(-1, x_34, y_13))), (*)(y_23, (+)((*)(x_13, y_1234), (*)(x_14, y_12), (*)(x_23, y_34), (*)(x_24, y_), (*)(-1, x_, y_24), (*)(-1, x_12, y_14), (*)(-1, x_1234, y_13), (*)(-1, x_34, y_23))), (*)(y_34, (+)((*)(x_, y_), (*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(-1, y_12, (+)((*)(x_, y_1234), (*)(x_1234, y_), (*)(x_13, y_24), (*)(x_24, y_13), (*)(-1, x_12, y_34), (*)(-1, x_14, y_23), (*)(-1, x_23, y_14), (*)(-1, x_34, y_12))), (*)(-1, y_1234, (+)((*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_, y_12), (*)(-1, x_13, y_23))), (*)(-1, y_14, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_, y_13), (*)(-1, x_23, y_12))), (*)(-1, y_24, (+)((*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_, y_23), (*)(-1, x_12, y_13))))
    ret_24 = (+)((*)(y_, (+)((*)(x_13, y_1234), (*)(x_14, y_12), (*)(x_23, y_34), (*)(x_24, y_), (*)(-1, x_, y_24), (*)(-1, x_12, y_14), (*)(-1, x_1234, y_13), (*)(-1, x_34, y_23))), (*)(y_12, (+)((*)(x_12, y_24), (*)(x_1234, y_23), (*)(x_13, y_34), (*)(x_14, y_), (*)(-1, x_, y_14), (*)(-1, x_23, y_1234), (*)(-1, x_24, y_12), (*)(-1, x_34, y_13))), (*)(y_1234, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_, y_13), (*)(-1, x_23, y_12))), (*)(y_13, (+)((*)(x_, y_1234), (*)(x_1234, y_), (*)(x_13, y_24), (*)(x_24, y_13), (*)(-1, x_12, y_34), (*)(-1, x_14, y_23), (*)(-1, x_23, y_14), (*)(-1, x_34, y_12))), (*)(y_24, (+)((*)(x_, y_), (*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(y_34, (+)((*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_, y_23), (*)(-1, x_12, y_13))), (*)(-1, y_14, (+)((*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_, y_12), (*)(-1, x_13, y_23))), (*)(-1, y_23, (+)((*)(x_1234, y_12), (*)(x_14, y_13), (*)(x_24, y_23), (*)(x_34, y_), (*)(-1, x_, y_34), (*)(-1, x_12, y_1234), (*)(-1, x_13, y_14), (*)(-1, x_23, y_24))))
    ret_23 = (+)((*)(y_, (+)((*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_, y_23), (*)(-1, x_12, y_13))), (*)(y_12, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_, y_13), (*)(-1, x_23, y_12))), (*)(y_23, (+)((*)(x_, y_), (*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(-1, y_13, (+)((*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_, y_12), (*)(-1, x_13, y_23))))
    ret_14 = (+)((*)(y_, (+)((*)(x_12, y_24), (*)(x_1234, y_23), (*)(x_13, y_34), (*)(x_14, y_), (*)(-1, x_, y_14), (*)(-1, x_23, y_1234), (*)(-1, x_24, y_12), (*)(-1, x_34, y_13))), (*)(y_14, (+)((*)(x_, y_), (*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(y_24, (+)((*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_, y_12), (*)(-1, x_13, y_23))), (*)(y_34, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_, y_13), (*)(-1, x_23, y_12))), (*)(-1, y_12, (+)((*)(x_13, y_1234), (*)(x_14, y_12), (*)(x_23, y_34), (*)(x_24, y_), (*)(-1, x_, y_24), (*)(-1, x_12, y_14), (*)(-1, x_1234, y_13), (*)(-1, x_34, y_23))), (*)(-1, y_1234, (+)((*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_, y_23), (*)(-1, x_12, y_13))), (*)(-1, y_13, (+)((*)(x_1234, y_12), (*)(x_14, y_13), (*)(x_24, y_23), (*)(x_34, y_), (*)(-1, x_, y_34), (*)(-1, x_12, y_1234), (*)(-1, x_13, y_14), (*)(-1, x_23, y_24))), (*)(-1, y_23, (+)((*)(x_, y_1234), (*)(x_1234, y_), (*)(x_13, y_24), (*)(x_24, y_13), (*)(-1, x_12, y_34), (*)(-1, x_14, y_23), (*)(-1, x_23, y_14), (*)(-1, x_34, y_12))))
    ret_13 = (+)((*)(y_, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_, y_13), (*)(-1, x_23, y_12))), (*)(y_13, (+)((*)(x_, y_), (*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(y_23, (+)((*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_, y_12), (*)(-1, x_13, y_23))), (*)(-1, y_12, (+)((*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_, y_23), (*)(-1, x_12, y_13))))
    ret_12 = (+)((*)(y_, (+)((*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_, y_12), (*)(-1, x_13, y_23))), (*)(y_12, (+)((*)(x_, y_), (*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(y_13, (+)((*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_, y_23), (*)(-1, x_12, y_13))), (*)(-1, y_23, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_, y_13), (*)(-1, x_23, y_12))))
    ret_1234 = (+)((*)(y_, (+)((*)(x_, y_1234), (*)(x_1234, y_), (*)(x_13, y_24), (*)(x_24, y_13), (*)(-1, x_12, y_34), (*)(-1, x_14, y_23), (*)(-1, x_23, y_14), (*)(-1, x_34, y_12))), (*)(y_12, (+)((*)(x_1234, y_12), (*)(x_14, y_13), (*)(x_24, y_23), (*)(x_34, y_), (*)(-1, x_, y_34), (*)(-1, x_12, y_1234), (*)(-1, x_13, y_14), (*)(-1, x_23, y_24))), (*)(y_1234, (+)((*)(x_, y_), (*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(y_14, (+)((*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_, y_23), (*)(-1, x_12, y_13))), (*)(y_23, (+)((*)(x_12, y_24), (*)(x_1234, y_23), (*)(x_13, y_34), (*)(x_14, y_), (*)(-1, x_, y_14), (*)(-1, x_23, y_1234), (*)(-1, x_24, y_12), (*)(-1, x_34, y_13))), (*)(y_34, (+)((*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_, y_12), (*)(-1, x_13, y_23))), (*)(-1, y_13, (+)((*)(x_13, y_1234), (*)(x_14, y_12), (*)(x_23, y_34), (*)(x_24, y_), (*)(-1, x_, y_24), (*)(-1, x_12, y_14), (*)(-1, x_1234, y_13), (*)(-1, x_34, y_23))), (*)(-1, y_24, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_, y_13), (*)(-1, x_23, y_12))))
    return MultiVectorEven(; e = ret_, e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12, e1234 = ret_1234)
end
function sandwich(x::MultiVectorEven, y::MultiVector0)
    x_ = x.e
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    x_1234 = x.e1234
    y_ = y.e
    ret_ = (*)(x_, (^)(y_, 2))
    ret_34 = (*)(x_34, (^)(y_, 2))
    ret_24 = (*)(x_24, (^)(y_, 2))
    ret_23 = (*)(x_23, (^)(y_, 2))
    ret_14 = (*)(x_14, (^)(y_, 2))
    ret_13 = (*)(x_13, (^)(y_, 2))
    ret_12 = (*)(x_12, (^)(y_, 2))
    ret_1234 = (*)(x_1234, (^)(y_, 2))
    return MultiVectorEven(; e = ret_, e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12, e1234 = ret_1234)
end
function sandwich(x::MultiVectorEven, y::MultiVector1)
    x_ = x.e
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    x_1234 = x.e1234
    y_4 = y.e4
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    ret_ = (+)((*)(y_1, (+)((*)(x_, y_1), (*)(-1, x_12, y_2), (*)(-1, x_13, y_3))), (*)(y_2, (+)((*)(x_, y_2), (*)(x_12, y_1), (*)(-1, x_23, y_3))), (*)(y_3, (+)((*)(x_, y_3), (*)(x_13, y_1), (*)(x_23, y_2))))
    ret_34 = (+)((*)(y_1, (+)((*)(x_13, y_4), (*)(x_34, y_1), (*)(-1, x_1234, y_2), (*)(-1, x_14, y_3))), (*)(y_2, (+)((*)(x_1234, y_1), (*)(x_23, y_4), (*)(x_34, y_2), (*)(-1, x_24, y_3))), (*)(y_4, (+)((*)(x_, y_3), (*)(x_13, y_1), (*)(x_23, y_2))), (*)(-1, y_3, (+)((*)(x_, y_4), (*)(x_14, y_1), (*)(x_24, y_2), (*)(x_34, y_3))))
    ret_24 = (+)((*)(y_1, (+)((*)(x_12, y_4), (*)(x_1234, y_3), (*)(x_24, y_1), (*)(-1, x_14, y_2))), (*)(y_4, (+)((*)(x_, y_2), (*)(x_12, y_1), (*)(-1, x_23, y_3))), (*)(-1, y_2, (+)((*)(x_, y_4), (*)(x_14, y_1), (*)(x_24, y_2), (*)(x_34, y_3))), (*)(-1, y_3, (+)((*)(x_1234, y_1), (*)(x_23, y_4), (*)(x_34, y_2), (*)(-1, x_24, y_3))))
    ret_23 = (+)((*)(y_1, (+)((*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_13, y_2))), (*)(y_3, (+)((*)(x_, y_2), (*)(x_12, y_1), (*)(-1, x_23, y_3))), (*)(-1, y_2, (+)((*)(x_, y_3), (*)(x_13, y_1), (*)(x_23, y_2))))
    ret_14 = (+)((*)(y_4, (+)((*)(x_, y_1), (*)(-1, x_12, y_2), (*)(-1, x_13, y_3))), (*)(-1, y_1, (+)((*)(x_, y_4), (*)(x_14, y_1), (*)(x_24, y_2), (*)(x_34, y_3))), (*)(-1, y_2, (+)((*)(x_12, y_4), (*)(x_1234, y_3), (*)(x_24, y_1), (*)(-1, x_14, y_2))), (*)(-1, y_3, (+)((*)(x_13, y_4), (*)(x_34, y_1), (*)(-1, x_1234, y_2), (*)(-1, x_14, y_3))))
    ret_13 = (+)((*)(y_3, (+)((*)(x_, y_1), (*)(-1, x_12, y_2), (*)(-1, x_13, y_3))), (*)(-1, y_1, (+)((*)(x_, y_3), (*)(x_13, y_1), (*)(x_23, y_2))), (*)(-1, y_2, (+)((*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_13, y_2))))
    ret_12 = (+)((*)(y_2, (+)((*)(x_, y_1), (*)(-1, x_12, y_2), (*)(-1, x_13, y_3))), (*)(y_3, (+)((*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_13, y_2))), (*)(-1, y_1, (+)((*)(x_, y_2), (*)(x_12, y_1), (*)(-1, x_23, y_3))))
    ret_1234 = (+)((*)(y_2, (+)((*)(x_13, y_4), (*)(x_34, y_1), (*)(-1, x_1234, y_2), (*)(-1, x_14, y_3))), (*)(y_4, (+)((*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_13, y_2))), (*)(-1, y_1, (+)((*)(x_1234, y_1), (*)(x_23, y_4), (*)(x_34, y_2), (*)(-1, x_24, y_3))), (*)(-1, y_3, (+)((*)(x_12, y_4), (*)(x_1234, y_3), (*)(x_24, y_1), (*)(-1, x_14, y_2))))
    return MultiVectorEven(; e = ret_, e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12, e1234 = ret_1234)
end
function sandwich(x::MultiVectorEven, y::MultiVector2)
    x_ = x.e
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    x_1234 = x.e1234
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    ret_ = (+)((*)(-1, y_12, (+)((*)(x_23, y_13), (*)(-1, x_, y_12), (*)(-1, x_13, y_23))), (*)(-1, y_13, (+)((*)(x_12, y_23), (*)(-1, x_, y_13), (*)(-1, x_23, y_12))), (*)(-1, y_23, (+)((*)(x_13, y_12), (*)(-1, x_, y_23), (*)(-1, x_12, y_13))))
    ret_34 = (+)((*)(y_13, (+)((*)(x_12, y_24), (*)(x_1234, y_23), (*)(x_13, y_34), (*)(-1, x_, y_14), (*)(-1, x_24, y_12), (*)(-1, x_34, y_13))), (*)(y_23, (+)((*)(x_14, y_12), (*)(x_23, y_34), (*)(-1, x_, y_24), (*)(-1, x_12, y_14), (*)(-1, x_1234, y_13), (*)(-1, x_34, y_23))), (*)(y_34, (+)((*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(-1, y_12, (+)((*)(x_13, y_24), (*)(x_24, y_13), (*)(-1, x_12, y_34), (*)(-1, x_14, y_23), (*)(-1, x_23, y_14), (*)(-1, x_34, y_12))), (*)(-1, y_14, (+)((*)(x_12, y_23), (*)(-1, x_, y_13), (*)(-1, x_23, y_12))), (*)(-1, y_24, (+)((*)(x_13, y_12), (*)(-1, x_, y_23), (*)(-1, x_12, y_13))))
    ret_24 = (+)((*)(y_12, (+)((*)(x_12, y_24), (*)(x_1234, y_23), (*)(x_13, y_34), (*)(-1, x_, y_14), (*)(-1, x_24, y_12), (*)(-1, x_34, y_13))), (*)(y_13, (+)((*)(x_13, y_24), (*)(x_24, y_13), (*)(-1, x_12, y_34), (*)(-1, x_14, y_23), (*)(-1, x_23, y_14), (*)(-1, x_34, y_12))), (*)(y_24, (+)((*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(y_34, (+)((*)(x_13, y_12), (*)(-1, x_, y_23), (*)(-1, x_12, y_13))), (*)(-1, y_14, (+)((*)(x_23, y_13), (*)(-1, x_, y_12), (*)(-1, x_13, y_23))), (*)(-1, y_23, (+)((*)(x_1234, y_12), (*)(x_14, y_13), (*)(x_24, y_23), (*)(-1, x_, y_34), (*)(-1, x_13, y_14), (*)(-1, x_23, y_24))))
    ret_23 = (+)((*)(y_12, (+)((*)(x_12, y_23), (*)(-1, x_, y_13), (*)(-1, x_23, y_12))), (*)(y_23, (+)((*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(-1, y_13, (+)((*)(x_23, y_13), (*)(-1, x_, y_12), (*)(-1, x_13, y_23))))
    ret_14 = (+)((*)(y_14, (+)((*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(y_24, (+)((*)(x_23, y_13), (*)(-1, x_, y_12), (*)(-1, x_13, y_23))), (*)(y_34, (+)((*)(x_12, y_23), (*)(-1, x_, y_13), (*)(-1, x_23, y_12))), (*)(-1, y_12, (+)((*)(x_14, y_12), (*)(x_23, y_34), (*)(-1, x_, y_24), (*)(-1, x_12, y_14), (*)(-1, x_1234, y_13), (*)(-1, x_34, y_23))), (*)(-1, y_13, (+)((*)(x_1234, y_12), (*)(x_14, y_13), (*)(x_24, y_23), (*)(-1, x_, y_34), (*)(-1, x_13, y_14), (*)(-1, x_23, y_24))), (*)(-1, y_23, (+)((*)(x_13, y_24), (*)(x_24, y_13), (*)(-1, x_12, y_34), (*)(-1, x_14, y_23), (*)(-1, x_23, y_14), (*)(-1, x_34, y_12))))
    ret_13 = (+)((*)(y_13, (+)((*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(y_23, (+)((*)(x_23, y_13), (*)(-1, x_, y_12), (*)(-1, x_13, y_23))), (*)(-1, y_12, (+)((*)(x_13, y_12), (*)(-1, x_, y_23), (*)(-1, x_12, y_13))))
    ret_12 = (+)((*)(y_12, (+)((*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(y_13, (+)((*)(x_13, y_12), (*)(-1, x_, y_23), (*)(-1, x_12, y_13))), (*)(-1, y_23, (+)((*)(x_12, y_23), (*)(-1, x_, y_13), (*)(-1, x_23, y_12))))
    ret_1234 = (+)((*)(y_12, (+)((*)(x_1234, y_12), (*)(x_14, y_13), (*)(x_24, y_23), (*)(-1, x_, y_34), (*)(-1, x_13, y_14), (*)(-1, x_23, y_24))), (*)(y_14, (+)((*)(x_13, y_12), (*)(-1, x_, y_23), (*)(-1, x_12, y_13))), (*)(y_23, (+)((*)(x_12, y_24), (*)(x_1234, y_23), (*)(x_13, y_34), (*)(-1, x_, y_14), (*)(-1, x_24, y_12), (*)(-1, x_34, y_13))), (*)(y_34, (+)((*)(x_23, y_13), (*)(-1, x_, y_12), (*)(-1, x_13, y_23))), (*)(-1, y_13, (+)((*)(x_14, y_12), (*)(x_23, y_34), (*)(-1, x_, y_24), (*)(-1, x_12, y_14), (*)(-1, x_1234, y_13), (*)(-1, x_34, y_23))), (*)(-1, y_24, (+)((*)(x_12, y_23), (*)(-1, x_, y_13), (*)(-1, x_23, y_12))))
    return MultiVectorEven(; e = ret_, e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12, e1234 = ret_1234)
end
function sandwich(x::MultiVectorEven, y::MultiVector3)
    x_ = x.e
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    x_1234 = x.e1234
    y_234 = y.e234
    y_134 = y.e134
    y_124 = y.e124
    y_123 = y.e123
    ret_ = (*)(x_, (^)(y_123, 2))
    ret_34 = (+)((*)(y_123, (+)((*)(x_23, y_134), (*)(-1, x_, y_124), (*)(-1, x_13, y_234), (*)(-1, x_34, y_123))), (*)(x_, y_123, y_124), (*)(x_23, y_123, y_134), (*)(-1, x_13, y_123, y_234))
    ret_24 = (+)((*)(x_23, y_123, y_124), (*)(-1, y_123, (+)((*)(x_12, y_234), (*)(x_24, y_123), (*)(-1, x_, y_134), (*)(-1, x_23, y_124))), (*)(-1, x_, y_123, y_134), (*)(-1, x_12, y_123, y_234))
    ret_23 = (*)(x_23, (^)(y_123, 2))
    ret_14 = (+)((*)(y_123, (+)((*)(x_13, y_124), (*)(-1, x_, y_234), (*)(-1, x_12, y_134), (*)(-1, x_14, y_123))), (*)(x_, y_123, y_234), (*)(x_13, y_123, y_124), (*)(-1, x_12, y_123, y_134))
    ret_13 = (*)(x_13, (^)(y_123, 2))
    ret_12 = (*)(x_12, (^)(y_123, 2))
    ret_1234 = (+)((*)(x_12, y_123, y_124), (*)(x_13, y_123, y_134), (*)(x_23, y_123, y_234), (*)(-1, y_123, (+)((*)(x_12, y_124), (*)(x_1234, y_123), (*)(x_13, y_134), (*)(x_23, y_234))))
    return MultiVectorEven(; e = ret_, e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12, e1234 = ret_1234)
end
function sandwich(x::MultiVectorEven, y::MultiVector4)
    return MultiVectorZero(; )
end
function sandwich(x::MultiVectorEven, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function sandwich(x::MultiVector0, y::MultiVectorAll)
    x_ = x.e
    y_ = y.e
    y_4 = y.e4
    y_3 = y.e3
    y_34 = y.e34
    y_2 = y.e2
    y_24 = y.e24
    y_23 = y.e23
    y_234 = y.e234
    y_1 = y.e1
    y_14 = y.e14
    y_13 = y.e13
    y_134 = y.e134
    y_12 = y.e12
    y_124 = y.e124
    y_123 = y.e123
    y_1234 = y.e1234
    ret_ = (+)((*)(x_, (^)(y_, 2)), (*)(x_, (^)(y_1, 2)), (*)(x_, (^)(y_12, 2)), (*)(x_, (^)(y_123, 2)), (*)(x_, (^)(y_13, 2)), (*)(x_, (^)(y_2, 2)), (*)(x_, (^)(y_23, 2)), (*)(x_, (^)(y_3, 2)))
    ret_4 = (+)((*)(2, x_, y_, y_4), (*)(2, x_, y_1, y_14), (*)(2, x_, y_12, y_124), (*)(2, x_, y_123, y_1234), (*)(2, x_, y_13, y_134), (*)(2, x_, y_2, y_24), (*)(2, x_, y_23, y_234), (*)(2, x_, y_3, y_34))
    ret_3 = (+)((*)(2, x_, y_, y_3), (*)(2, x_, y_1, y_13), (*)(2, x_, y_12, y_123), (*)(2, x_, y_2, y_23))
    ret_2 = (+)((*)(2, x_, y_, y_2), (*)(2, x_, y_1, y_12), (*)(-2, x_, y_123, y_13), (*)(-2, x_, y_23, y_3))
    ret_1 = (+)((*)(2, x_, y_, y_1), (*)(-2, x_, y_12, y_2), (*)(2, x_, y_123, y_23), (*)(-2, x_, y_13, y_3))
    ret_1234 = (+)((*)(2, x_, y_, y_1234), (*)(2, x_, y_1, y_234), (*)(-2, x_, y_12, y_34), (*)(-2, x_, y_123, y_4), (*)(2, x_, y_124, y_3), (*)(2, x_, y_13, y_24), (*)(-2, x_, y_134, y_2), (*)(-2, x_, y_14, y_23))
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e2 = ret_2, e1 = ret_1, e1234 = ret_1234)
end
function sandwich(x::MultiVector0, y::MultiVectorEven)
    x_ = x.e
    y_ = y.e
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    y_1234 = y.e1234
    ret_ = (+)((*)(x_, (^)(y_, 2)), (*)(x_, (^)(y_12, 2)), (*)(x_, (^)(y_13, 2)), (*)(x_, (^)(y_23, 2)))
    ret_1234 = (+)((*)(2, x_, y_, y_1234), (*)(-2, x_, y_12, y_34), (*)(2, x_, y_13, y_24), (*)(-2, x_, y_14, y_23))
    return MultiVectorEven(; e = ret_, e1234 = ret_1234)
end
function sandwich(x::MultiVector0, y::MultiVector0)
    x_ = x.e
    y_ = y.e
    ret_ = (*)(x_, (^)(y_, 2))
    return MultiVector0(; e = ret_)
end
function sandwich(x::MultiVector0, y::MultiVector1)
    x_ = x.e
    y_4 = y.e4
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    ret_ = (+)((*)(x_, (^)(y_1, 2)), (*)(x_, (^)(y_2, 2)), (*)(x_, (^)(y_3, 2)))
    return MultiVector0(; e = ret_)
end
function sandwich(x::MultiVector0, y::MultiVector2)
    x_ = x.e
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    ret_ = (+)((*)(x_, (^)(y_12, 2)), (*)(x_, (^)(y_13, 2)), (*)(x_, (^)(y_23, 2)))
    ret_1234 = (+)((*)(-2, x_, y_12, y_34), (*)(2, x_, y_13, y_24), (*)(-2, x_, y_14, y_23))
    return MultiVectorEven(; e = ret_, e1234 = ret_1234)
end
function sandwich(x::MultiVector0, y::MultiVector3)
    x_ = x.e
    y_234 = y.e234
    y_134 = y.e134
    y_124 = y.e124
    y_123 = y.e123
    ret_ = (*)(x_, (^)(y_123, 2))
    return MultiVector0(; e = ret_)
end
function sandwich(x::MultiVector0, y::MultiVector4)
    return MultiVectorZero(; )
end
function sandwich(x::MultiVector0, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function sandwich(x::MultiVector1, y::MultiVectorAll)
    x_4 = x.e4
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    y_ = y.e
    y_4 = y.e4
    y_3 = y.e3
    y_34 = y.e34
    y_2 = y.e2
    y_24 = y.e24
    y_23 = y.e23
    y_234 = y.e234
    y_1 = y.e1
    y_14 = y.e14
    y_13 = y.e13
    y_134 = y.e134
    y_12 = y.e12
    y_124 = y.e124
    y_123 = y.e123
    y_1234 = y.e1234
    ret_ = (+)((*)(y_, (+)((*)(x_1, y_1), (*)(x_2, y_2), (*)(x_3, y_3))), (*)(y_1, (+)((*)(x_1, y_), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))), (*)(y_2, (+)((*)(x_1, y_12), (*)(x_2, y_), (*)(-1, x_3, y_23))), (*)(y_3, (+)((*)(x_1, y_13), (*)(x_2, y_23), (*)(x_3, y_))), (*)(-1, y_12, (+)((*)(x_2, y_1), (*)(-1, x_1, y_2), (*)(-1, x_3, y_123))), (*)(-1, y_123, (+)((*)(x_2, y_13), (*)(-1, x_1, y_23), (*)(-1, x_3, y_12))), (*)(-1, y_13, (+)((*)(x_2, y_123), (*)(x_3, y_1), (*)(-1, x_1, y_3))), (*)(-1, y_23, (+)((*)(x_3, y_2), (*)(-1, x_1, y_123), (*)(-1, x_2, y_3))))
    ret_4 = (+)((*)(y_, (+)((*)(x_1, y_14), (*)(x_2, y_24), (*)(x_3, y_34), (*)(x_4, y_))), (*)(y_123, (+)((*)(x_1, y_234), (*)(x_3, y_124), (*)(-1, x_2, y_134), (*)(-1, x_4, y_123))), (*)(y_14, (+)((*)(x_1, y_), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))), (*)(y_24, (+)((*)(x_1, y_12), (*)(x_2, y_), (*)(-1, x_3, y_23))), (*)(y_34, (+)((*)(x_1, y_13), (*)(x_2, y_23), (*)(x_3, y_))), (*)(y_4, (+)((*)(x_1, y_1), (*)(x_2, y_2), (*)(x_3, y_3))), (*)(-1, y_1, (+)((*)(x_2, y_124), (*)(x_3, y_134), (*)(x_4, y_1), (*)(-1, x_1, y_4))), (*)(-1, y_12, (+)((*)(x_2, y_14), (*)(-1, x_1, y_24), (*)(-1, x_3, y_1234), (*)(-1, x_4, y_12))), (*)(-1, y_1234, (+)((*)(x_2, y_13), (*)(-1, x_1, y_23), (*)(-1, x_3, y_12))), (*)(-1, y_124, (+)((*)(x_2, y_1), (*)(-1, x_1, y_2), (*)(-1, x_3, y_123))), (*)(-1, y_13, (+)((*)(x_2, y_1234), (*)(x_3, y_14), (*)(-1, x_1, y_34), (*)(-1, x_4, y_13))), (*)(-1, y_134, (+)((*)(x_2, y_123), (*)(x_3, y_1), (*)(-1, x_1, y_3))), (*)(-1, y_2, (+)((*)(x_3, y_234), (*)(x_4, y_2), (*)(-1, x_1, y_124), (*)(-1, x_2, y_4))), (*)(-1, y_23, (+)((*)(x_3, y_24), (*)(-1, x_1, y_1234), (*)(-1, x_2, y_34), (*)(-1, x_4, y_23))), (*)(-1, y_234, (+)((*)(x_3, y_2), (*)(-1, x_1, y_123), (*)(-1, x_2, y_3))), (*)(-1, y_3, (+)((*)(x_4, y_3), (*)(-1, x_1, y_134), (*)(-1, x_2, y_234), (*)(-1, x_3, y_4))))
    ret_3 = (+)((*)(y_, (+)((*)(x_1, y_13), (*)(x_2, y_23), (*)(x_3, y_))), (*)(y_13, (+)((*)(x_1, y_), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))), (*)(y_23, (+)((*)(x_1, y_12), (*)(x_2, y_), (*)(-1, x_3, y_23))), (*)(y_3, (+)((*)(x_1, y_1), (*)(x_2, y_2), (*)(x_3, y_3))), (*)(-1, y_1, (+)((*)(x_2, y_123), (*)(x_3, y_1), (*)(-1, x_1, y_3))), (*)(-1, y_12, (+)((*)(x_2, y_13), (*)(-1, x_1, y_23), (*)(-1, x_3, y_12))), (*)(-1, y_123, (+)((*)(x_2, y_1), (*)(-1, x_1, y_2), (*)(-1, x_3, y_123))), (*)(-1, y_2, (+)((*)(x_3, y_2), (*)(-1, x_1, y_123), (*)(-1, x_2, y_3))))
    ret_34 = (+)((*)(y_, (+)((*)(x_4, y_3), (*)(-1, x_1, y_134), (*)(-1, x_2, y_234), (*)(-1, x_3, y_4))), (*)(y_1, (+)((*)(x_2, y_1234), (*)(x_3, y_14), (*)(-1, x_1, y_34), (*)(-1, x_4, y_13))), (*)(y_123, (+)((*)(x_2, y_14), (*)(-1, x_1, y_24), (*)(-1, x_3, y_1234), (*)(-1, x_4, y_12))), (*)(y_13, (+)((*)(x_2, y_124), (*)(x_3, y_134), (*)(x_4, y_1), (*)(-1, x_1, y_4))), (*)(y_134, (+)((*)(x_1, y_), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))), (*)(y_2, (+)((*)(x_3, y_24), (*)(-1, x_1, y_1234), (*)(-1, x_2, y_34), (*)(-1, x_4, y_23))), (*)(y_23, (+)((*)(x_3, y_234), (*)(x_4, y_2), (*)(-1, x_1, y_124), (*)(-1, x_2, y_4))), (*)(y_234, (+)((*)(x_1, y_12), (*)(x_2, y_), (*)(-1, x_3, y_23))), (*)(y_34, (+)((*)(x_1, y_1), (*)(x_2, y_2), (*)(x_3, y_3))), (*)(y_4, (+)((*)(x_1, y_13), (*)(x_2, y_23), (*)(x_3, y_))), (*)(-1, y_12, (+)((*)(x_1, y_234), (*)(x_3, y_124), (*)(-1, x_2, y_134), (*)(-1, x_4, y_123))), (*)(-1, y_1234, (+)((*)(x_2, y_1), (*)(-1, x_1, y_2), (*)(-1, x_3, y_123))), (*)(-1, y_124, (+)((*)(x_2, y_13), (*)(-1, x_1, y_23), (*)(-1, x_3, y_12))), (*)(-1, y_14, (+)((*)(x_2, y_123), (*)(x_3, y_1), (*)(-1, x_1, y_3))), (*)(-1, y_24, (+)((*)(x_3, y_2), (*)(-1, x_1, y_123), (*)(-1, x_2, y_3))), (*)(-1, y_3, (+)((*)(x_1, y_14), (*)(x_2, y_24), (*)(x_3, y_34), (*)(x_4, y_))))
    ret_2 = (+)((*)(y_, (+)((*)(x_1, y_12), (*)(x_2, y_), (*)(-1, x_3, y_23))), (*)(y_12, (+)((*)(x_1, y_), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))), (*)(y_123, (+)((*)(x_2, y_123), (*)(x_3, y_1), (*)(-1, x_1, y_3))), (*)(y_13, (+)((*)(x_2, y_13), (*)(-1, x_1, y_23), (*)(-1, x_3, y_12))), (*)(y_2, (+)((*)(x_1, y_1), (*)(x_2, y_2), (*)(x_3, y_3))), (*)(y_3, (+)((*)(x_3, y_2), (*)(-1, x_1, y_123), (*)(-1, x_2, y_3))), (*)(-1, y_1, (+)((*)(x_2, y_1), (*)(-1, x_1, y_2), (*)(-1, x_3, y_123))), (*)(-1, y_23, (+)((*)(x_1, y_13), (*)(x_2, y_23), (*)(x_3, y_))))
    ret_24 = (+)((*)(y_, (+)((*)(x_3, y_234), (*)(x_4, y_2), (*)(-1, x_1, y_124), (*)(-1, x_2, y_4))), (*)(y_1, (+)((*)(x_2, y_14), (*)(-1, x_1, y_24), (*)(-1, x_3, y_1234), (*)(-1, x_4, y_12))), (*)(y_12, (+)((*)(x_2, y_124), (*)(x_3, y_134), (*)(x_4, y_1), (*)(-1, x_1, y_4))), (*)(y_1234, (+)((*)(x_2, y_123), (*)(x_3, y_1), (*)(-1, x_1, y_3))), (*)(y_124, (+)((*)(x_1, y_), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))), (*)(y_13, (+)((*)(x_1, y_234), (*)(x_3, y_124), (*)(-1, x_2, y_134), (*)(-1, x_4, y_123))), (*)(y_134, (+)((*)(x_2, y_13), (*)(-1, x_1, y_23), (*)(-1, x_3, y_12))), (*)(y_24, (+)((*)(x_1, y_1), (*)(x_2, y_2), (*)(x_3, y_3))), (*)(y_34, (+)((*)(x_3, y_2), (*)(-1, x_1, y_123), (*)(-1, x_2, y_3))), (*)(y_4, (+)((*)(x_1, y_12), (*)(x_2, y_), (*)(-1, x_3, y_23))), (*)(-1, y_123, (+)((*)(x_2, y_1234), (*)(x_3, y_14), (*)(-1, x_1, y_34), (*)(-1, x_4, y_13))), (*)(-1, y_14, (+)((*)(x_2, y_1), (*)(-1, x_1, y_2), (*)(-1, x_3, y_123))), (*)(-1, y_2, (+)((*)(x_1, y_14), (*)(x_2, y_24), (*)(x_3, y_34), (*)(x_4, y_))), (*)(-1, y_23, (+)((*)(x_4, y_3), (*)(-1, x_1, y_134), (*)(-1, x_2, y_234), (*)(-1, x_3, y_4))), (*)(-1, y_234, (+)((*)(x_1, y_13), (*)(x_2, y_23), (*)(x_3, y_))), (*)(-1, y_3, (+)((*)(x_3, y_24), (*)(-1, x_1, y_1234), (*)(-1, x_2, y_34), (*)(-1, x_4, y_23))))
    ret_23 = (+)((*)(y_, (+)((*)(x_3, y_2), (*)(-1, x_1, y_123), (*)(-1, x_2, y_3))), (*)(y_1, (+)((*)(x_2, y_13), (*)(-1, x_1, y_23), (*)(-1, x_3, y_12))), (*)(y_12, (+)((*)(x_2, y_123), (*)(x_3, y_1), (*)(-1, x_1, y_3))), (*)(y_123, (+)((*)(x_1, y_), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))), (*)(y_23, (+)((*)(x_1, y_1), (*)(x_2, y_2), (*)(x_3, y_3))), (*)(y_3, (+)((*)(x_1, y_12), (*)(x_2, y_), (*)(-1, x_3, y_23))), (*)(-1, y_13, (+)((*)(x_2, y_1), (*)(-1, x_1, y_2), (*)(-1, x_3, y_123))), (*)(-1, y_2, (+)((*)(x_1, y_13), (*)(x_2, y_23), (*)(x_3, y_))))
    ret_234 = (+)((*)(y_, (+)((*)(x_3, y_24), (*)(-1, x_1, y_1234), (*)(-1, x_2, y_34), (*)(-1, x_4, y_23))), (*)(y_12, (+)((*)(x_2, y_1234), (*)(x_3, y_14), (*)(-1, x_1, y_34), (*)(-1, x_4, y_13))), (*)(y_1234, (+)((*)(x_1, y_), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))), (*)(y_124, (+)((*)(x_2, y_123), (*)(x_3, y_1), (*)(-1, x_1, y_3))), (*)(y_14, (+)((*)(x_2, y_13), (*)(-1, x_1, y_23), (*)(-1, x_3, y_12))), (*)(y_2, (+)((*)(x_4, y_3), (*)(-1, x_1, y_134), (*)(-1, x_2, y_234), (*)(-1, x_3, y_4))), (*)(y_23, (+)((*)(x_1, y_14), (*)(x_2, y_24), (*)(x_3, y_34), (*)(x_4, y_))), (*)(y_234, (+)((*)(x_1, y_1), (*)(x_2, y_2), (*)(x_3, y_3))), (*)(y_34, (+)((*)(x_1, y_12), (*)(x_2, y_), (*)(-1, x_3, y_23))), (*)(y_4, (+)((*)(x_3, y_2), (*)(-1, x_1, y_123), (*)(-1, x_2, y_3))), (*)(-1, y_1, (+)((*)(x_1, y_234), (*)(x_3, y_124), (*)(-1, x_2, y_134), (*)(-1, x_4, y_123))), (*)(-1, y_123, (+)((*)(x_2, y_124), (*)(x_3, y_134), (*)(x_4, y_1), (*)(-1, x_1, y_4))), (*)(-1, y_13, (+)((*)(x_2, y_14), (*)(-1, x_1, y_24), (*)(-1, x_3, y_1234), (*)(-1, x_4, y_12))), (*)(-1, y_134, (+)((*)(x_2, y_1), (*)(-1, x_1, y_2), (*)(-1, x_3, y_123))), (*)(-1, y_24, (+)((*)(x_1, y_13), (*)(x_2, y_23), (*)(x_3, y_))), (*)(-1, y_3, (+)((*)(x_3, y_234), (*)(x_4, y_2), (*)(-1, x_1, y_124), (*)(-1, x_2, y_4))))
    ret_1 = (+)((*)(y_, (+)((*)(x_1, y_), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))), (*)(y_1, (+)((*)(x_1, y_1), (*)(x_2, y_2), (*)(x_3, y_3))), (*)(y_2, (+)((*)(x_2, y_1), (*)(-1, x_1, y_2), (*)(-1, x_3, y_123))), (*)(y_3, (+)((*)(x_2, y_123), (*)(x_3, y_1), (*)(-1, x_1, y_3))), (*)(-1, y_12, (+)((*)(x_1, y_12), (*)(x_2, y_), (*)(-1, x_3, y_23))), (*)(-1, y_123, (+)((*)(x_3, y_2), (*)(-1, x_1, y_123), (*)(-1, x_2, y_3))), (*)(-1, y_13, (+)((*)(x_1, y_13), (*)(x_2, y_23), (*)(x_3, y_))), (*)(-1, y_23, (+)((*)(x_2, y_13), (*)(-1, x_1, y_23), (*)(-1, x_3, y_12))))
    ret_14 = (+)((*)(y_, (+)((*)(x_2, y_124), (*)(x_3, y_134), (*)(x_4, y_1), (*)(-1, x_1, y_4))), (*)(y_123, (+)((*)(x_3, y_24), (*)(-1, x_1, y_1234), (*)(-1, x_2, y_34), (*)(-1, x_4, y_23))), (*)(y_14, (+)((*)(x_1, y_1), (*)(x_2, y_2), (*)(x_3, y_3))), (*)(y_24, (+)((*)(x_2, y_1), (*)(-1, x_1, y_2), (*)(-1, x_3, y_123))), (*)(y_34, (+)((*)(x_2, y_123), (*)(x_3, y_1), (*)(-1, x_1, y_3))), (*)(y_4, (+)((*)(x_1, y_), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))), (*)(-1, y_1, (+)((*)(x_1, y_14), (*)(x_2, y_24), (*)(x_3, y_34), (*)(x_4, y_))), (*)(-1, y_12, (+)((*)(x_3, y_234), (*)(x_4, y_2), (*)(-1, x_1, y_124), (*)(-1, x_2, y_4))), (*)(-1, y_1234, (+)((*)(x_3, y_2), (*)(-1, x_1, y_123), (*)(-1, x_2, y_3))), (*)(-1, y_124, (+)((*)(x_1, y_12), (*)(x_2, y_), (*)(-1, x_3, y_23))), (*)(-1, y_13, (+)((*)(x_4, y_3), (*)(-1, x_1, y_134), (*)(-1, x_2, y_234), (*)(-1, x_3, y_4))), (*)(-1, y_134, (+)((*)(x_1, y_13), (*)(x_2, y_23), (*)(x_3, y_))), (*)(-1, y_2, (+)((*)(x_2, y_14), (*)(-1, x_1, y_24), (*)(-1, x_3, y_1234), (*)(-1, x_4, y_12))), (*)(-1, y_23, (+)((*)(x_1, y_234), (*)(x_3, y_124), (*)(-1, x_2, y_134), (*)(-1, x_4, y_123))), (*)(-1, y_234, (+)((*)(x_2, y_13), (*)(-1, x_1, y_23), (*)(-1, x_3, y_12))), (*)(-1, y_3, (+)((*)(x_2, y_1234), (*)(x_3, y_14), (*)(-1, x_1, y_34), (*)(-1, x_4, y_13))))
    ret_13 = (+)((*)(y_, (+)((*)(x_2, y_123), (*)(x_3, y_1), (*)(-1, x_1, y_3))), (*)(y_13, (+)((*)(x_1, y_1), (*)(x_2, y_2), (*)(x_3, y_3))), (*)(y_23, (+)((*)(x_2, y_1), (*)(-1, x_1, y_2), (*)(-1, x_3, y_123))), (*)(y_3, (+)((*)(x_1, y_), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))), (*)(-1, y_1, (+)((*)(x_1, y_13), (*)(x_2, y_23), (*)(x_3, y_))), (*)(-1, y_12, (+)((*)(x_3, y_2), (*)(-1, x_1, y_123), (*)(-1, x_2, y_3))), (*)(-1, y_123, (+)((*)(x_1, y_12), (*)(x_2, y_), (*)(-1, x_3, y_23))), (*)(-1, y_2, (+)((*)(x_2, y_13), (*)(-1, x_1, y_23), (*)(-1, x_3, y_12))))
    ret_134 = (+)((*)(y_, (+)((*)(x_2, y_1234), (*)(x_3, y_14), (*)(-1, x_1, y_34), (*)(-1, x_4, y_13))), (*)(y_1, (+)((*)(x_4, y_3), (*)(-1, x_1, y_134), (*)(-1, x_2, y_234), (*)(-1, x_3, y_4))), (*)(y_123, (+)((*)(x_3, y_234), (*)(x_4, y_2), (*)(-1, x_1, y_124), (*)(-1, x_2, y_4))), (*)(y_13, (+)((*)(x_1, y_14), (*)(x_2, y_24), (*)(x_3, y_34), (*)(x_4, y_))), (*)(y_134, (+)((*)(x_1, y_1), (*)(x_2, y_2), (*)(x_3, y_3))), (*)(y_2, (+)((*)(x_1, y_234), (*)(x_3, y_124), (*)(-1, x_2, y_134), (*)(-1, x_4, y_123))), (*)(y_23, (+)((*)(x_2, y_14), (*)(-1, x_1, y_24), (*)(-1, x_3, y_1234), (*)(-1, x_4, y_12))), (*)(y_234, (+)((*)(x_2, y_1), (*)(-1, x_1, y_2), (*)(-1, x_3, y_123))), (*)(y_34, (+)((*)(x_1, y_), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))), (*)(y_4, (+)((*)(x_2, y_123), (*)(x_3, y_1), (*)(-1, x_1, y_3))), (*)(-1, y_12, (+)((*)(x_3, y_24), (*)(-1, x_1, y_1234), (*)(-1, x_2, y_34), (*)(-1, x_4, y_23))), (*)(-1, y_1234, (+)((*)(x_1, y_12), (*)(x_2, y_), (*)(-1, x_3, y_23))), (*)(-1, y_124, (+)((*)(x_3, y_2), (*)(-1, x_1, y_123), (*)(-1, x_2, y_3))), (*)(-1, y_14, (+)((*)(x_1, y_13), (*)(x_2, y_23), (*)(x_3, y_))), (*)(-1, y_24, (+)((*)(x_2, y_13), (*)(-1, x_1, y_23), (*)(-1, x_3, y_12))), (*)(-1, y_3, (+)((*)(x_2, y_124), (*)(x_3, y_134), (*)(x_4, y_1), (*)(-1, x_1, y_4))))
    ret_12 = (+)((*)(y_, (+)((*)(x_2, y_1), (*)(-1, x_1, y_2), (*)(-1, x_3, y_123))), (*)(y_12, (+)((*)(x_1, y_1), (*)(x_2, y_2), (*)(x_3, y_3))), (*)(y_123, (+)((*)(x_1, y_13), (*)(x_2, y_23), (*)(x_3, y_))), (*)(y_13, (+)((*)(x_3, y_2), (*)(-1, x_1, y_123), (*)(-1, x_2, y_3))), (*)(y_2, (+)((*)(x_1, y_), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))), (*)(y_3, (+)((*)(x_2, y_13), (*)(-1, x_1, y_23), (*)(-1, x_3, y_12))), (*)(-1, y_1, (+)((*)(x_1, y_12), (*)(x_2, y_), (*)(-1, x_3, y_23))), (*)(-1, y_23, (+)((*)(x_2, y_123), (*)(x_3, y_1), (*)(-1, x_1, y_3))))
    ret_124 = (+)((*)(y_, (+)((*)(x_2, y_14), (*)(-1, x_1, y_24), (*)(-1, x_3, y_1234), (*)(-1, x_4, y_12))), (*)(y_1, (+)((*)(x_3, y_234), (*)(x_4, y_2), (*)(-1, x_1, y_124), (*)(-1, x_2, y_4))), (*)(y_12, (+)((*)(x_1, y_14), (*)(x_2, y_24), (*)(x_3, y_34), (*)(x_4, y_))), (*)(y_1234, (+)((*)(x_1, y_13), (*)(x_2, y_23), (*)(x_3, y_))), (*)(y_124, (+)((*)(x_1, y_1), (*)(x_2, y_2), (*)(x_3, y_3))), (*)(y_13, (+)((*)(x_3, y_24), (*)(-1, x_1, y_1234), (*)(-1, x_2, y_34), (*)(-1, x_4, y_23))), (*)(y_134, (+)((*)(x_3, y_2), (*)(-1, x_1, y_123), (*)(-1, x_2, y_3))), (*)(y_24, (+)((*)(x_1, y_), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))), (*)(y_34, (+)((*)(x_2, y_13), (*)(-1, x_1, y_23), (*)(-1, x_3, y_12))), (*)(y_4, (+)((*)(x_2, y_1), (*)(-1, x_1, y_2), (*)(-1, x_3, y_123))), (*)(-1, y_123, (+)((*)(x_4, y_3), (*)(-1, x_1, y_134), (*)(-1, x_2, y_234), (*)(-1, x_3, y_4))), (*)(-1, y_14, (+)((*)(x_1, y_12), (*)(x_2, y_), (*)(-1, x_3, y_23))), (*)(-1, y_2, (+)((*)(x_2, y_124), (*)(x_3, y_134), (*)(x_4, y_1), (*)(-1, x_1, y_4))), (*)(-1, y_23, (+)((*)(x_2, y_1234), (*)(x_3, y_14), (*)(-1, x_1, y_34), (*)(-1, x_4, y_13))), (*)(-1, y_234, (+)((*)(x_2, y_123), (*)(x_3, y_1), (*)(-1, x_1, y_3))), (*)(-1, y_3, (+)((*)(x_1, y_234), (*)(x_3, y_124), (*)(-1, x_2, y_134), (*)(-1, x_4, y_123))))
    ret_123 = (+)((*)(y_, (+)((*)(x_2, y_13), (*)(-1, x_1, y_23), (*)(-1, x_3, y_12))), (*)(y_1, (+)((*)(x_3, y_2), (*)(-1, x_1, y_123), (*)(-1, x_2, y_3))), (*)(y_12, (+)((*)(x_1, y_13), (*)(x_2, y_23), (*)(x_3, y_))), (*)(y_123, (+)((*)(x_1, y_1), (*)(x_2, y_2), (*)(x_3, y_3))), (*)(y_23, (+)((*)(x_1, y_), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))), (*)(y_3, (+)((*)(x_2, y_1), (*)(-1, x_1, y_2), (*)(-1, x_3, y_123))), (*)(-1, y_13, (+)((*)(x_1, y_12), (*)(x_2, y_), (*)(-1, x_3, y_23))), (*)(-1, y_2, (+)((*)(x_2, y_123), (*)(x_3, y_1), (*)(-1, x_1, y_3))))
    ret_1234 = (+)((*)(y_, (+)((*)(x_1, y_234), (*)(x_3, y_124), (*)(-1, x_2, y_134), (*)(-1, x_4, y_123))), (*)(y_12, (+)((*)(x_4, y_3), (*)(-1, x_1, y_134), (*)(-1, x_2, y_234), (*)(-1, x_3, y_4))), (*)(y_1234, (+)((*)(x_1, y_1), (*)(x_2, y_2), (*)(x_3, y_3))), (*)(y_124, (+)((*)(x_1, y_13), (*)(x_2, y_23), (*)(x_3, y_))), (*)(y_14, (+)((*)(x_3, y_2), (*)(-1, x_1, y_123), (*)(-1, x_2, y_3))), (*)(y_2, (+)((*)(x_2, y_1234), (*)(x_3, y_14), (*)(-1, x_1, y_34), (*)(-1, x_4, y_13))), (*)(y_23, (+)((*)(x_2, y_124), (*)(x_3, y_134), (*)(x_4, y_1), (*)(-1, x_1, y_4))), (*)(y_234, (+)((*)(x_1, y_), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))), (*)(y_34, (+)((*)(x_2, y_1), (*)(-1, x_1, y_2), (*)(-1, x_3, y_123))), (*)(y_4, (+)((*)(x_2, y_13), (*)(-1, x_1, y_23), (*)(-1, x_3, y_12))), (*)(-1, y_1, (+)((*)(x_3, y_24), (*)(-1, x_1, y_1234), (*)(-1, x_2, y_34), (*)(-1, x_4, y_23))), (*)(-1, y_123, (+)((*)(x_1, y_14), (*)(x_2, y_24), (*)(x_3, y_34), (*)(x_4, y_))), (*)(-1, y_13, (+)((*)(x_3, y_234), (*)(x_4, y_2), (*)(-1, x_1, y_124), (*)(-1, x_2, y_4))), (*)(-1, y_134, (+)((*)(x_1, y_12), (*)(x_2, y_), (*)(-1, x_3, y_23))), (*)(-1, y_24, (+)((*)(x_2, y_123), (*)(x_3, y_1), (*)(-1, x_1, y_3))), (*)(-1, y_3, (+)((*)(x_2, y_14), (*)(-1, x_1, y_24), (*)(-1, x_3, y_1234), (*)(-1, x_4, y_12))))
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function sandwich(x::MultiVector1, y::MultiVectorEven)
    x_4 = x.e4
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    y_ = y.e
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    y_1234 = y.e1234
    ret_4 = (+)((*)(y_, (+)((*)(x_1, y_14), (*)(x_2, y_24), (*)(x_3, y_34), (*)(x_4, y_))), (*)(y_14, (+)((*)(x_1, y_), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))), (*)(y_24, (+)((*)(x_1, y_12), (*)(x_2, y_), (*)(-1, x_3, y_23))), (*)(y_34, (+)((*)(x_1, y_13), (*)(x_2, y_23), (*)(x_3, y_))), (*)(-1, y_12, (+)((*)(x_2, y_14), (*)(-1, x_1, y_24), (*)(-1, x_3, y_1234), (*)(-1, x_4, y_12))), (*)(-1, y_1234, (+)((*)(x_2, y_13), (*)(-1, x_1, y_23), (*)(-1, x_3, y_12))), (*)(-1, y_13, (+)((*)(x_2, y_1234), (*)(x_3, y_14), (*)(-1, x_1, y_34), (*)(-1, x_4, y_13))), (*)(-1, y_23, (+)((*)(x_3, y_24), (*)(-1, x_1, y_1234), (*)(-1, x_2, y_34), (*)(-1, x_4, y_23))))
    ret_3 = (+)((*)(y_, (+)((*)(x_1, y_13), (*)(x_2, y_23), (*)(x_3, y_))), (*)(y_13, (+)((*)(x_1, y_), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))), (*)(y_23, (+)((*)(x_1, y_12), (*)(x_2, y_), (*)(-1, x_3, y_23))), (*)(-1, y_12, (+)((*)(x_2, y_13), (*)(-1, x_1, y_23), (*)(-1, x_3, y_12))))
    ret_2 = (+)((*)(y_, (+)((*)(x_1, y_12), (*)(x_2, y_), (*)(-1, x_3, y_23))), (*)(y_12, (+)((*)(x_1, y_), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))), (*)(y_13, (+)((*)(x_2, y_13), (*)(-1, x_1, y_23), (*)(-1, x_3, y_12))), (*)(-1, y_23, (+)((*)(x_1, y_13), (*)(x_2, y_23), (*)(x_3, y_))))
    ret_234 = (+)((*)(y_, (+)((*)(x_3, y_24), (*)(-1, x_1, y_1234), (*)(-1, x_2, y_34), (*)(-1, x_4, y_23))), (*)(y_12, (+)((*)(x_2, y_1234), (*)(x_3, y_14), (*)(-1, x_1, y_34), (*)(-1, x_4, y_13))), (*)(y_1234, (+)((*)(x_1, y_), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))), (*)(y_14, (+)((*)(x_2, y_13), (*)(-1, x_1, y_23), (*)(-1, x_3, y_12))), (*)(y_23, (+)((*)(x_1, y_14), (*)(x_2, y_24), (*)(x_3, y_34), (*)(x_4, y_))), (*)(y_34, (+)((*)(x_1, y_12), (*)(x_2, y_), (*)(-1, x_3, y_23))), (*)(-1, y_13, (+)((*)(x_2, y_14), (*)(-1, x_1, y_24), (*)(-1, x_3, y_1234), (*)(-1, x_4, y_12))), (*)(-1, y_24, (+)((*)(x_1, y_13), (*)(x_2, y_23), (*)(x_3, y_))))
    ret_1 = (+)((*)(y_, (+)((*)(x_1, y_), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))), (*)(-1, y_12, (+)((*)(x_1, y_12), (*)(x_2, y_), (*)(-1, x_3, y_23))), (*)(-1, y_13, (+)((*)(x_1, y_13), (*)(x_2, y_23), (*)(x_3, y_))), (*)(-1, y_23, (+)((*)(x_2, y_13), (*)(-1, x_1, y_23), (*)(-1, x_3, y_12))))
    ret_134 = (+)((*)(y_, (+)((*)(x_2, y_1234), (*)(x_3, y_14), (*)(-1, x_1, y_34), (*)(-1, x_4, y_13))), (*)(y_13, (+)((*)(x_1, y_14), (*)(x_2, y_24), (*)(x_3, y_34), (*)(x_4, y_))), (*)(y_23, (+)((*)(x_2, y_14), (*)(-1, x_1, y_24), (*)(-1, x_3, y_1234), (*)(-1, x_4, y_12))), (*)(y_34, (+)((*)(x_1, y_), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))), (*)(-1, y_12, (+)((*)(x_3, y_24), (*)(-1, x_1, y_1234), (*)(-1, x_2, y_34), (*)(-1, x_4, y_23))), (*)(-1, y_1234, (+)((*)(x_1, y_12), (*)(x_2, y_), (*)(-1, x_3, y_23))), (*)(-1, y_14, (+)((*)(x_1, y_13), (*)(x_2, y_23), (*)(x_3, y_))), (*)(-1, y_24, (+)((*)(x_2, y_13), (*)(-1, x_1, y_23), (*)(-1, x_3, y_12))))
    ret_124 = (+)((*)(y_, (+)((*)(x_2, y_14), (*)(-1, x_1, y_24), (*)(-1, x_3, y_1234), (*)(-1, x_4, y_12))), (*)(y_12, (+)((*)(x_1, y_14), (*)(x_2, y_24), (*)(x_3, y_34), (*)(x_4, y_))), (*)(y_1234, (+)((*)(x_1, y_13), (*)(x_2, y_23), (*)(x_3, y_))), (*)(y_13, (+)((*)(x_3, y_24), (*)(-1, x_1, y_1234), (*)(-1, x_2, y_34), (*)(-1, x_4, y_23))), (*)(y_24, (+)((*)(x_1, y_), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))), (*)(y_34, (+)((*)(x_2, y_13), (*)(-1, x_1, y_23), (*)(-1, x_3, y_12))), (*)(-1, y_14, (+)((*)(x_1, y_12), (*)(x_2, y_), (*)(-1, x_3, y_23))), (*)(-1, y_23, (+)((*)(x_2, y_1234), (*)(x_3, y_14), (*)(-1, x_1, y_34), (*)(-1, x_4, y_13))))
    ret_123 = (+)((*)(y_, (+)((*)(x_2, y_13), (*)(-1, x_1, y_23), (*)(-1, x_3, y_12))), (*)(y_12, (+)((*)(x_1, y_13), (*)(x_2, y_23), (*)(x_3, y_))), (*)(y_23, (+)((*)(x_1, y_), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))), (*)(-1, y_13, (+)((*)(x_1, y_12), (*)(x_2, y_), (*)(-1, x_3, y_23))))
    return MultiVectorAll(; e4 = ret_4, e3 = ret_3, e2 = ret_2, e234 = ret_234, e1 = ret_1, e134 = ret_134, e124 = ret_124, e123 = ret_123)
end
function sandwich(x::MultiVector1, y::MultiVector0)
    x_4 = x.e4
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    y_ = y.e
    ret_4 = (*)(x_4, (^)(y_, 2))
    ret_3 = (*)(x_3, (^)(y_, 2))
    ret_2 = (*)(x_2, (^)(y_, 2))
    ret_1 = (*)(x_1, (^)(y_, 2))
    return MultiVector1(; e4 = ret_4, e3 = ret_3, e2 = ret_2, e1 = ret_1)
end
function sandwich(x::MultiVector1, y::MultiVector1)
    x_4 = x.e4
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    y_4 = y.e4
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    ret_4 = (+)((*)(y_4, (+)((*)(x_1, y_1), (*)(x_2, y_2), (*)(x_3, y_3))), (*)(-1, y_1, (+)((*)(x_4, y_1), (*)(-1, x_1, y_4))), (*)(-1, y_2, (+)((*)(x_4, y_2), (*)(-1, x_2, y_4))), (*)(-1, y_3, (+)((*)(x_4, y_3), (*)(-1, x_3, y_4))))
    ret_3 = (+)((*)(y_3, (+)((*)(x_1, y_1), (*)(x_2, y_2), (*)(x_3, y_3))), (*)(-1, y_1, (+)((*)(x_3, y_1), (*)(-1, x_1, y_3))), (*)(-1, y_2, (+)((*)(x_3, y_2), (*)(-1, x_2, y_3))))
    ret_2 = (+)((*)(y_2, (+)((*)(x_1, y_1), (*)(x_2, y_2), (*)(x_3, y_3))), (*)(y_3, (+)((*)(x_3, y_2), (*)(-1, x_2, y_3))), (*)(-1, y_1, (+)((*)(x_2, y_1), (*)(-1, x_1, y_2))))
    ret_234 = (+)((*)(y_2, (+)((*)(x_4, y_3), (*)(-1, x_3, y_4))), (*)(y_4, (+)((*)(x_3, y_2), (*)(-1, x_2, y_3))), (*)(-1, y_3, (+)((*)(x_4, y_2), (*)(-1, x_2, y_4))))
    ret_1 = (+)((*)(y_1, (+)((*)(x_1, y_1), (*)(x_2, y_2), (*)(x_3, y_3))), (*)(y_2, (+)((*)(x_2, y_1), (*)(-1, x_1, y_2))), (*)(y_3, (+)((*)(x_3, y_1), (*)(-1, x_1, y_3))))
    ret_134 = (+)((*)(y_1, (+)((*)(x_4, y_3), (*)(-1, x_3, y_4))), (*)(y_4, (+)((*)(x_3, y_1), (*)(-1, x_1, y_3))), (*)(-1, y_3, (+)((*)(x_4, y_1), (*)(-1, x_1, y_4))))
    ret_124 = (+)((*)(y_1, (+)((*)(x_4, y_2), (*)(-1, x_2, y_4))), (*)(y_4, (+)((*)(x_2, y_1), (*)(-1, x_1, y_2))), (*)(-1, y_2, (+)((*)(x_4, y_1), (*)(-1, x_1, y_4))))
    ret_123 = (+)((*)(y_1, (+)((*)(x_3, y_2), (*)(-1, x_2, y_3))), (*)(y_3, (+)((*)(x_2, y_1), (*)(-1, x_1, y_2))), (*)(-1, y_2, (+)((*)(x_3, y_1), (*)(-1, x_1, y_3))))
    return MultiVectorAll(; e4 = ret_4, e3 = ret_3, e2 = ret_2, e234 = ret_234, e1 = ret_1, e134 = ret_134, e124 = ret_124, e123 = ret_123)
end
function sandwich(x::MultiVector1, y::MultiVector2)
    x_4 = x.e4
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    ret_4 = (+)((*)(y_14, (+)((*)(-1, x_2, y_12), (*)(-1, x_3, y_13))), (*)(y_24, (+)((*)(x_1, y_12), (*)(-1, x_3, y_23))), (*)(y_34, (+)((*)(x_1, y_13), (*)(x_2, y_23))), (*)(-1, y_12, (+)((*)(x_2, y_14), (*)(-1, x_1, y_24), (*)(-1, x_4, y_12))), (*)(-1, y_13, (+)((*)(x_3, y_14), (*)(-1, x_1, y_34), (*)(-1, x_4, y_13))), (*)(-1, y_23, (+)((*)(x_3, y_24), (*)(-1, x_2, y_34), (*)(-1, x_4, y_23))))
    ret_3 = (+)((*)(y_13, (+)((*)(-1, x_2, y_12), (*)(-1, x_3, y_13))), (*)(y_23, (+)((*)(x_1, y_12), (*)(-1, x_3, y_23))), (*)(-1, y_12, (+)((*)(x_2, y_13), (*)(-1, x_1, y_23), (*)(-1, x_3, y_12))))
    ret_2 = (+)((*)(y_12, (+)((*)(-1, x_2, y_12), (*)(-1, x_3, y_13))), (*)(y_13, (+)((*)(x_2, y_13), (*)(-1, x_1, y_23), (*)(-1, x_3, y_12))), (*)(-1, y_23, (+)((*)(x_1, y_13), (*)(x_2, y_23))))
    ret_234 = (+)((*)(y_12, (+)((*)(x_3, y_14), (*)(-1, x_1, y_34), (*)(-1, x_4, y_13))), (*)(y_14, (+)((*)(x_2, y_13), (*)(-1, x_1, y_23), (*)(-1, x_3, y_12))), (*)(y_23, (+)((*)(x_1, y_14), (*)(x_2, y_24), (*)(x_3, y_34))), (*)(y_34, (+)((*)(x_1, y_12), (*)(-1, x_3, y_23))), (*)(-1, y_13, (+)((*)(x_2, y_14), (*)(-1, x_1, y_24), (*)(-1, x_4, y_12))), (*)(-1, y_24, (+)((*)(x_1, y_13), (*)(x_2, y_23))))
    ret_1 = (+)((*)(-1, y_12, (+)((*)(x_1, y_12), (*)(-1, x_3, y_23))), (*)(-1, y_13, (+)((*)(x_1, y_13), (*)(x_2, y_23))), (*)(-1, y_23, (+)((*)(x_2, y_13), (*)(-1, x_1, y_23), (*)(-1, x_3, y_12))))
    ret_134 = (+)((*)(y_13, (+)((*)(x_1, y_14), (*)(x_2, y_24), (*)(x_3, y_34))), (*)(y_23, (+)((*)(x_2, y_14), (*)(-1, x_1, y_24), (*)(-1, x_4, y_12))), (*)(y_34, (+)((*)(-1, x_2, y_12), (*)(-1, x_3, y_13))), (*)(-1, y_12, (+)((*)(x_3, y_24), (*)(-1, x_2, y_34), (*)(-1, x_4, y_23))), (*)(-1, y_14, (+)((*)(x_1, y_13), (*)(x_2, y_23))), (*)(-1, y_24, (+)((*)(x_2, y_13), (*)(-1, x_1, y_23), (*)(-1, x_3, y_12))))
    ret_124 = (+)((*)(y_12, (+)((*)(x_1, y_14), (*)(x_2, y_24), (*)(x_3, y_34))), (*)(y_13, (+)((*)(x_3, y_24), (*)(-1, x_2, y_34), (*)(-1, x_4, y_23))), (*)(y_24, (+)((*)(-1, x_2, y_12), (*)(-1, x_3, y_13))), (*)(y_34, (+)((*)(x_2, y_13), (*)(-1, x_1, y_23), (*)(-1, x_3, y_12))), (*)(-1, y_14, (+)((*)(x_1, y_12), (*)(-1, x_3, y_23))), (*)(-1, y_23, (+)((*)(x_3, y_14), (*)(-1, x_1, y_34), (*)(-1, x_4, y_13))))
    ret_123 = (+)((*)(y_12, (+)((*)(x_1, y_13), (*)(x_2, y_23))), (*)(y_23, (+)((*)(-1, x_2, y_12), (*)(-1, x_3, y_13))), (*)(-1, y_13, (+)((*)(x_1, y_12), (*)(-1, x_3, y_23))))
    return MultiVectorAll(; e4 = ret_4, e3 = ret_3, e2 = ret_2, e234 = ret_234, e1 = ret_1, e134 = ret_134, e124 = ret_124, e123 = ret_123)
end
function sandwich(x::MultiVector1, y::MultiVector3)
    x_4 = x.e4
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    y_234 = y.e234
    y_134 = y.e134
    y_124 = y.e124
    y_123 = y.e123
    ret_4 = (+)((*)(y_123, (+)((*)(x_1, y_234), (*)(x_3, y_124), (*)(-1, x_2, y_134), (*)(-1, x_4, y_123))), (*)(x_1, y_123, y_234), (*)(x_3, y_123, y_124), (*)(-1, x_2, y_123, y_134))
    ret_3 = (*)(x_3, (^)(y_123, 2))
    ret_2 = (*)(x_2, (^)(y_123, 2))
    ret_234 = (+)((*)(x_2, y_123, y_124), (*)(x_3, y_123, y_134), (*)(-1, y_123, (+)((*)(x_2, y_124), (*)(x_3, y_134))))
    ret_1 = (*)(x_1, (^)(y_123, 2))
    ret_134 = (+)((*)(y_123, (+)((*)(x_3, y_234), (*)(-1, x_1, y_124))), (*)(x_1, y_123, y_124), (*)(-1, x_3, y_123, y_234))
    ret_124 = (+)((*)(-1, y_123, (+)((*)(-1, x_1, y_134), (*)(-1, x_2, y_234))), (*)(-1, x_1, y_123, y_134), (*)(-1, x_2, y_123, y_234))
    return MultiVectorAll(; e4 = ret_4, e3 = ret_3, e2 = ret_2, e234 = ret_234, e1 = ret_1, e134 = ret_134, e124 = ret_124)
end
function sandwich(x::MultiVector1, y::MultiVector4)
    return MultiVectorZero(; )
end
function sandwich(x::MultiVector1, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function sandwich(x::MultiVector2, y::MultiVectorAll)
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    y_ = y.e
    y_4 = y.e4
    y_3 = y.e3
    y_34 = y.e34
    y_2 = y.e2
    y_24 = y.e24
    y_23 = y.e23
    y_234 = y.e234
    y_1 = y.e1
    y_14 = y.e14
    y_13 = y.e13
    y_134 = y.e134
    y_12 = y.e12
    y_124 = y.e124
    y_123 = y.e123
    y_1234 = y.e1234
    ret_ = (+)((*)(y_, (+)((*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(y_1, (+)((*)(x_23, y_123), (*)(-1, x_12, y_2), (*)(-1, x_13, y_3))), (*)(y_2, (+)((*)(x_12, y_1), (*)(-1, x_13, y_123), (*)(-1, x_23, y_3))), (*)(y_3, (+)((*)(x_12, y_123), (*)(x_13, y_1), (*)(x_23, y_2))), (*)(-1, y_12, (+)((*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_13, y_23))), (*)(-1, y_123, (+)((*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_13, y_2))), (*)(-1, y_13, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_23, y_12))), (*)(-1, y_23, (+)((*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_12, y_13))))
    ret_4 = (+)((*)(y_, (+)((*)(x_12, y_124), (*)(x_13, y_134), (*)(x_14, y_1), (*)(x_23, y_234), (*)(x_24, y_2), (*)(x_34, y_3))), (*)(y_123, (+)((*)(x_13, y_24), (*)(x_24, y_13), (*)(-1, x_12, y_34), (*)(-1, x_14, y_23), (*)(-1, x_23, y_14), (*)(-1, x_34, y_12))), (*)(y_14, (+)((*)(x_23, y_123), (*)(-1, x_12, y_2), (*)(-1, x_13, y_3))), (*)(y_24, (+)((*)(x_12, y_1), (*)(-1, x_13, y_123), (*)(-1, x_23, y_3))), (*)(y_34, (+)((*)(x_12, y_123), (*)(x_13, y_1), (*)(x_23, y_2))), (*)(y_4, (+)((*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(-1, y_1, (+)((*)(x_12, y_24), (*)(x_13, y_34), (*)(x_14, y_), (*)(-1, x_23, y_1234), (*)(-1, x_24, y_12), (*)(-1, x_34, y_13))), (*)(-1, y_12, (+)((*)(x_12, y_4), (*)(x_23, y_134), (*)(x_24, y_1), (*)(-1, x_13, y_234), (*)(-1, x_14, y_2), (*)(-1, x_34, y_123))), (*)(-1, y_1234, (+)((*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_13, y_2))), (*)(-1, y_124, (+)((*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_13, y_23))), (*)(-1, y_13, (+)((*)(x_12, y_234), (*)(x_13, y_4), (*)(x_24, y_123), (*)(x_34, y_1), (*)(-1, x_14, y_3), (*)(-1, x_23, y_124))), (*)(-1, y_134, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_23, y_12))), (*)(-1, y_2, (+)((*)(x_13, y_1234), (*)(x_14, y_12), (*)(x_23, y_34), (*)(x_24, y_), (*)(-1, x_12, y_14), (*)(-1, x_34, y_23))), (*)(-1, y_23, (+)((*)(x_13, y_124), (*)(x_23, y_4), (*)(x_34, y_2), (*)(-1, x_12, y_134), (*)(-1, x_14, y_123), (*)(-1, x_24, y_3))), (*)(-1, y_234, (+)((*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_12, y_13))), (*)(-1, y_3, (+)((*)(x_14, y_13), (*)(x_24, y_23), (*)(x_34, y_), (*)(-1, x_12, y_1234), (*)(-1, x_13, y_14), (*)(-1, x_23, y_24))))
    ret_3 = (+)((*)(y_, (+)((*)(x_12, y_123), (*)(x_13, y_1), (*)(x_23, y_2))), (*)(y_13, (+)((*)(x_23, y_123), (*)(-1, x_12, y_2), (*)(-1, x_13, y_3))), (*)(y_23, (+)((*)(x_12, y_1), (*)(-1, x_13, y_123), (*)(-1, x_23, y_3))), (*)(y_3, (+)((*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(-1, y_1, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_23, y_12))), (*)(-1, y_12, (+)((*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_13, y_2))), (*)(-1, y_123, (+)((*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_13, y_23))), (*)(-1, y_2, (+)((*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_12, y_13))))
    ret_34 = (+)((*)(y_, (+)((*)(x_14, y_13), (*)(x_24, y_23), (*)(x_34, y_), (*)(-1, x_12, y_1234), (*)(-1, x_13, y_14), (*)(-1, x_23, y_24))), (*)(y_1, (+)((*)(x_12, y_234), (*)(x_13, y_4), (*)(x_24, y_123), (*)(x_34, y_1), (*)(-1, x_14, y_3), (*)(-1, x_23, y_124))), (*)(y_123, (+)((*)(x_12, y_4), (*)(x_23, y_134), (*)(x_24, y_1), (*)(-1, x_13, y_234), (*)(-1, x_14, y_2), (*)(-1, x_34, y_123))), (*)(y_13, (+)((*)(x_12, y_24), (*)(x_13, y_34), (*)(x_14, y_), (*)(-1, x_23, y_1234), (*)(-1, x_24, y_12), (*)(-1, x_34, y_13))), (*)(y_134, (+)((*)(x_23, y_123), (*)(-1, x_12, y_2), (*)(-1, x_13, y_3))), (*)(y_2, (+)((*)(x_13, y_124), (*)(x_23, y_4), (*)(x_34, y_2), (*)(-1, x_12, y_134), (*)(-1, x_14, y_123), (*)(-1, x_24, y_3))), (*)(y_23, (+)((*)(x_13, y_1234), (*)(x_14, y_12), (*)(x_23, y_34), (*)(x_24, y_), (*)(-1, x_12, y_14), (*)(-1, x_34, y_23))), (*)(y_234, (+)((*)(x_12, y_1), (*)(-1, x_13, y_123), (*)(-1, x_23, y_3))), (*)(y_34, (+)((*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(y_4, (+)((*)(x_12, y_123), (*)(x_13, y_1), (*)(x_23, y_2))), (*)(-1, y_12, (+)((*)(x_13, y_24), (*)(x_24, y_13), (*)(-1, x_12, y_34), (*)(-1, x_14, y_23), (*)(-1, x_23, y_14), (*)(-1, x_34, y_12))), (*)(-1, y_1234, (+)((*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_13, y_23))), (*)(-1, y_124, (+)((*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_13, y_2))), (*)(-1, y_14, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_23, y_12))), (*)(-1, y_24, (+)((*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_12, y_13))), (*)(-1, y_3, (+)((*)(x_12, y_124), (*)(x_13, y_134), (*)(x_14, y_1), (*)(x_23, y_234), (*)(x_24, y_2), (*)(x_34, y_3))))
    ret_2 = (+)((*)(y_, (+)((*)(x_12, y_1), (*)(-1, x_13, y_123), (*)(-1, x_23, y_3))), (*)(y_12, (+)((*)(x_23, y_123), (*)(-1, x_12, y_2), (*)(-1, x_13, y_3))), (*)(y_123, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_23, y_12))), (*)(y_13, (+)((*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_13, y_2))), (*)(y_2, (+)((*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(y_3, (+)((*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_12, y_13))), (*)(-1, y_1, (+)((*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_13, y_23))), (*)(-1, y_23, (+)((*)(x_12, y_123), (*)(x_13, y_1), (*)(x_23, y_2))))
    ret_24 = (+)((*)(y_, (+)((*)(x_13, y_1234), (*)(x_14, y_12), (*)(x_23, y_34), (*)(x_24, y_), (*)(-1, x_12, y_14), (*)(-1, x_34, y_23))), (*)(y_1, (+)((*)(x_12, y_4), (*)(x_23, y_134), (*)(x_24, y_1), (*)(-1, x_13, y_234), (*)(-1, x_14, y_2), (*)(-1, x_34, y_123))), (*)(y_12, (+)((*)(x_12, y_24), (*)(x_13, y_34), (*)(x_14, y_), (*)(-1, x_23, y_1234), (*)(-1, x_24, y_12), (*)(-1, x_34, y_13))), (*)(y_1234, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_23, y_12))), (*)(y_124, (+)((*)(x_23, y_123), (*)(-1, x_12, y_2), (*)(-1, x_13, y_3))), (*)(y_13, (+)((*)(x_13, y_24), (*)(x_24, y_13), (*)(-1, x_12, y_34), (*)(-1, x_14, y_23), (*)(-1, x_23, y_14), (*)(-1, x_34, y_12))), (*)(y_134, (+)((*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_13, y_2))), (*)(y_24, (+)((*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(y_34, (+)((*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_12, y_13))), (*)(y_4, (+)((*)(x_12, y_1), (*)(-1, x_13, y_123), (*)(-1, x_23, y_3))), (*)(-1, y_123, (+)((*)(x_12, y_234), (*)(x_13, y_4), (*)(x_24, y_123), (*)(x_34, y_1), (*)(-1, x_14, y_3), (*)(-1, x_23, y_124))), (*)(-1, y_14, (+)((*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_13, y_23))), (*)(-1, y_2, (+)((*)(x_12, y_124), (*)(x_13, y_134), (*)(x_14, y_1), (*)(x_23, y_234), (*)(x_24, y_2), (*)(x_34, y_3))), (*)(-1, y_23, (+)((*)(x_14, y_13), (*)(x_24, y_23), (*)(x_34, y_), (*)(-1, x_12, y_1234), (*)(-1, x_13, y_14), (*)(-1, x_23, y_24))), (*)(-1, y_234, (+)((*)(x_12, y_123), (*)(x_13, y_1), (*)(x_23, y_2))), (*)(-1, y_3, (+)((*)(x_13, y_124), (*)(x_23, y_4), (*)(x_34, y_2), (*)(-1, x_12, y_134), (*)(-1, x_14, y_123), (*)(-1, x_24, y_3))))
    ret_23 = (+)((*)(y_, (+)((*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_12, y_13))), (*)(y_1, (+)((*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_13, y_2))), (*)(y_12, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_23, y_12))), (*)(y_123, (+)((*)(x_23, y_123), (*)(-1, x_12, y_2), (*)(-1, x_13, y_3))), (*)(y_23, (+)((*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(y_3, (+)((*)(x_12, y_1), (*)(-1, x_13, y_123), (*)(-1, x_23, y_3))), (*)(-1, y_13, (+)((*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_13, y_23))), (*)(-1, y_2, (+)((*)(x_12, y_123), (*)(x_13, y_1), (*)(x_23, y_2))))
    ret_234 = (+)((*)(y_, (+)((*)(x_13, y_124), (*)(x_23, y_4), (*)(x_34, y_2), (*)(-1, x_12, y_134), (*)(-1, x_14, y_123), (*)(-1, x_24, y_3))), (*)(y_12, (+)((*)(x_12, y_234), (*)(x_13, y_4), (*)(x_24, y_123), (*)(x_34, y_1), (*)(-1, x_14, y_3), (*)(-1, x_23, y_124))), (*)(y_1234, (+)((*)(x_23, y_123), (*)(-1, x_12, y_2), (*)(-1, x_13, y_3))), (*)(y_124, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_23, y_12))), (*)(y_14, (+)((*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_13, y_2))), (*)(y_2, (+)((*)(x_14, y_13), (*)(x_24, y_23), (*)(x_34, y_), (*)(-1, x_12, y_1234), (*)(-1, x_13, y_14), (*)(-1, x_23, y_24))), (*)(y_23, (+)((*)(x_12, y_124), (*)(x_13, y_134), (*)(x_14, y_1), (*)(x_23, y_234), (*)(x_24, y_2), (*)(x_34, y_3))), (*)(y_234, (+)((*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(y_34, (+)((*)(x_12, y_1), (*)(-1, x_13, y_123), (*)(-1, x_23, y_3))), (*)(y_4, (+)((*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_12, y_13))), (*)(-1, y_1, (+)((*)(x_13, y_24), (*)(x_24, y_13), (*)(-1, x_12, y_34), (*)(-1, x_14, y_23), (*)(-1, x_23, y_14), (*)(-1, x_34, y_12))), (*)(-1, y_123, (+)((*)(x_12, y_24), (*)(x_13, y_34), (*)(x_14, y_), (*)(-1, x_23, y_1234), (*)(-1, x_24, y_12), (*)(-1, x_34, y_13))), (*)(-1, y_13, (+)((*)(x_12, y_4), (*)(x_23, y_134), (*)(x_24, y_1), (*)(-1, x_13, y_234), (*)(-1, x_14, y_2), (*)(-1, x_34, y_123))), (*)(-1, y_134, (+)((*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_13, y_23))), (*)(-1, y_24, (+)((*)(x_12, y_123), (*)(x_13, y_1), (*)(x_23, y_2))), (*)(-1, y_3, (+)((*)(x_13, y_1234), (*)(x_14, y_12), (*)(x_23, y_34), (*)(x_24, y_), (*)(-1, x_12, y_14), (*)(-1, x_34, y_23))))
    ret_1 = (+)((*)(y_, (+)((*)(x_23, y_123), (*)(-1, x_12, y_2), (*)(-1, x_13, y_3))), (*)(y_1, (+)((*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(y_2, (+)((*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_13, y_23))), (*)(y_3, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_23, y_12))), (*)(-1, y_12, (+)((*)(x_12, y_1), (*)(-1, x_13, y_123), (*)(-1, x_23, y_3))), (*)(-1, y_123, (+)((*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_12, y_13))), (*)(-1, y_13, (+)((*)(x_12, y_123), (*)(x_13, y_1), (*)(x_23, y_2))), (*)(-1, y_23, (+)((*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_13, y_2))))
    ret_14 = (+)((*)(y_, (+)((*)(x_12, y_24), (*)(x_13, y_34), (*)(x_14, y_), (*)(-1, x_23, y_1234), (*)(-1, x_24, y_12), (*)(-1, x_34, y_13))), (*)(y_123, (+)((*)(x_13, y_124), (*)(x_23, y_4), (*)(x_34, y_2), (*)(-1, x_12, y_134), (*)(-1, x_14, y_123), (*)(-1, x_24, y_3))), (*)(y_14, (+)((*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(y_24, (+)((*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_13, y_23))), (*)(y_34, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_23, y_12))), (*)(y_4, (+)((*)(x_23, y_123), (*)(-1, x_12, y_2), (*)(-1, x_13, y_3))), (*)(-1, y_1, (+)((*)(x_12, y_124), (*)(x_13, y_134), (*)(x_14, y_1), (*)(x_23, y_234), (*)(x_24, y_2), (*)(x_34, y_3))), (*)(-1, y_12, (+)((*)(x_13, y_1234), (*)(x_14, y_12), (*)(x_23, y_34), (*)(x_24, y_), (*)(-1, x_12, y_14), (*)(-1, x_34, y_23))), (*)(-1, y_1234, (+)((*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_12, y_13))), (*)(-1, y_124, (+)((*)(x_12, y_1), (*)(-1, x_13, y_123), (*)(-1, x_23, y_3))), (*)(-1, y_13, (+)((*)(x_14, y_13), (*)(x_24, y_23), (*)(x_34, y_), (*)(-1, x_12, y_1234), (*)(-1, x_13, y_14), (*)(-1, x_23, y_24))), (*)(-1, y_134, (+)((*)(x_12, y_123), (*)(x_13, y_1), (*)(x_23, y_2))), (*)(-1, y_2, (+)((*)(x_12, y_4), (*)(x_23, y_134), (*)(x_24, y_1), (*)(-1, x_13, y_234), (*)(-1, x_14, y_2), (*)(-1, x_34, y_123))), (*)(-1, y_23, (+)((*)(x_13, y_24), (*)(x_24, y_13), (*)(-1, x_12, y_34), (*)(-1, x_14, y_23), (*)(-1, x_23, y_14), (*)(-1, x_34, y_12))), (*)(-1, y_234, (+)((*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_13, y_2))), (*)(-1, y_3, (+)((*)(x_12, y_234), (*)(x_13, y_4), (*)(x_24, y_123), (*)(x_34, y_1), (*)(-1, x_14, y_3), (*)(-1, x_23, y_124))))
    ret_13 = (+)((*)(y_, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_23, y_12))), (*)(y_13, (+)((*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(y_23, (+)((*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_13, y_23))), (*)(y_3, (+)((*)(x_23, y_123), (*)(-1, x_12, y_2), (*)(-1, x_13, y_3))), (*)(-1, y_1, (+)((*)(x_12, y_123), (*)(x_13, y_1), (*)(x_23, y_2))), (*)(-1, y_12, (+)((*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_12, y_13))), (*)(-1, y_123, (+)((*)(x_12, y_1), (*)(-1, x_13, y_123), (*)(-1, x_23, y_3))), (*)(-1, y_2, (+)((*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_13, y_2))))
    ret_134 = (+)((*)(y_, (+)((*)(x_12, y_234), (*)(x_13, y_4), (*)(x_24, y_123), (*)(x_34, y_1), (*)(-1, x_14, y_3), (*)(-1, x_23, y_124))), (*)(y_1, (+)((*)(x_14, y_13), (*)(x_24, y_23), (*)(x_34, y_), (*)(-1, x_12, y_1234), (*)(-1, x_13, y_14), (*)(-1, x_23, y_24))), (*)(y_123, (+)((*)(x_13, y_1234), (*)(x_14, y_12), (*)(x_23, y_34), (*)(x_24, y_), (*)(-1, x_12, y_14), (*)(-1, x_34, y_23))), (*)(y_13, (+)((*)(x_12, y_124), (*)(x_13, y_134), (*)(x_14, y_1), (*)(x_23, y_234), (*)(x_24, y_2), (*)(x_34, y_3))), (*)(y_134, (+)((*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(y_2, (+)((*)(x_13, y_24), (*)(x_24, y_13), (*)(-1, x_12, y_34), (*)(-1, x_14, y_23), (*)(-1, x_23, y_14), (*)(-1, x_34, y_12))), (*)(y_23, (+)((*)(x_12, y_4), (*)(x_23, y_134), (*)(x_24, y_1), (*)(-1, x_13, y_234), (*)(-1, x_14, y_2), (*)(-1, x_34, y_123))), (*)(y_234, (+)((*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_13, y_23))), (*)(y_34, (+)((*)(x_23, y_123), (*)(-1, x_12, y_2), (*)(-1, x_13, y_3))), (*)(y_4, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_23, y_12))), (*)(-1, y_12, (+)((*)(x_13, y_124), (*)(x_23, y_4), (*)(x_34, y_2), (*)(-1, x_12, y_134), (*)(-1, x_14, y_123), (*)(-1, x_24, y_3))), (*)(-1, y_1234, (+)((*)(x_12, y_1), (*)(-1, x_13, y_123), (*)(-1, x_23, y_3))), (*)(-1, y_124, (+)((*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_12, y_13))), (*)(-1, y_14, (+)((*)(x_12, y_123), (*)(x_13, y_1), (*)(x_23, y_2))), (*)(-1, y_24, (+)((*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_13, y_2))), (*)(-1, y_3, (+)((*)(x_12, y_24), (*)(x_13, y_34), (*)(x_14, y_), (*)(-1, x_23, y_1234), (*)(-1, x_24, y_12), (*)(-1, x_34, y_13))))
    ret_12 = (+)((*)(y_, (+)((*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_13, y_23))), (*)(y_12, (+)((*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(y_123, (+)((*)(x_12, y_123), (*)(x_13, y_1), (*)(x_23, y_2))), (*)(y_13, (+)((*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_12, y_13))), (*)(y_2, (+)((*)(x_23, y_123), (*)(-1, x_12, y_2), (*)(-1, x_13, y_3))), (*)(y_3, (+)((*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_13, y_2))), (*)(-1, y_1, (+)((*)(x_12, y_1), (*)(-1, x_13, y_123), (*)(-1, x_23, y_3))), (*)(-1, y_23, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_23, y_12))))
    ret_124 = (+)((*)(y_, (+)((*)(x_12, y_4), (*)(x_23, y_134), (*)(x_24, y_1), (*)(-1, x_13, y_234), (*)(-1, x_14, y_2), (*)(-1, x_34, y_123))), (*)(y_1, (+)((*)(x_13, y_1234), (*)(x_14, y_12), (*)(x_23, y_34), (*)(x_24, y_), (*)(-1, x_12, y_14), (*)(-1, x_34, y_23))), (*)(y_12, (+)((*)(x_12, y_124), (*)(x_13, y_134), (*)(x_14, y_1), (*)(x_23, y_234), (*)(x_24, y_2), (*)(x_34, y_3))), (*)(y_1234, (+)((*)(x_12, y_123), (*)(x_13, y_1), (*)(x_23, y_2))), (*)(y_124, (+)((*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(y_13, (+)((*)(x_13, y_124), (*)(x_23, y_4), (*)(x_34, y_2), (*)(-1, x_12, y_134), (*)(-1, x_14, y_123), (*)(-1, x_24, y_3))), (*)(y_134, (+)((*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_12, y_13))), (*)(y_24, (+)((*)(x_23, y_123), (*)(-1, x_12, y_2), (*)(-1, x_13, y_3))), (*)(y_34, (+)((*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_13, y_2))), (*)(y_4, (+)((*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_13, y_23))), (*)(-1, y_123, (+)((*)(x_14, y_13), (*)(x_24, y_23), (*)(x_34, y_), (*)(-1, x_12, y_1234), (*)(-1, x_13, y_14), (*)(-1, x_23, y_24))), (*)(-1, y_14, (+)((*)(x_12, y_1), (*)(-1, x_13, y_123), (*)(-1, x_23, y_3))), (*)(-1, y_2, (+)((*)(x_12, y_24), (*)(x_13, y_34), (*)(x_14, y_), (*)(-1, x_23, y_1234), (*)(-1, x_24, y_12), (*)(-1, x_34, y_13))), (*)(-1, y_23, (+)((*)(x_12, y_234), (*)(x_13, y_4), (*)(x_24, y_123), (*)(x_34, y_1), (*)(-1, x_14, y_3), (*)(-1, x_23, y_124))), (*)(-1, y_234, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_23, y_12))), (*)(-1, y_3, (+)((*)(x_13, y_24), (*)(x_24, y_13), (*)(-1, x_12, y_34), (*)(-1, x_14, y_23), (*)(-1, x_23, y_14), (*)(-1, x_34, y_12))))
    ret_123 = (+)((*)(y_, (+)((*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_13, y_2))), (*)(y_1, (+)((*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_12, y_13))), (*)(y_12, (+)((*)(x_12, y_123), (*)(x_13, y_1), (*)(x_23, y_2))), (*)(y_123, (+)((*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(y_23, (+)((*)(x_23, y_123), (*)(-1, x_12, y_2), (*)(-1, x_13, y_3))), (*)(y_3, (+)((*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_13, y_23))), (*)(-1, y_13, (+)((*)(x_12, y_1), (*)(-1, x_13, y_123), (*)(-1, x_23, y_3))), (*)(-1, y_2, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_23, y_12))))
    ret_1234 = (+)((*)(y_, (+)((*)(x_13, y_24), (*)(x_24, y_13), (*)(-1, x_12, y_34), (*)(-1, x_14, y_23), (*)(-1, x_23, y_14), (*)(-1, x_34, y_12))), (*)(y_12, (+)((*)(x_14, y_13), (*)(x_24, y_23), (*)(x_34, y_), (*)(-1, x_12, y_1234), (*)(-1, x_13, y_14), (*)(-1, x_23, y_24))), (*)(y_1234, (+)((*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(y_124, (+)((*)(x_12, y_123), (*)(x_13, y_1), (*)(x_23, y_2))), (*)(y_14, (+)((*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_12, y_13))), (*)(y_2, (+)((*)(x_12, y_234), (*)(x_13, y_4), (*)(x_24, y_123), (*)(x_34, y_1), (*)(-1, x_14, y_3), (*)(-1, x_23, y_124))), (*)(y_23, (+)((*)(x_12, y_24), (*)(x_13, y_34), (*)(x_14, y_), (*)(-1, x_23, y_1234), (*)(-1, x_24, y_12), (*)(-1, x_34, y_13))), (*)(y_234, (+)((*)(x_23, y_123), (*)(-1, x_12, y_2), (*)(-1, x_13, y_3))), (*)(y_34, (+)((*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_13, y_23))), (*)(y_4, (+)((*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_13, y_2))), (*)(-1, y_1, (+)((*)(x_13, y_124), (*)(x_23, y_4), (*)(x_34, y_2), (*)(-1, x_12, y_134), (*)(-1, x_14, y_123), (*)(-1, x_24, y_3))), (*)(-1, y_123, (+)((*)(x_12, y_124), (*)(x_13, y_134), (*)(x_14, y_1), (*)(x_23, y_234), (*)(x_24, y_2), (*)(x_34, y_3))), (*)(-1, y_13, (+)((*)(x_13, y_1234), (*)(x_14, y_12), (*)(x_23, y_34), (*)(x_24, y_), (*)(-1, x_12, y_14), (*)(-1, x_34, y_23))), (*)(-1, y_134, (+)((*)(x_12, y_1), (*)(-1, x_13, y_123), (*)(-1, x_23, y_3))), (*)(-1, y_24, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_23, y_12))), (*)(-1, y_3, (+)((*)(x_12, y_4), (*)(x_23, y_134), (*)(x_24, y_1), (*)(-1, x_13, y_234), (*)(-1, x_14, y_2), (*)(-1, x_34, y_123))))
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function sandwich(x::MultiVector2, y::MultiVectorEven)
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    y_ = y.e
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    y_1234 = y.e1234
    ret_ = (+)((*)(y_, (+)((*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(-1, y_12, (+)((*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_13, y_23))), (*)(-1, y_13, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_23, y_12))), (*)(-1, y_23, (+)((*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_12, y_13))))
    ret_34 = (+)((*)(y_, (+)((*)(x_14, y_13), (*)(x_24, y_23), (*)(x_34, y_), (*)(-1, x_12, y_1234), (*)(-1, x_13, y_14), (*)(-1, x_23, y_24))), (*)(y_13, (+)((*)(x_12, y_24), (*)(x_13, y_34), (*)(x_14, y_), (*)(-1, x_23, y_1234), (*)(-1, x_24, y_12), (*)(-1, x_34, y_13))), (*)(y_23, (+)((*)(x_13, y_1234), (*)(x_14, y_12), (*)(x_23, y_34), (*)(x_24, y_), (*)(-1, x_12, y_14), (*)(-1, x_34, y_23))), (*)(y_34, (+)((*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(-1, y_12, (+)((*)(x_13, y_24), (*)(x_24, y_13), (*)(-1, x_12, y_34), (*)(-1, x_14, y_23), (*)(-1, x_23, y_14), (*)(-1, x_34, y_12))), (*)(-1, y_1234, (+)((*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_13, y_23))), (*)(-1, y_14, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_23, y_12))), (*)(-1, y_24, (+)((*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_12, y_13))))
    ret_24 = (+)((*)(y_, (+)((*)(x_13, y_1234), (*)(x_14, y_12), (*)(x_23, y_34), (*)(x_24, y_), (*)(-1, x_12, y_14), (*)(-1, x_34, y_23))), (*)(y_12, (+)((*)(x_12, y_24), (*)(x_13, y_34), (*)(x_14, y_), (*)(-1, x_23, y_1234), (*)(-1, x_24, y_12), (*)(-1, x_34, y_13))), (*)(y_1234, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_23, y_12))), (*)(y_13, (+)((*)(x_13, y_24), (*)(x_24, y_13), (*)(-1, x_12, y_34), (*)(-1, x_14, y_23), (*)(-1, x_23, y_14), (*)(-1, x_34, y_12))), (*)(y_24, (+)((*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(y_34, (+)((*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_12, y_13))), (*)(-1, y_14, (+)((*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_13, y_23))), (*)(-1, y_23, (+)((*)(x_14, y_13), (*)(x_24, y_23), (*)(x_34, y_), (*)(-1, x_12, y_1234), (*)(-1, x_13, y_14), (*)(-1, x_23, y_24))))
    ret_23 = (+)((*)(y_, (+)((*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_12, y_13))), (*)(y_12, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_23, y_12))), (*)(y_23, (+)((*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(-1, y_13, (+)((*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_13, y_23))))
    ret_14 = (+)((*)(y_, (+)((*)(x_12, y_24), (*)(x_13, y_34), (*)(x_14, y_), (*)(-1, x_23, y_1234), (*)(-1, x_24, y_12), (*)(-1, x_34, y_13))), (*)(y_14, (+)((*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(y_24, (+)((*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_13, y_23))), (*)(y_34, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_23, y_12))), (*)(-1, y_12, (+)((*)(x_13, y_1234), (*)(x_14, y_12), (*)(x_23, y_34), (*)(x_24, y_), (*)(-1, x_12, y_14), (*)(-1, x_34, y_23))), (*)(-1, y_1234, (+)((*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_12, y_13))), (*)(-1, y_13, (+)((*)(x_14, y_13), (*)(x_24, y_23), (*)(x_34, y_), (*)(-1, x_12, y_1234), (*)(-1, x_13, y_14), (*)(-1, x_23, y_24))), (*)(-1, y_23, (+)((*)(x_13, y_24), (*)(x_24, y_13), (*)(-1, x_12, y_34), (*)(-1, x_14, y_23), (*)(-1, x_23, y_14), (*)(-1, x_34, y_12))))
    ret_13 = (+)((*)(y_, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_23, y_12))), (*)(y_13, (+)((*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(y_23, (+)((*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_13, y_23))), (*)(-1, y_12, (+)((*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_12, y_13))))
    ret_12 = (+)((*)(y_, (+)((*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_13, y_23))), (*)(y_12, (+)((*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(y_13, (+)((*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_12, y_13))), (*)(-1, y_23, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_23, y_12))))
    ret_1234 = (+)((*)(y_, (+)((*)(x_13, y_24), (*)(x_24, y_13), (*)(-1, x_12, y_34), (*)(-1, x_14, y_23), (*)(-1, x_23, y_14), (*)(-1, x_34, y_12))), (*)(y_12, (+)((*)(x_14, y_13), (*)(x_24, y_23), (*)(x_34, y_), (*)(-1, x_12, y_1234), (*)(-1, x_13, y_14), (*)(-1, x_23, y_24))), (*)(y_1234, (+)((*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(y_14, (+)((*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_12, y_13))), (*)(y_23, (+)((*)(x_12, y_24), (*)(x_13, y_34), (*)(x_14, y_), (*)(-1, x_23, y_1234), (*)(-1, x_24, y_12), (*)(-1, x_34, y_13))), (*)(y_34, (+)((*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_13, y_23))), (*)(-1, y_13, (+)((*)(x_13, y_1234), (*)(x_14, y_12), (*)(x_23, y_34), (*)(x_24, y_), (*)(-1, x_12, y_14), (*)(-1, x_34, y_23))), (*)(-1, y_24, (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_23, y_12))))
    return MultiVectorEven(; e = ret_, e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12, e1234 = ret_1234)
end
function sandwich(x::MultiVector2, y::MultiVector0)
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    y_ = y.e
    ret_34 = (*)(x_34, (^)(y_, 2))
    ret_24 = (*)(x_24, (^)(y_, 2))
    ret_23 = (*)(x_23, (^)(y_, 2))
    ret_14 = (*)(x_14, (^)(y_, 2))
    ret_13 = (*)(x_13, (^)(y_, 2))
    ret_12 = (*)(x_12, (^)(y_, 2))
    return MultiVector2(; e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12)
end
function sandwich(x::MultiVector2, y::MultiVector1)
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    y_4 = y.e4
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    ret_ = (+)((*)(y_1, (+)((*)(-1, x_12, y_2), (*)(-1, x_13, y_3))), (*)(y_2, (+)((*)(x_12, y_1), (*)(-1, x_23, y_3))), (*)(y_3, (+)((*)(x_13, y_1), (*)(x_23, y_2))))
    ret_34 = (+)((*)(y_1, (+)((*)(x_13, y_4), (*)(x_34, y_1), (*)(-1, x_14, y_3))), (*)(y_2, (+)((*)(x_23, y_4), (*)(x_34, y_2), (*)(-1, x_24, y_3))), (*)(y_4, (+)((*)(x_13, y_1), (*)(x_23, y_2))), (*)(-1, y_3, (+)((*)(x_14, y_1), (*)(x_24, y_2), (*)(x_34, y_3))))
    ret_24 = (+)((*)(y_1, (+)((*)(x_12, y_4), (*)(x_24, y_1), (*)(-1, x_14, y_2))), (*)(y_4, (+)((*)(x_12, y_1), (*)(-1, x_23, y_3))), (*)(-1, y_2, (+)((*)(x_14, y_1), (*)(x_24, y_2), (*)(x_34, y_3))), (*)(-1, y_3, (+)((*)(x_23, y_4), (*)(x_34, y_2), (*)(-1, x_24, y_3))))
    ret_23 = (+)((*)(y_1, (+)((*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_13, y_2))), (*)(y_3, (+)((*)(x_12, y_1), (*)(-1, x_23, y_3))), (*)(-1, y_2, (+)((*)(x_13, y_1), (*)(x_23, y_2))))
    ret_14 = (+)((*)(y_4, (+)((*)(-1, x_12, y_2), (*)(-1, x_13, y_3))), (*)(-1, y_1, (+)((*)(x_14, y_1), (*)(x_24, y_2), (*)(x_34, y_3))), (*)(-1, y_2, (+)((*)(x_12, y_4), (*)(x_24, y_1), (*)(-1, x_14, y_2))), (*)(-1, y_3, (+)((*)(x_13, y_4), (*)(x_34, y_1), (*)(-1, x_14, y_3))))
    ret_13 = (+)((*)(y_3, (+)((*)(-1, x_12, y_2), (*)(-1, x_13, y_3))), (*)(-1, y_1, (+)((*)(x_13, y_1), (*)(x_23, y_2))), (*)(-1, y_2, (+)((*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_13, y_2))))
    ret_12 = (+)((*)(y_2, (+)((*)(-1, x_12, y_2), (*)(-1, x_13, y_3))), (*)(y_3, (+)((*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_13, y_2))), (*)(-1, y_1, (+)((*)(x_12, y_1), (*)(-1, x_23, y_3))))
    ret_1234 = (+)((*)(y_2, (+)((*)(x_13, y_4), (*)(x_34, y_1), (*)(-1, x_14, y_3))), (*)(y_4, (+)((*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_13, y_2))), (*)(-1, y_1, (+)((*)(x_23, y_4), (*)(x_34, y_2), (*)(-1, x_24, y_3))), (*)(-1, y_3, (+)((*)(x_12, y_4), (*)(x_24, y_1), (*)(-1, x_14, y_2))))
    return MultiVectorEven(; e = ret_, e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12, e1234 = ret_1234)
end
function sandwich(x::MultiVector2, y::MultiVector2)
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    ret_ = (+)((*)(-1, y_12, (+)((*)(x_23, y_13), (*)(-1, x_13, y_23))), (*)(-1, y_13, (+)((*)(x_12, y_23), (*)(-1, x_23, y_12))), (*)(-1, y_23, (+)((*)(x_13, y_12), (*)(-1, x_12, y_13))))
    ret_34 = (+)((*)(y_13, (+)((*)(x_12, y_24), (*)(x_13, y_34), (*)(-1, x_24, y_12), (*)(-1, x_34, y_13))), (*)(y_23, (+)((*)(x_14, y_12), (*)(x_23, y_34), (*)(-1, x_12, y_14), (*)(-1, x_34, y_23))), (*)(y_34, (+)((*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(-1, y_12, (+)((*)(x_13, y_24), (*)(x_24, y_13), (*)(-1, x_12, y_34), (*)(-1, x_14, y_23), (*)(-1, x_23, y_14), (*)(-1, x_34, y_12))), (*)(-1, y_14, (+)((*)(x_12, y_23), (*)(-1, x_23, y_12))), (*)(-1, y_24, (+)((*)(x_13, y_12), (*)(-1, x_12, y_13))))
    ret_24 = (+)((*)(y_12, (+)((*)(x_12, y_24), (*)(x_13, y_34), (*)(-1, x_24, y_12), (*)(-1, x_34, y_13))), (*)(y_13, (+)((*)(x_13, y_24), (*)(x_24, y_13), (*)(-1, x_12, y_34), (*)(-1, x_14, y_23), (*)(-1, x_23, y_14), (*)(-1, x_34, y_12))), (*)(y_24, (+)((*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(y_34, (+)((*)(x_13, y_12), (*)(-1, x_12, y_13))), (*)(-1, y_14, (+)((*)(x_23, y_13), (*)(-1, x_13, y_23))), (*)(-1, y_23, (+)((*)(x_14, y_13), (*)(x_24, y_23), (*)(-1, x_13, y_14), (*)(-1, x_23, y_24))))
    ret_23 = (+)((*)(y_12, (+)((*)(x_12, y_23), (*)(-1, x_23, y_12))), (*)(y_23, (+)((*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(-1, y_13, (+)((*)(x_23, y_13), (*)(-1, x_13, y_23))))
    ret_14 = (+)((*)(y_14, (+)((*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(y_24, (+)((*)(x_23, y_13), (*)(-1, x_13, y_23))), (*)(y_34, (+)((*)(x_12, y_23), (*)(-1, x_23, y_12))), (*)(-1, y_12, (+)((*)(x_14, y_12), (*)(x_23, y_34), (*)(-1, x_12, y_14), (*)(-1, x_34, y_23))), (*)(-1, y_13, (+)((*)(x_14, y_13), (*)(x_24, y_23), (*)(-1, x_13, y_14), (*)(-1, x_23, y_24))), (*)(-1, y_23, (+)((*)(x_13, y_24), (*)(x_24, y_13), (*)(-1, x_12, y_34), (*)(-1, x_14, y_23), (*)(-1, x_23, y_14), (*)(-1, x_34, y_12))))
    ret_13 = (+)((*)(y_13, (+)((*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(y_23, (+)((*)(x_23, y_13), (*)(-1, x_13, y_23))), (*)(-1, y_12, (+)((*)(x_13, y_12), (*)(-1, x_12, y_13))))
    ret_12 = (+)((*)(y_12, (+)((*)(x_12, y_12), (*)(x_13, y_13), (*)(x_23, y_23))), (*)(y_13, (+)((*)(x_13, y_12), (*)(-1, x_12, y_13))), (*)(-1, y_23, (+)((*)(x_12, y_23), (*)(-1, x_23, y_12))))
    ret_1234 = (+)((*)(y_12, (+)((*)(x_14, y_13), (*)(x_24, y_23), (*)(-1, x_13, y_14), (*)(-1, x_23, y_24))), (*)(y_14, (+)((*)(x_13, y_12), (*)(-1, x_12, y_13))), (*)(y_23, (+)((*)(x_12, y_24), (*)(x_13, y_34), (*)(-1, x_24, y_12), (*)(-1, x_34, y_13))), (*)(y_34, (+)((*)(x_23, y_13), (*)(-1, x_13, y_23))), (*)(-1, y_13, (+)((*)(x_14, y_12), (*)(x_23, y_34), (*)(-1, x_12, y_14), (*)(-1, x_34, y_23))), (*)(-1, y_24, (+)((*)(x_12, y_23), (*)(-1, x_23, y_12))))
    return MultiVectorEven(; e = ret_, e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12, e1234 = ret_1234)
end
function sandwich(x::MultiVector2, y::MultiVector3)
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    y_234 = y.e234
    y_134 = y.e134
    y_124 = y.e124
    y_123 = y.e123
    ret_34 = (+)((*)(y_123, (+)((*)(x_23, y_134), (*)(-1, x_13, y_234), (*)(-1, x_34, y_123))), (*)(x_23, y_123, y_134), (*)(-1, x_13, y_123, y_234))
    ret_24 = (+)((*)(x_23, y_123, y_124), (*)(-1, y_123, (+)((*)(x_12, y_234), (*)(x_24, y_123), (*)(-1, x_23, y_124))), (*)(-1, x_12, y_123, y_234))
    ret_23 = (*)(x_23, (^)(y_123, 2))
    ret_14 = (+)((*)(y_123, (+)((*)(x_13, y_124), (*)(-1, x_12, y_134), (*)(-1, x_14, y_123))), (*)(x_13, y_123, y_124), (*)(-1, x_12, y_123, y_134))
    ret_13 = (*)(x_13, (^)(y_123, 2))
    ret_12 = (*)(x_12, (^)(y_123, 2))
    ret_1234 = (+)((*)(x_12, y_123, y_124), (*)(x_13, y_123, y_134), (*)(x_23, y_123, y_234), (*)(-1, y_123, (+)((*)(x_12, y_124), (*)(x_13, y_134), (*)(x_23, y_234))))
    return MultiVectorEven(; e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12, e1234 = ret_1234)
end
function sandwich(x::MultiVector2, y::MultiVector4)
    return MultiVectorZero(; )
end
function sandwich(x::MultiVector2, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function sandwich(x::MultiVector3, y::MultiVectorAll)
    x_234 = x.e234
    x_134 = x.e134
    x_124 = x.e124
    x_123 = x.e123
    y_ = y.e
    y_4 = y.e4
    y_3 = y.e3
    y_34 = y.e34
    y_2 = y.e2
    y_24 = y.e24
    y_23 = y.e23
    y_234 = y.e234
    y_1 = y.e1
    y_14 = y.e14
    y_13 = y.e13
    y_134 = y.e134
    y_12 = y.e12
    y_124 = y.e124
    y_123 = y.e123
    y_1234 = y.e1234
    ret_4 = (+)((*)(y_, (+)((*)(x_123, y_1234), (*)(x_124, y_12), (*)(x_134, y_13), (*)(x_234, y_23))), (*)(y_123, (+)((*)(x_124, y_3), (*)(x_234, y_1), (*)(-1, x_123, y_4), (*)(-1, x_134, y_2))), (*)(x_123, y_12, y_34), (*)(x_123, y_123, y_4), (*)(x_123, y_134, y_2), (*)(x_123, y_14, y_23), (*)(-1, y_1, (+)((*)(x_234, y_123), (*)(-1, x_123, y_234), (*)(-1, x_124, y_2), (*)(-1, x_134, y_3))), (*)(-1, y_12, (+)((*)(x_123, y_34), (*)(x_124, y_), (*)(x_234, y_13), (*)(-1, x_134, y_23))), (*)(-1, y_13, (+)((*)(x_124, y_23), (*)(x_134, y_), (*)(-1, x_123, y_24), (*)(-1, x_234, y_12))), (*)(-1, y_2, (+)((*)(x_123, y_134), (*)(x_124, y_1), (*)(-1, x_134, y_123), (*)(-1, x_234, y_3))), (*)(-1, y_23, (+)((*)(x_123, y_14), (*)(x_134, y_12), (*)(x_234, y_), (*)(-1, x_124, y_13))), (*)(-1, y_3, (+)((*)(x_124, y_123), (*)(x_134, y_1), (*)(x_234, y_2), (*)(-1, x_123, y_124))), (*)(-1, x_123, y_, y_1234), (*)(-1, x_123, y_1, y_234), (*)(-1, x_123, y_124, y_3), (*)(-1, x_123, y_13, y_24))
    ret_34 = (+)((*)(y_, (+)((*)(x_124, y_123), (*)(x_134, y_1), (*)(x_234, y_2), (*)(-1, x_123, y_124))), (*)(y_1, (+)((*)(x_124, y_23), (*)(x_134, y_), (*)(-1, x_123, y_24), (*)(-1, x_234, y_12))), (*)(y_123, (+)((*)(x_123, y_34), (*)(x_124, y_), (*)(x_234, y_13), (*)(-1, x_134, y_23))), (*)(y_13, (+)((*)(x_234, y_123), (*)(-1, x_123, y_234), (*)(-1, x_124, y_2), (*)(-1, x_134, y_3))), (*)(y_2, (+)((*)(x_123, y_14), (*)(x_134, y_12), (*)(x_234, y_), (*)(-1, x_124, y_13))), (*)(y_23, (+)((*)(x_123, y_134), (*)(x_124, y_1), (*)(-1, x_134, y_123), (*)(-1, x_234, y_3))), (*)(x_123, y_12, y_4), (*)(x_123, y_123, y_34), (*)(x_123, y_134, y_23), (*)(x_123, y_14, y_2), (*)(-1, y_12, (+)((*)(x_124, y_3), (*)(x_234, y_1), (*)(-1, x_123, y_4), (*)(-1, x_134, y_2))), (*)(-1, y_3, (+)((*)(x_123, y_1234), (*)(x_124, y_12), (*)(x_134, y_13), (*)(x_234, y_23))), (*)(-1, x_123, y_, y_124), (*)(-1, x_123, y_1, y_24), (*)(-1, x_123, y_1234, y_3), (*)(-1, x_123, y_13, y_234))
    ret_24 = (+)((*)(y_, (+)((*)(x_123, y_134), (*)(x_124, y_1), (*)(-1, x_134, y_123), (*)(-1, x_234, y_3))), (*)(y_1, (+)((*)(x_123, y_34), (*)(x_124, y_), (*)(x_234, y_13), (*)(-1, x_134, y_23))), (*)(y_12, (+)((*)(x_234, y_123), (*)(-1, x_123, y_234), (*)(-1, x_124, y_2), (*)(-1, x_134, y_3))), (*)(y_13, (+)((*)(x_124, y_3), (*)(x_234, y_1), (*)(-1, x_123, y_4), (*)(-1, x_134, y_2))), (*)(x_123, y_, y_134), (*)(x_123, y_1, y_34), (*)(x_123, y_123, y_24), (*)(x_123, y_124, y_23), (*)(-1, y_123, (+)((*)(x_124, y_23), (*)(x_134, y_), (*)(-1, x_123, y_24), (*)(-1, x_234, y_12))), (*)(-1, y_2, (+)((*)(x_123, y_1234), (*)(x_124, y_12), (*)(x_134, y_13), (*)(x_234, y_23))), (*)(-1, y_23, (+)((*)(x_124, y_123), (*)(x_134, y_1), (*)(x_234, y_2), (*)(-1, x_123, y_124))), (*)(-1, y_3, (+)((*)(x_123, y_14), (*)(x_134, y_12), (*)(x_234, y_), (*)(-1, x_124, y_13))), (*)(-1, x_123, y_12, y_234), (*)(-1, x_123, y_1234, y_2), (*)(-1, x_123, y_13, y_4), (*)(-1, x_123, y_14, y_3))
    ret_23 = (+)((*)(2, x_123, y_, y_1), (*)(-2, x_123, y_12, y_2), (*)(2, x_123, y_123, y_23), (*)(-2, x_123, y_13, y_3))
    ret_234 = (+)((*)(y_, (+)((*)(x_123, y_14), (*)(x_134, y_12), (*)(x_234, y_), (*)(-1, x_124, y_13))), (*)(y_12, (+)((*)(x_124, y_23), (*)(x_134, y_), (*)(-1, x_123, y_24), (*)(-1, x_234, y_12))), (*)(y_2, (+)((*)(x_124, y_123), (*)(x_134, y_1), (*)(x_234, y_2), (*)(-1, x_123, y_124))), (*)(y_23, (+)((*)(x_123, y_1234), (*)(x_124, y_12), (*)(x_134, y_13), (*)(x_234, y_23))), (*)(x_123, y_, y_14), (*)(x_123, y_1, y_4), (*)(x_123, y_123, y_234), (*)(x_123, y_1234, y_23), (*)(-1, y_1, (+)((*)(x_124, y_3), (*)(x_234, y_1), (*)(-1, x_123, y_4), (*)(-1, x_134, y_2))), (*)(-1, y_123, (+)((*)(x_234, y_123), (*)(-1, x_123, y_234), (*)(-1, x_124, y_2), (*)(-1, x_134, y_3))), (*)(-1, y_13, (+)((*)(x_123, y_34), (*)(x_124, y_), (*)(x_234, y_13), (*)(-1, x_134, y_23))), (*)(-1, y_3, (+)((*)(x_123, y_134), (*)(x_124, y_1), (*)(-1, x_134, y_123), (*)(-1, x_234, y_3))), (*)(-1, x_123, y_12, y_24), (*)(-1, x_123, y_124, y_2), (*)(-1, x_123, y_13, y_34), (*)(-1, x_123, y_134, y_3))
    ret_14 = (+)((*)(y_, (+)((*)(x_234, y_123), (*)(-1, x_123, y_234), (*)(-1, x_124, y_2), (*)(-1, x_134, y_3))), (*)(y_123, (+)((*)(x_123, y_14), (*)(x_134, y_12), (*)(x_234, y_), (*)(-1, x_124, y_13))), (*)(x_123, y_123, y_14), (*)(x_123, y_124, y_13), (*)(x_123, y_23, y_4), (*)(x_123, y_24, y_3), (*)(-1, y_1, (+)((*)(x_123, y_1234), (*)(x_124, y_12), (*)(x_134, y_13), (*)(x_234, y_23))), (*)(-1, y_12, (+)((*)(x_123, y_134), (*)(x_124, y_1), (*)(-1, x_134, y_123), (*)(-1, x_234, y_3))), (*)(-1, y_13, (+)((*)(x_124, y_123), (*)(x_134, y_1), (*)(x_234, y_2), (*)(-1, x_123, y_124))), (*)(-1, y_2, (+)((*)(x_123, y_34), (*)(x_124, y_), (*)(x_234, y_13), (*)(-1, x_134, y_23))), (*)(-1, y_23, (+)((*)(x_124, y_3), (*)(x_234, y_1), (*)(-1, x_123, y_4), (*)(-1, x_134, y_2))), (*)(-1, y_3, (+)((*)(x_124, y_23), (*)(x_134, y_), (*)(-1, x_123, y_24), (*)(-1, x_234, y_12))), (*)(-1, x_123, y_, y_234), (*)(-1, x_123, y_1, y_1234), (*)(-1, x_123, y_12, y_134), (*)(-1, x_123, y_2, y_34))
    ret_13 = (+)((*)(-2, x_123, y_, y_2), (*)(-2, x_123, y_1, y_12), (*)(2, x_123, y_123, y_13), (*)(2, x_123, y_23, y_3))
    ret_134 = (+)((*)(y_, (+)((*)(x_124, y_23), (*)(x_134, y_), (*)(-1, x_123, y_24), (*)(-1, x_234, y_12))), (*)(y_1, (+)((*)(x_124, y_123), (*)(x_134, y_1), (*)(x_234, y_2), (*)(-1, x_123, y_124))), (*)(y_123, (+)((*)(x_123, y_134), (*)(x_124, y_1), (*)(-1, x_134, y_123), (*)(-1, x_234, y_3))), (*)(y_13, (+)((*)(x_123, y_1234), (*)(x_124, y_12), (*)(x_134, y_13), (*)(x_234, y_23))), (*)(y_2, (+)((*)(x_124, y_3), (*)(x_234, y_1), (*)(-1, x_123, y_4), (*)(-1, x_134, y_2))), (*)(y_23, (+)((*)(x_123, y_34), (*)(x_124, y_), (*)(x_234, y_13), (*)(-1, x_134, y_23))), (*)(x_123, y_123, y_134), (*)(x_123, y_1234, y_13), (*)(x_123, y_23, y_34), (*)(x_123, y_234, y_3), (*)(-1, y_12, (+)((*)(x_123, y_14), (*)(x_134, y_12), (*)(x_234, y_), (*)(-1, x_124, y_13))), (*)(-1, y_3, (+)((*)(x_234, y_123), (*)(-1, x_123, y_234), (*)(-1, x_124, y_2), (*)(-1, x_134, y_3))), (*)(-1, x_123, y_, y_24), (*)(-1, x_123, y_1, y_124), (*)(-1, x_123, y_12, y_14), (*)(-1, x_123, y_2, y_4))
    ret_12 = (+)((*)(2, x_123, y_, y_3), (*)(2, x_123, y_1, y_13), (*)(2, x_123, y_12, y_123), (*)(2, x_123, y_2, y_23))
    ret_124 = (+)((*)(y_, (+)((*)(x_123, y_34), (*)(x_124, y_), (*)(x_234, y_13), (*)(-1, x_134, y_23))), (*)(y_1, (+)((*)(x_123, y_134), (*)(x_124, y_1), (*)(-1, x_134, y_123), (*)(-1, x_234, y_3))), (*)(y_12, (+)((*)(x_123, y_1234), (*)(x_124, y_12), (*)(x_134, y_13), (*)(x_234, y_23))), (*)(y_13, (+)((*)(x_123, y_14), (*)(x_134, y_12), (*)(x_234, y_), (*)(-1, x_124, y_13))), (*)(x_123, y_, y_34), (*)(x_123, y_1, y_134), (*)(x_123, y_12, y_1234), (*)(x_123, y_123, y_124), (*)(x_123, y_13, y_14), (*)(x_123, y_2, y_234), (*)(x_123, y_23, y_24), (*)(x_123, y_3, y_4), (*)(-1, y_123, (+)((*)(x_124, y_123), (*)(x_134, y_1), (*)(x_234, y_2), (*)(-1, x_123, y_124))), (*)(-1, y_2, (+)((*)(x_234, y_123), (*)(-1, x_123, y_234), (*)(-1, x_124, y_2), (*)(-1, x_134, y_3))), (*)(-1, y_23, (+)((*)(x_124, y_23), (*)(x_134, y_), (*)(-1, x_123, y_24), (*)(-1, x_234, y_12))), (*)(-1, y_3, (+)((*)(x_124, y_3), (*)(x_234, y_1), (*)(-1, x_123, y_4), (*)(-1, x_134, y_2))))
    ret_123 = (+)((*)(x_123, (^)(y_, 2)), (*)(x_123, (^)(y_1, 2)), (*)(x_123, (^)(y_12, 2)), (*)(x_123, (^)(y_123, 2)), (*)(x_123, (^)(y_13, 2)), (*)(x_123, (^)(y_2, 2)), (*)(x_123, (^)(y_23, 2)), (*)(x_123, (^)(y_3, 2)))
    ret_1234 = (+)((*)(y_, (+)((*)(x_124, y_3), (*)(x_234, y_1), (*)(-1, x_123, y_4), (*)(-1, x_134, y_2))), (*)(y_12, (+)((*)(x_124, y_123), (*)(x_134, y_1), (*)(x_234, y_2), (*)(-1, x_123, y_124))), (*)(y_2, (+)((*)(x_124, y_23), (*)(x_134, y_), (*)(-1, x_123, y_24), (*)(-1, x_234, y_12))), (*)(y_23, (+)((*)(x_234, y_123), (*)(-1, x_123, y_234), (*)(-1, x_124, y_2), (*)(-1, x_134, y_3))), (*)(x_123, y_, y_4), (*)(x_123, y_1, y_14), (*)(x_123, y_12, y_124), (*)(x_123, y_123, y_1234), (*)(x_123, y_13, y_134), (*)(x_123, y_2, y_24), (*)(x_123, y_23, y_234), (*)(x_123, y_3, y_34), (*)(-1, y_1, (+)((*)(x_123, y_14), (*)(x_134, y_12), (*)(x_234, y_), (*)(-1, x_124, y_13))), (*)(-1, y_123, (+)((*)(x_123, y_1234), (*)(x_124, y_12), (*)(x_134, y_13), (*)(x_234, y_23))), (*)(-1, y_13, (+)((*)(x_123, y_134), (*)(x_124, y_1), (*)(-1, x_134, y_123), (*)(-1, x_234, y_3))), (*)(-1, y_3, (+)((*)(x_123, y_34), (*)(x_124, y_), (*)(x_234, y_13), (*)(-1, x_134, y_23))))
    return MultiVectorAll(; e4 = ret_4, e34 = ret_34, e24 = ret_24, e23 = ret_23, e234 = ret_234, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function sandwich(x::MultiVector3, y::MultiVectorEven)
    x_234 = x.e234
    x_134 = x.e134
    x_124 = x.e124
    x_123 = x.e123
    y_ = y.e
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    y_1234 = y.e1234
    ret_4 = (+)((*)(y_, (+)((*)(x_123, y_1234), (*)(x_124, y_12), (*)(x_134, y_13), (*)(x_234, y_23))), (*)(x_123, y_12, y_34), (*)(x_123, y_14, y_23), (*)(-1, y_12, (+)((*)(x_123, y_34), (*)(x_124, y_), (*)(x_234, y_13), (*)(-1, x_134, y_23))), (*)(-1, y_13, (+)((*)(x_124, y_23), (*)(x_134, y_), (*)(-1, x_123, y_24), (*)(-1, x_234, y_12))), (*)(-1, y_23, (+)((*)(x_123, y_14), (*)(x_134, y_12), (*)(x_234, y_), (*)(-1, x_124, y_13))), (*)(-1, x_123, y_, y_1234), (*)(-1, x_123, y_13, y_24))
    ret_234 = (+)((*)(y_, (+)((*)(x_123, y_14), (*)(x_134, y_12), (*)(x_234, y_), (*)(-1, x_124, y_13))), (*)(y_12, (+)((*)(x_124, y_23), (*)(x_134, y_), (*)(-1, x_123, y_24), (*)(-1, x_234, y_12))), (*)(y_23, (+)((*)(x_123, y_1234), (*)(x_124, y_12), (*)(x_134, y_13), (*)(x_234, y_23))), (*)(x_123, y_, y_14), (*)(x_123, y_1234, y_23), (*)(-1, y_13, (+)((*)(x_123, y_34), (*)(x_124, y_), (*)(x_234, y_13), (*)(-1, x_134, y_23))), (*)(-1, x_123, y_12, y_24), (*)(-1, x_123, y_13, y_34))
    ret_134 = (+)((*)(y_, (+)((*)(x_124, y_23), (*)(x_134, y_), (*)(-1, x_123, y_24), (*)(-1, x_234, y_12))), (*)(y_13, (+)((*)(x_123, y_1234), (*)(x_124, y_12), (*)(x_134, y_13), (*)(x_234, y_23))), (*)(y_23, (+)((*)(x_123, y_34), (*)(x_124, y_), (*)(x_234, y_13), (*)(-1, x_134, y_23))), (*)(x_123, y_1234, y_13), (*)(x_123, y_23, y_34), (*)(-1, y_12, (+)((*)(x_123, y_14), (*)(x_134, y_12), (*)(x_234, y_), (*)(-1, x_124, y_13))), (*)(-1, x_123, y_, y_24), (*)(-1, x_123, y_12, y_14))
    ret_124 = (+)((*)(y_, (+)((*)(x_123, y_34), (*)(x_124, y_), (*)(x_234, y_13), (*)(-1, x_134, y_23))), (*)(y_12, (+)((*)(x_123, y_1234), (*)(x_124, y_12), (*)(x_134, y_13), (*)(x_234, y_23))), (*)(y_13, (+)((*)(x_123, y_14), (*)(x_134, y_12), (*)(x_234, y_), (*)(-1, x_124, y_13))), (*)(x_123, y_, y_34), (*)(x_123, y_12, y_1234), (*)(x_123, y_13, y_14), (*)(x_123, y_23, y_24), (*)(-1, y_23, (+)((*)(x_124, y_23), (*)(x_134, y_), (*)(-1, x_123, y_24), (*)(-1, x_234, y_12))))
    ret_123 = (+)((*)(x_123, (^)(y_, 2)), (*)(x_123, (^)(y_12, 2)), (*)(x_123, (^)(y_13, 2)), (*)(x_123, (^)(y_23, 2)))
    return MultiVectorAll(; e4 = ret_4, e234 = ret_234, e134 = ret_134, e124 = ret_124, e123 = ret_123)
end
function sandwich(x::MultiVector3, y::MultiVector0)
    x_234 = x.e234
    x_134 = x.e134
    x_124 = x.e124
    x_123 = x.e123
    y_ = y.e
    ret_234 = (*)(x_234, (^)(y_, 2))
    ret_134 = (*)(x_134, (^)(y_, 2))
    ret_124 = (*)(x_124, (^)(y_, 2))
    ret_123 = (*)(x_123, (^)(y_, 2))
    return MultiVector3(; e234 = ret_234, e134 = ret_134, e124 = ret_124, e123 = ret_123)
end
function sandwich(x::MultiVector3, y::MultiVector1)
    x_234 = x.e234
    x_134 = x.e134
    x_124 = x.e124
    x_123 = x.e123
    y_4 = y.e4
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    ret_4 = (+)((*)(-1, y_1, (+)((*)(-1, x_124, y_2), (*)(-1, x_134, y_3))), (*)(-1, y_2, (+)((*)(x_124, y_1), (*)(-1, x_234, y_3))), (*)(-1, y_3, (+)((*)(x_134, y_1), (*)(x_234, y_2))))
    ret_234 = (+)((*)(y_2, (+)((*)(x_134, y_1), (*)(x_234, y_2))), (*)(x_123, y_1, y_4), (*)(-1, y_1, (+)((*)(x_124, y_3), (*)(x_234, y_1), (*)(-1, x_123, y_4), (*)(-1, x_134, y_2))), (*)(-1, y_3, (+)((*)(x_124, y_1), (*)(-1, x_234, y_3))))
    ret_134 = (+)((*)(y_1, (+)((*)(x_134, y_1), (*)(x_234, y_2))), (*)(y_2, (+)((*)(x_124, y_3), (*)(x_234, y_1), (*)(-1, x_123, y_4), (*)(-1, x_134, y_2))), (*)(-1, y_3, (+)((*)(-1, x_124, y_2), (*)(-1, x_134, y_3))), (*)(-1, x_123, y_2, y_4))
    ret_124 = (+)((*)(y_1, (+)((*)(x_124, y_1), (*)(-1, x_234, y_3))), (*)(x_123, y_3, y_4), (*)(-1, y_2, (+)((*)(-1, x_124, y_2), (*)(-1, x_134, y_3))), (*)(-1, y_3, (+)((*)(x_124, y_3), (*)(x_234, y_1), (*)(-1, x_123, y_4), (*)(-1, x_134, y_2))))
    ret_123 = (+)((*)(x_123, (^)(y_1, 2)), (*)(x_123, (^)(y_2, 2)), (*)(x_123, (^)(y_3, 2)))
    return MultiVectorAll(; e4 = ret_4, e234 = ret_234, e134 = ret_134, e124 = ret_124, e123 = ret_123)
end
function sandwich(x::MultiVector3, y::MultiVector2)
    x_234 = x.e234
    x_134 = x.e134
    x_124 = x.e124
    x_123 = x.e123
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    ret_4 = (+)((*)(x_123, y_12, y_34), (*)(x_123, y_14, y_23), (*)(-1, y_12, (+)((*)(x_123, y_34), (*)(x_234, y_13), (*)(-1, x_134, y_23))), (*)(-1, y_13, (+)((*)(x_124, y_23), (*)(-1, x_123, y_24), (*)(-1, x_234, y_12))), (*)(-1, y_23, (+)((*)(x_123, y_14), (*)(x_134, y_12), (*)(-1, x_124, y_13))), (*)(-1, x_123, y_13, y_24))
    ret_234 = (+)((*)(y_12, (+)((*)(x_124, y_23), (*)(-1, x_123, y_24), (*)(-1, x_234, y_12))), (*)(y_23, (+)((*)(x_124, y_12), (*)(x_134, y_13), (*)(x_234, y_23))), (*)(-1, y_13, (+)((*)(x_123, y_34), (*)(x_234, y_13), (*)(-1, x_134, y_23))), (*)(-1, x_123, y_12, y_24), (*)(-1, x_123, y_13, y_34))
    ret_134 = (+)((*)(y_13, (+)((*)(x_124, y_12), (*)(x_134, y_13), (*)(x_234, y_23))), (*)(y_23, (+)((*)(x_123, y_34), (*)(x_234, y_13), (*)(-1, x_134, y_23))), (*)(x_123, y_23, y_34), (*)(-1, y_12, (+)((*)(x_123, y_14), (*)(x_134, y_12), (*)(-1, x_124, y_13))), (*)(-1, x_123, y_12, y_14))
    ret_124 = (+)((*)(y_12, (+)((*)(x_124, y_12), (*)(x_134, y_13), (*)(x_234, y_23))), (*)(y_13, (+)((*)(x_123, y_14), (*)(x_134, y_12), (*)(-1, x_124, y_13))), (*)(x_123, y_13, y_14), (*)(x_123, y_23, y_24), (*)(-1, y_23, (+)((*)(x_124, y_23), (*)(-1, x_123, y_24), (*)(-1, x_234, y_12))))
    ret_123 = (+)((*)(x_123, (^)(y_12, 2)), (*)(x_123, (^)(y_13, 2)), (*)(x_123, (^)(y_23, 2)))
    return MultiVectorAll(; e4 = ret_4, e234 = ret_234, e134 = ret_134, e124 = ret_124, e123 = ret_123)
end
function sandwich(x::MultiVector3, y::MultiVector3)
    x_234 = x.e234
    x_134 = x.e134
    x_124 = x.e124
    x_123 = x.e123
    y_234 = y.e234
    y_134 = y.e134
    y_124 = y.e124
    y_123 = y.e123
    ret_234 = (+)((*)(x_123, y_123, y_234), (*)(-1, y_123, (+)((*)(x_234, y_123), (*)(-1, x_123, y_234))))
    ret_134 = (+)((*)(y_123, (+)((*)(x_123, y_134), (*)(-1, x_134, y_123))), (*)(x_123, y_123, y_134))
    ret_124 = (+)((*)(x_123, y_123, y_124), (*)(-1, y_123, (+)((*)(x_124, y_123), (*)(-1, x_123, y_124))))
    ret_123 = (*)(x_123, (^)(y_123, 2))
    return MultiVector3(; e234 = ret_234, e134 = ret_134, e124 = ret_124, e123 = ret_123)
end
function sandwich(x::MultiVector3, y::MultiVector4)
    return MultiVectorZero(; )
end
function sandwich(x::MultiVector3, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function sandwich(x::MultiVector4, y::MultiVectorAll)
    x_1234 = x.e1234
    y_ = y.e
    y_4 = y.e4
    y_3 = y.e3
    y_34 = y.e34
    y_2 = y.e2
    y_24 = y.e24
    y_23 = y.e23
    y_234 = y.e234
    y_1 = y.e1
    y_14 = y.e14
    y_13 = y.e13
    y_134 = y.e134
    y_12 = y.e12
    y_124 = y.e124
    y_123 = y.e123
    y_1234 = y.e1234
    ret_4 = (+)((*)(2, x_1234, y_, y_123), (*)(-2, x_1234, y_1, y_23), (*)(-2, x_1234, y_12, y_3), (*)(2, x_1234, y_13, y_2))
    ret_1234 = (+)((*)(x_1234, (^)(y_, 2)), (*)(x_1234, (^)(y_12, 2)), (*)(x_1234, (^)(y_13, 2)), (*)(x_1234, (^)(y_23, 2)), (*)(-1, x_1234, (^)(y_1, 2)), (*)(-1, x_1234, (^)(y_123, 2)), (*)(-1, x_1234, (^)(y_2, 2)), (*)(-1, x_1234, (^)(y_3, 2)))
    return MultiVectorAll(; e4 = ret_4, e1234 = ret_1234)
end
function sandwich(x::MultiVector4, y::MultiVectorEven)
    x_1234 = x.e1234
    y_ = y.e
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    y_1234 = y.e1234
    ret_1234 = (+)((*)(x_1234, (^)(y_, 2)), (*)(x_1234, (^)(y_12, 2)), (*)(x_1234, (^)(y_13, 2)), (*)(x_1234, (^)(y_23, 2)))
    return MultiVector4(; e1234 = ret_1234)
end
function sandwich(x::MultiVector4, y::MultiVector0)
    x_1234 = x.e1234
    y_ = y.e
    ret_1234 = (*)(x_1234, (^)(y_, 2))
    return MultiVector4(; e1234 = ret_1234)
end
function sandwich(x::MultiVector4, y::MultiVector1)
    x_1234 = x.e1234
    y_4 = y.e4
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    ret_1234 = (+)((*)(-1, x_1234, (^)(y_1, 2)), (*)(-1, x_1234, (^)(y_2, 2)), (*)(-1, x_1234, (^)(y_3, 2)))
    return MultiVector4(; e1234 = ret_1234)
end
function sandwich(x::MultiVector4, y::MultiVector2)
    x_1234 = x.e1234
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    ret_1234 = (+)((*)(x_1234, (^)(y_12, 2)), (*)(x_1234, (^)(y_13, 2)), (*)(x_1234, (^)(y_23, 2)))
    return MultiVector4(; e1234 = ret_1234)
end
function sandwich(x::MultiVector4, y::MultiVector3)
    x_1234 = x.e1234
    y_234 = y.e234
    y_134 = y.e134
    y_124 = y.e124
    y_123 = y.e123
    ret_1234 = (*)(-1, x_1234, (^)(y_123, 2))
    return MultiVector4(; e1234 = ret_1234)
end
function sandwich(x::MultiVector4, y::MultiVector4)
    return MultiVectorZero(; )
end
function sandwich(x::MultiVector4, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function sandwich(x::MultiVectorZero, y::MultiVectorAll)
    return MultiVectorZero(; )
end
function sandwich(x::MultiVectorZero, y::MultiVectorEven)
    return MultiVectorZero(; )
end
function sandwich(x::MultiVectorZero, y::MultiVector0)
    return MultiVectorZero(; )
end
function sandwich(x::MultiVectorZero, y::MultiVector1)
    return MultiVectorZero(; )
end
function sandwich(x::MultiVectorZero, y::MultiVector2)
    return MultiVectorZero(; )
end
function sandwich(x::MultiVectorZero, y::MultiVector3)
    return MultiVectorZero(; )
end
function sandwich(x::MultiVectorZero, y::MultiVector4)
    return MultiVectorZero(; )
end
function sandwich(x::MultiVectorZero, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function anti_wedge(x::MultiVectorAll, y::MultiVectorAll)
    x_ = x.e
    x_4 = x.e4
    x_3 = x.e3
    x_34 = x.e34
    x_2 = x.e2
    x_24 = x.e24
    x_23 = x.e23
    x_234 = x.e234
    x_1 = x.e1
    x_14 = x.e14
    x_13 = x.e13
    x_134 = x.e134
    x_12 = x.e12
    x_124 = x.e124
    x_123 = x.e123
    x_1234 = x.e1234
    y_ = y.e
    y_4 = y.e4
    y_3 = y.e3
    y_34 = y.e34
    y_2 = y.e2
    y_24 = y.e24
    y_23 = y.e23
    y_234 = y.e234
    y_1 = y.e1
    y_14 = y.e14
    y_13 = y.e13
    y_134 = y.e134
    y_12 = y.e12
    y_124 = y.e124
    y_123 = y.e123
    y_1234 = y.e1234
    ret_ = (+)((*)(x_, y_1234), (*)(x_12, y_34), (*)(x_1234, y_), (*)(x_124, y_3), (*)(x_14, y_23), (*)(x_2, y_134), (*)(x_23, y_14), (*)(x_234, y_1), (*)(x_34, y_12), (*)(x_4, y_123), (*)(-1, x_1, y_234), (*)(-1, x_123, y_4), (*)(-1, x_13, y_24), (*)(-1, x_134, y_2), (*)(-1, x_24, y_13), (*)(-1, x_3, y_124))
    ret_4 = (+)((*)(x_1234, y_4), (*)(x_134, y_24), (*)(x_24, y_134), (*)(x_4, y_1234), (*)(-1, x_124, y_34), (*)(-1, x_14, y_234), (*)(-1, x_234, y_14), (*)(-1, x_34, y_124))
    ret_3 = (+)((*)(x_1234, y_3), (*)(x_134, y_23), (*)(x_23, y_134), (*)(x_3, y_1234), (*)(-1, x_123, y_34), (*)(-1, x_13, y_234), (*)(-1, x_234, y_13), (*)(-1, x_34, y_123))
    ret_34 = (+)((*)(x_1234, y_34), (*)(x_134, y_234), (*)(x_34, y_1234), (*)(-1, x_234, y_134))
    ret_2 = (+)((*)(x_1234, y_2), (*)(x_124, y_23), (*)(x_2, y_1234), (*)(x_23, y_124), (*)(-1, x_12, y_234), (*)(-1, x_123, y_24), (*)(-1, x_234, y_12), (*)(-1, x_24, y_123))
    ret_24 = (+)((*)(x_1234, y_24), (*)(x_124, y_234), (*)(x_24, y_1234), (*)(-1, x_234, y_124))
    ret_23 = (+)((*)(x_123, y_234), (*)(x_1234, y_23), (*)(x_23, y_1234), (*)(-1, x_234, y_123))
    ret_234 = (+)((*)(x_1234, y_234), (*)(x_234, y_1234))
    ret_1 = (+)((*)(x_1, y_1234), (*)(x_1234, y_1), (*)(x_124, y_13), (*)(x_13, y_124), (*)(-1, x_12, y_134), (*)(-1, x_123, y_14), (*)(-1, x_134, y_12), (*)(-1, x_14, y_123))
    ret_14 = (+)((*)(x_1234, y_14), (*)(x_124, y_134), (*)(x_14, y_1234), (*)(-1, x_134, y_124))
    ret_13 = (+)((*)(x_123, y_134), (*)(x_1234, y_13), (*)(x_13, y_1234), (*)(-1, x_134, y_123))
    ret_134 = (+)((*)(x_1234, y_134), (*)(x_134, y_1234))
    ret_12 = (+)((*)(x_12, y_1234), (*)(x_123, y_124), (*)(x_1234, y_12), (*)(-1, x_124, y_123))
    ret_124 = (+)((*)(x_1234, y_124), (*)(x_124, y_1234))
    ret_123 = (+)((*)(x_123, y_1234), (*)(x_1234, y_123))
    ret_1234 = (*)(x_1234, y_1234)
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function anti_wedge(x::MultiVectorAll, y::MultiVectorEven)
    x_ = x.e
    x_4 = x.e4
    x_3 = x.e3
    x_34 = x.e34
    x_2 = x.e2
    x_24 = x.e24
    x_23 = x.e23
    x_234 = x.e234
    x_1 = x.e1
    x_14 = x.e14
    x_13 = x.e13
    x_134 = x.e134
    x_12 = x.e12
    x_124 = x.e124
    x_123 = x.e123
    x_1234 = x.e1234
    y_ = y.e
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    y_1234 = y.e1234
    ret_ = (+)((*)(x_, y_1234), (*)(x_12, y_34), (*)(x_1234, y_), (*)(x_14, y_23), (*)(x_23, y_14), (*)(x_34, y_12), (*)(-1, x_13, y_24), (*)(-1, x_24, y_13))
    ret_4 = (+)((*)(x_134, y_24), (*)(x_4, y_1234), (*)(-1, x_124, y_34), (*)(-1, x_234, y_14))
    ret_3 = (+)((*)(x_134, y_23), (*)(x_3, y_1234), (*)(-1, x_123, y_34), (*)(-1, x_234, y_13))
    ret_34 = (+)((*)(x_1234, y_34), (*)(x_34, y_1234))
    ret_2 = (+)((*)(x_124, y_23), (*)(x_2, y_1234), (*)(-1, x_123, y_24), (*)(-1, x_234, y_12))
    ret_24 = (+)((*)(x_1234, y_24), (*)(x_24, y_1234))
    ret_23 = (+)((*)(x_1234, y_23), (*)(x_23, y_1234))
    ret_234 = (*)(x_234, y_1234)
    ret_1 = (+)((*)(x_1, y_1234), (*)(x_124, y_13), (*)(-1, x_123, y_14), (*)(-1, x_134, y_12))
    ret_14 = (+)((*)(x_1234, y_14), (*)(x_14, y_1234))
    ret_13 = (+)((*)(x_1234, y_13), (*)(x_13, y_1234))
    ret_134 = (*)(x_134, y_1234)
    ret_12 = (+)((*)(x_12, y_1234), (*)(x_1234, y_12))
    ret_124 = (*)(x_124, y_1234)
    ret_123 = (*)(x_123, y_1234)
    ret_1234 = (*)(x_1234, y_1234)
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function anti_wedge(x::MultiVectorAll, y::MultiVector0)
    x_ = x.e
    x_4 = x.e4
    x_3 = x.e3
    x_34 = x.e34
    x_2 = x.e2
    x_24 = x.e24
    x_23 = x.e23
    x_234 = x.e234
    x_1 = x.e1
    x_14 = x.e14
    x_13 = x.e13
    x_134 = x.e134
    x_12 = x.e12
    x_124 = x.e124
    x_123 = x.e123
    x_1234 = x.e1234
    y_ = y.e
    ret_ = (*)(x_1234, y_)
    return MultiVector0(; e = ret_)
end
function anti_wedge(x::MultiVectorAll, y::MultiVector1)
    x_ = x.e
    x_4 = x.e4
    x_3 = x.e3
    x_34 = x.e34
    x_2 = x.e2
    x_24 = x.e24
    x_23 = x.e23
    x_234 = x.e234
    x_1 = x.e1
    x_14 = x.e14
    x_13 = x.e13
    x_134 = x.e134
    x_12 = x.e12
    x_124 = x.e124
    x_123 = x.e123
    x_1234 = x.e1234
    y_4 = y.e4
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    ret_ = (+)((*)(x_124, y_3), (*)(x_234, y_1), (*)(-1, x_123, y_4), (*)(-1, x_134, y_2))
    ret_4 = (*)(x_1234, y_4)
    ret_3 = (*)(x_1234, y_3)
    ret_2 = (*)(x_1234, y_2)
    ret_1 = (*)(x_1234, y_1)
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e2 = ret_2, e1 = ret_1)
end
function anti_wedge(x::MultiVectorAll, y::MultiVector2)
    x_ = x.e
    x_4 = x.e4
    x_3 = x.e3
    x_34 = x.e34
    x_2 = x.e2
    x_24 = x.e24
    x_23 = x.e23
    x_234 = x.e234
    x_1 = x.e1
    x_14 = x.e14
    x_13 = x.e13
    x_134 = x.e134
    x_12 = x.e12
    x_124 = x.e124
    x_123 = x.e123
    x_1234 = x.e1234
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    ret_ = (+)((*)(x_12, y_34), (*)(x_14, y_23), (*)(x_23, y_14), (*)(x_34, y_12), (*)(-1, x_13, y_24), (*)(-1, x_24, y_13))
    ret_4 = (+)((*)(x_134, y_24), (*)(-1, x_124, y_34), (*)(-1, x_234, y_14))
    ret_3 = (+)((*)(x_134, y_23), (*)(-1, x_123, y_34), (*)(-1, x_234, y_13))
    ret_34 = (*)(x_1234, y_34)
    ret_2 = (+)((*)(x_124, y_23), (*)(-1, x_123, y_24), (*)(-1, x_234, y_12))
    ret_24 = (*)(x_1234, y_24)
    ret_23 = (*)(x_1234, y_23)
    ret_1 = (+)((*)(x_124, y_13), (*)(-1, x_123, y_14), (*)(-1, x_134, y_12))
    ret_14 = (*)(x_1234, y_14)
    ret_13 = (*)(x_1234, y_13)
    ret_12 = (*)(x_1234, y_12)
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e1 = ret_1, e14 = ret_14, e13 = ret_13, e12 = ret_12)
end
function anti_wedge(x::MultiVectorAll, y::MultiVector3)
    x_ = x.e
    x_4 = x.e4
    x_3 = x.e3
    x_34 = x.e34
    x_2 = x.e2
    x_24 = x.e24
    x_23 = x.e23
    x_234 = x.e234
    x_1 = x.e1
    x_14 = x.e14
    x_13 = x.e13
    x_134 = x.e134
    x_12 = x.e12
    x_124 = x.e124
    x_123 = x.e123
    x_1234 = x.e1234
    y_234 = y.e234
    y_134 = y.e134
    y_124 = y.e124
    y_123 = y.e123
    ret_ = (+)((*)(x_2, y_134), (*)(x_4, y_123), (*)(-1, x_1, y_234), (*)(-1, x_3, y_124))
    ret_4 = (+)((*)(x_24, y_134), (*)(-1, x_14, y_234), (*)(-1, x_34, y_124))
    ret_3 = (+)((*)(x_23, y_134), (*)(-1, x_13, y_234), (*)(-1, x_34, y_123))
    ret_34 = (+)((*)(x_134, y_234), (*)(-1, x_234, y_134))
    ret_2 = (+)((*)(x_23, y_124), (*)(-1, x_12, y_234), (*)(-1, x_24, y_123))
    ret_24 = (+)((*)(x_124, y_234), (*)(-1, x_234, y_124))
    ret_23 = (+)((*)(x_123, y_234), (*)(-1, x_234, y_123))
    ret_234 = (*)(x_1234, y_234)
    ret_1 = (+)((*)(x_13, y_124), (*)(-1, x_12, y_134), (*)(-1, x_14, y_123))
    ret_14 = (+)((*)(x_124, y_134), (*)(-1, x_134, y_124))
    ret_13 = (+)((*)(x_123, y_134), (*)(-1, x_134, y_123))
    ret_134 = (*)(x_1234, y_134)
    ret_12 = (+)((*)(x_123, y_124), (*)(-1, x_124, y_123))
    ret_124 = (*)(x_1234, y_124)
    ret_123 = (*)(x_1234, y_123)
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123)
end
function anti_wedge(x::MultiVectorAll, y::MultiVector4)
    x_ = x.e
    x_4 = x.e4
    x_3 = x.e3
    x_34 = x.e34
    x_2 = x.e2
    x_24 = x.e24
    x_23 = x.e23
    x_234 = x.e234
    x_1 = x.e1
    x_14 = x.e14
    x_13 = x.e13
    x_134 = x.e134
    x_12 = x.e12
    x_124 = x.e124
    x_123 = x.e123
    x_1234 = x.e1234
    y_1234 = y.e1234
    ret_ = (*)(x_, y_1234)
    ret_4 = (*)(x_4, y_1234)
    ret_3 = (*)(x_3, y_1234)
    ret_34 = (*)(x_34, y_1234)
    ret_2 = (*)(x_2, y_1234)
    ret_24 = (*)(x_24, y_1234)
    ret_23 = (*)(x_23, y_1234)
    ret_234 = (*)(x_234, y_1234)
    ret_1 = (*)(x_1, y_1234)
    ret_14 = (*)(x_14, y_1234)
    ret_13 = (*)(x_13, y_1234)
    ret_134 = (*)(x_134, y_1234)
    ret_12 = (*)(x_12, y_1234)
    ret_124 = (*)(x_124, y_1234)
    ret_123 = (*)(x_123, y_1234)
    ret_1234 = (*)(x_1234, y_1234)
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function anti_wedge(x::MultiVectorAll, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function anti_wedge(x::MultiVectorEven, y::MultiVectorAll)
    x_ = x.e
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    x_1234 = x.e1234
    y_ = y.e
    y_4 = y.e4
    y_3 = y.e3
    y_34 = y.e34
    y_2 = y.e2
    y_24 = y.e24
    y_23 = y.e23
    y_234 = y.e234
    y_1 = y.e1
    y_14 = y.e14
    y_13 = y.e13
    y_134 = y.e134
    y_12 = y.e12
    y_124 = y.e124
    y_123 = y.e123
    y_1234 = y.e1234
    ret_ = (+)((*)(x_, y_1234), (*)(x_12, y_34), (*)(x_1234, y_), (*)(x_14, y_23), (*)(x_23, y_14), (*)(x_34, y_12), (*)(-1, x_13, y_24), (*)(-1, x_24, y_13))
    ret_4 = (+)((*)(x_1234, y_4), (*)(x_24, y_134), (*)(-1, x_14, y_234), (*)(-1, x_34, y_124))
    ret_3 = (+)((*)(x_1234, y_3), (*)(x_23, y_134), (*)(-1, x_13, y_234), (*)(-1, x_34, y_123))
    ret_34 = (+)((*)(x_1234, y_34), (*)(x_34, y_1234))
    ret_2 = (+)((*)(x_1234, y_2), (*)(x_23, y_124), (*)(-1, x_12, y_234), (*)(-1, x_24, y_123))
    ret_24 = (+)((*)(x_1234, y_24), (*)(x_24, y_1234))
    ret_23 = (+)((*)(x_1234, y_23), (*)(x_23, y_1234))
    ret_234 = (*)(x_1234, y_234)
    ret_1 = (+)((*)(x_1234, y_1), (*)(x_13, y_124), (*)(-1, x_12, y_134), (*)(-1, x_14, y_123))
    ret_14 = (+)((*)(x_1234, y_14), (*)(x_14, y_1234))
    ret_13 = (+)((*)(x_1234, y_13), (*)(x_13, y_1234))
    ret_134 = (*)(x_1234, y_134)
    ret_12 = (+)((*)(x_12, y_1234), (*)(x_1234, y_12))
    ret_124 = (*)(x_1234, y_124)
    ret_123 = (*)(x_1234, y_123)
    ret_1234 = (*)(x_1234, y_1234)
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function anti_wedge(x::MultiVectorEven, y::MultiVectorEven)
    x_ = x.e
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    x_1234 = x.e1234
    y_ = y.e
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    y_1234 = y.e1234
    ret_ = (+)((*)(x_, y_1234), (*)(x_12, y_34), (*)(x_1234, y_), (*)(x_14, y_23), (*)(x_23, y_14), (*)(x_34, y_12), (*)(-1, x_13, y_24), (*)(-1, x_24, y_13))
    ret_34 = (+)((*)(x_1234, y_34), (*)(x_34, y_1234))
    ret_24 = (+)((*)(x_1234, y_24), (*)(x_24, y_1234))
    ret_23 = (+)((*)(x_1234, y_23), (*)(x_23, y_1234))
    ret_14 = (+)((*)(x_1234, y_14), (*)(x_14, y_1234))
    ret_13 = (+)((*)(x_1234, y_13), (*)(x_13, y_1234))
    ret_12 = (+)((*)(x_12, y_1234), (*)(x_1234, y_12))
    ret_1234 = (*)(x_1234, y_1234)
    return MultiVectorEven(; e = ret_, e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12, e1234 = ret_1234)
end
function anti_wedge(x::MultiVectorEven, y::MultiVector0)
    x_ = x.e
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    x_1234 = x.e1234
    y_ = y.e
    ret_ = (*)(x_1234, y_)
    return MultiVector0(; e = ret_)
end
function anti_wedge(x::MultiVectorEven, y::MultiVector1)
    x_ = x.e
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    x_1234 = x.e1234
    y_4 = y.e4
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    ret_4 = (*)(x_1234, y_4)
    ret_3 = (*)(x_1234, y_3)
    ret_2 = (*)(x_1234, y_2)
    ret_1 = (*)(x_1234, y_1)
    return MultiVector1(; e4 = ret_4, e3 = ret_3, e2 = ret_2, e1 = ret_1)
end
function anti_wedge(x::MultiVectorEven, y::MultiVector2)
    x_ = x.e
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    x_1234 = x.e1234
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    ret_ = (+)((*)(x_12, y_34), (*)(x_14, y_23), (*)(x_23, y_14), (*)(x_34, y_12), (*)(-1, x_13, y_24), (*)(-1, x_24, y_13))
    ret_34 = (*)(x_1234, y_34)
    ret_24 = (*)(x_1234, y_24)
    ret_23 = (*)(x_1234, y_23)
    ret_14 = (*)(x_1234, y_14)
    ret_13 = (*)(x_1234, y_13)
    ret_12 = (*)(x_1234, y_12)
    return MultiVectorEven(; e = ret_, e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12)
end
function anti_wedge(x::MultiVectorEven, y::MultiVector3)
    x_ = x.e
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    x_1234 = x.e1234
    y_234 = y.e234
    y_134 = y.e134
    y_124 = y.e124
    y_123 = y.e123
    ret_4 = (+)((*)(x_24, y_134), (*)(-1, x_14, y_234), (*)(-1, x_34, y_124))
    ret_3 = (+)((*)(x_23, y_134), (*)(-1, x_13, y_234), (*)(-1, x_34, y_123))
    ret_2 = (+)((*)(x_23, y_124), (*)(-1, x_12, y_234), (*)(-1, x_24, y_123))
    ret_234 = (*)(x_1234, y_234)
    ret_1 = (+)((*)(x_13, y_124), (*)(-1, x_12, y_134), (*)(-1, x_14, y_123))
    ret_134 = (*)(x_1234, y_134)
    ret_124 = (*)(x_1234, y_124)
    ret_123 = (*)(x_1234, y_123)
    return MultiVectorAll(; e4 = ret_4, e3 = ret_3, e2 = ret_2, e234 = ret_234, e1 = ret_1, e134 = ret_134, e124 = ret_124, e123 = ret_123)
end
function anti_wedge(x::MultiVectorEven, y::MultiVector4)
    x_ = x.e
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    x_1234 = x.e1234
    y_1234 = y.e1234
    ret_ = (*)(x_, y_1234)
    ret_34 = (*)(x_34, y_1234)
    ret_24 = (*)(x_24, y_1234)
    ret_23 = (*)(x_23, y_1234)
    ret_14 = (*)(x_14, y_1234)
    ret_13 = (*)(x_13, y_1234)
    ret_12 = (*)(x_12, y_1234)
    ret_1234 = (*)(x_1234, y_1234)
    return MultiVectorEven(; e = ret_, e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12, e1234 = ret_1234)
end
function anti_wedge(x::MultiVectorEven, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function anti_wedge(x::MultiVector0, y::MultiVectorAll)
    x_ = x.e
    y_ = y.e
    y_4 = y.e4
    y_3 = y.e3
    y_34 = y.e34
    y_2 = y.e2
    y_24 = y.e24
    y_23 = y.e23
    y_234 = y.e234
    y_1 = y.e1
    y_14 = y.e14
    y_13 = y.e13
    y_134 = y.e134
    y_12 = y.e12
    y_124 = y.e124
    y_123 = y.e123
    y_1234 = y.e1234
    ret_ = (*)(x_, y_1234)
    return MultiVector0(; e = ret_)
end
function anti_wedge(x::MultiVector0, y::MultiVectorEven)
    x_ = x.e
    y_ = y.e
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    y_1234 = y.e1234
    ret_ = (*)(x_, y_1234)
    return MultiVector0(; e = ret_)
end
function anti_wedge(x::MultiVector0, y::MultiVector0)
    return MultiVectorZero(; )
end
function anti_wedge(x::MultiVector0, y::MultiVector1)
    return MultiVectorZero(; )
end
function anti_wedge(x::MultiVector0, y::MultiVector2)
    return MultiVectorZero(; )
end
function anti_wedge(x::MultiVector0, y::MultiVector3)
    return MultiVectorZero(; )
end
function anti_wedge(x::MultiVector0, y::MultiVector4)
    x_ = x.e
    y_1234 = y.e1234
    ret_ = (*)(x_, y_1234)
    return MultiVector0(; e = ret_)
end
function anti_wedge(x::MultiVector0, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function anti_wedge(x::MultiVector1, y::MultiVectorAll)
    x_4 = x.e4
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    y_ = y.e
    y_4 = y.e4
    y_3 = y.e3
    y_34 = y.e34
    y_2 = y.e2
    y_24 = y.e24
    y_23 = y.e23
    y_234 = y.e234
    y_1 = y.e1
    y_14 = y.e14
    y_13 = y.e13
    y_134 = y.e134
    y_12 = y.e12
    y_124 = y.e124
    y_123 = y.e123
    y_1234 = y.e1234
    ret_ = (+)((*)(x_2, y_134), (*)(x_4, y_123), (*)(-1, x_1, y_234), (*)(-1, x_3, y_124))
    ret_4 = (*)(x_4, y_1234)
    ret_3 = (*)(x_3, y_1234)
    ret_2 = (*)(x_2, y_1234)
    ret_1 = (*)(x_1, y_1234)
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e2 = ret_2, e1 = ret_1)
end
function anti_wedge(x::MultiVector1, y::MultiVectorEven)
    x_4 = x.e4
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    y_ = y.e
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    y_1234 = y.e1234
    ret_4 = (*)(x_4, y_1234)
    ret_3 = (*)(x_3, y_1234)
    ret_2 = (*)(x_2, y_1234)
    ret_1 = (*)(x_1, y_1234)
    return MultiVector1(; e4 = ret_4, e3 = ret_3, e2 = ret_2, e1 = ret_1)
end
function anti_wedge(x::MultiVector1, y::MultiVector0)
    return MultiVectorZero(; )
end
function anti_wedge(x::MultiVector1, y::MultiVector1)
    return MultiVectorZero(; )
end
function anti_wedge(x::MultiVector1, y::MultiVector2)
    return MultiVectorZero(; )
end
function anti_wedge(x::MultiVector1, y::MultiVector3)
    x_4 = x.e4
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    y_234 = y.e234
    y_134 = y.e134
    y_124 = y.e124
    y_123 = y.e123
    ret_ = (+)((*)(x_2, y_134), (*)(x_4, y_123), (*)(-1, x_1, y_234), (*)(-1, x_3, y_124))
    return MultiVector0(; e = ret_)
end
function anti_wedge(x::MultiVector1, y::MultiVector4)
    x_4 = x.e4
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    y_1234 = y.e1234
    ret_4 = (*)(x_4, y_1234)
    ret_3 = (*)(x_3, y_1234)
    ret_2 = (*)(x_2, y_1234)
    ret_1 = (*)(x_1, y_1234)
    return MultiVector1(; e4 = ret_4, e3 = ret_3, e2 = ret_2, e1 = ret_1)
end
function anti_wedge(x::MultiVector1, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function anti_wedge(x::MultiVector2, y::MultiVectorAll)
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    y_ = y.e
    y_4 = y.e4
    y_3 = y.e3
    y_34 = y.e34
    y_2 = y.e2
    y_24 = y.e24
    y_23 = y.e23
    y_234 = y.e234
    y_1 = y.e1
    y_14 = y.e14
    y_13 = y.e13
    y_134 = y.e134
    y_12 = y.e12
    y_124 = y.e124
    y_123 = y.e123
    y_1234 = y.e1234
    ret_ = (+)((*)(x_12, y_34), (*)(x_14, y_23), (*)(x_23, y_14), (*)(x_34, y_12), (*)(-1, x_13, y_24), (*)(-1, x_24, y_13))
    ret_4 = (+)((*)(x_24, y_134), (*)(-1, x_14, y_234), (*)(-1, x_34, y_124))
    ret_3 = (+)((*)(x_23, y_134), (*)(-1, x_13, y_234), (*)(-1, x_34, y_123))
    ret_34 = (*)(x_34, y_1234)
    ret_2 = (+)((*)(x_23, y_124), (*)(-1, x_12, y_234), (*)(-1, x_24, y_123))
    ret_24 = (*)(x_24, y_1234)
    ret_23 = (*)(x_23, y_1234)
    ret_1 = (+)((*)(x_13, y_124), (*)(-1, x_12, y_134), (*)(-1, x_14, y_123))
    ret_14 = (*)(x_14, y_1234)
    ret_13 = (*)(x_13, y_1234)
    ret_12 = (*)(x_12, y_1234)
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e1 = ret_1, e14 = ret_14, e13 = ret_13, e12 = ret_12)
end
function anti_wedge(x::MultiVector2, y::MultiVectorEven)
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    y_ = y.e
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    y_1234 = y.e1234
    ret_ = (+)((*)(x_12, y_34), (*)(x_14, y_23), (*)(x_23, y_14), (*)(x_34, y_12), (*)(-1, x_13, y_24), (*)(-1, x_24, y_13))
    ret_34 = (*)(x_34, y_1234)
    ret_24 = (*)(x_24, y_1234)
    ret_23 = (*)(x_23, y_1234)
    ret_14 = (*)(x_14, y_1234)
    ret_13 = (*)(x_13, y_1234)
    ret_12 = (*)(x_12, y_1234)
    return MultiVectorEven(; e = ret_, e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12)
end
function anti_wedge(x::MultiVector2, y::MultiVector0)
    return MultiVectorZero(; )
end
function anti_wedge(x::MultiVector2, y::MultiVector1)
    return MultiVectorZero(; )
end
function anti_wedge(x::MultiVector2, y::MultiVector2)
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    ret_ = (+)((*)(x_12, y_34), (*)(x_14, y_23), (*)(x_23, y_14), (*)(x_34, y_12), (*)(-1, x_13, y_24), (*)(-1, x_24, y_13))
    return MultiVector0(; e = ret_)
end
function anti_wedge(x::MultiVector2, y::MultiVector3)
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    y_234 = y.e234
    y_134 = y.e134
    y_124 = y.e124
    y_123 = y.e123
    ret_4 = (+)((*)(x_24, y_134), (*)(-1, x_14, y_234), (*)(-1, x_34, y_124))
    ret_3 = (+)((*)(x_23, y_134), (*)(-1, x_13, y_234), (*)(-1, x_34, y_123))
    ret_2 = (+)((*)(x_23, y_124), (*)(-1, x_12, y_234), (*)(-1, x_24, y_123))
    ret_1 = (+)((*)(x_13, y_124), (*)(-1, x_12, y_134), (*)(-1, x_14, y_123))
    return MultiVector1(; e4 = ret_4, e3 = ret_3, e2 = ret_2, e1 = ret_1)
end
function anti_wedge(x::MultiVector2, y::MultiVector4)
    x_34 = x.e34
    x_24 = x.e24
    x_23 = x.e23
    x_14 = x.e14
    x_13 = x.e13
    x_12 = x.e12
    y_1234 = y.e1234
    ret_34 = (*)(x_34, y_1234)
    ret_24 = (*)(x_24, y_1234)
    ret_23 = (*)(x_23, y_1234)
    ret_14 = (*)(x_14, y_1234)
    ret_13 = (*)(x_13, y_1234)
    ret_12 = (*)(x_12, y_1234)
    return MultiVector2(; e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12)
end
function anti_wedge(x::MultiVector2, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function anti_wedge(x::MultiVector3, y::MultiVectorAll)
    x_234 = x.e234
    x_134 = x.e134
    x_124 = x.e124
    x_123 = x.e123
    y_ = y.e
    y_4 = y.e4
    y_3 = y.e3
    y_34 = y.e34
    y_2 = y.e2
    y_24 = y.e24
    y_23 = y.e23
    y_234 = y.e234
    y_1 = y.e1
    y_14 = y.e14
    y_13 = y.e13
    y_134 = y.e134
    y_12 = y.e12
    y_124 = y.e124
    y_123 = y.e123
    y_1234 = y.e1234
    ret_ = (+)((*)(x_124, y_3), (*)(x_234, y_1), (*)(-1, x_123, y_4), (*)(-1, x_134, y_2))
    ret_4 = (+)((*)(x_134, y_24), (*)(-1, x_124, y_34), (*)(-1, x_234, y_14))
    ret_3 = (+)((*)(x_134, y_23), (*)(-1, x_123, y_34), (*)(-1, x_234, y_13))
    ret_34 = (+)((*)(x_134, y_234), (*)(-1, x_234, y_134))
    ret_2 = (+)((*)(x_124, y_23), (*)(-1, x_123, y_24), (*)(-1, x_234, y_12))
    ret_24 = (+)((*)(x_124, y_234), (*)(-1, x_234, y_124))
    ret_23 = (+)((*)(x_123, y_234), (*)(-1, x_234, y_123))
    ret_234 = (*)(x_234, y_1234)
    ret_1 = (+)((*)(x_124, y_13), (*)(-1, x_123, y_14), (*)(-1, x_134, y_12))
    ret_14 = (+)((*)(x_124, y_134), (*)(-1, x_134, y_124))
    ret_13 = (+)((*)(x_123, y_134), (*)(-1, x_134, y_123))
    ret_134 = (*)(x_134, y_1234)
    ret_12 = (+)((*)(x_123, y_124), (*)(-1, x_124, y_123))
    ret_124 = (*)(x_124, y_1234)
    ret_123 = (*)(x_123, y_1234)
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123)
end
function anti_wedge(x::MultiVector3, y::MultiVectorEven)
    x_234 = x.e234
    x_134 = x.e134
    x_124 = x.e124
    x_123 = x.e123
    y_ = y.e
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    y_1234 = y.e1234
    ret_4 = (+)((*)(x_134, y_24), (*)(-1, x_124, y_34), (*)(-1, x_234, y_14))
    ret_3 = (+)((*)(x_134, y_23), (*)(-1, x_123, y_34), (*)(-1, x_234, y_13))
    ret_2 = (+)((*)(x_124, y_23), (*)(-1, x_123, y_24), (*)(-1, x_234, y_12))
    ret_234 = (*)(x_234, y_1234)
    ret_1 = (+)((*)(x_124, y_13), (*)(-1, x_123, y_14), (*)(-1, x_134, y_12))
    ret_134 = (*)(x_134, y_1234)
    ret_124 = (*)(x_124, y_1234)
    ret_123 = (*)(x_123, y_1234)
    return MultiVectorAll(; e4 = ret_4, e3 = ret_3, e2 = ret_2, e234 = ret_234, e1 = ret_1, e134 = ret_134, e124 = ret_124, e123 = ret_123)
end
function anti_wedge(x::MultiVector3, y::MultiVector0)
    return MultiVectorZero(; )
end
function anti_wedge(x::MultiVector3, y::MultiVector1)
    x_234 = x.e234
    x_134 = x.e134
    x_124 = x.e124
    x_123 = x.e123
    y_4 = y.e4
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    ret_ = (+)((*)(x_124, y_3), (*)(x_234, y_1), (*)(-1, x_123, y_4), (*)(-1, x_134, y_2))
    return MultiVector0(; e = ret_)
end
function anti_wedge(x::MultiVector3, y::MultiVector2)
    x_234 = x.e234
    x_134 = x.e134
    x_124 = x.e124
    x_123 = x.e123
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    ret_4 = (+)((*)(x_134, y_24), (*)(-1, x_124, y_34), (*)(-1, x_234, y_14))
    ret_3 = (+)((*)(x_134, y_23), (*)(-1, x_123, y_34), (*)(-1, x_234, y_13))
    ret_2 = (+)((*)(x_124, y_23), (*)(-1, x_123, y_24), (*)(-1, x_234, y_12))
    ret_1 = (+)((*)(x_124, y_13), (*)(-1, x_123, y_14), (*)(-1, x_134, y_12))
    return MultiVector1(; e4 = ret_4, e3 = ret_3, e2 = ret_2, e1 = ret_1)
end
function anti_wedge(x::MultiVector3, y::MultiVector3)
    x_234 = x.e234
    x_134 = x.e134
    x_124 = x.e124
    x_123 = x.e123
    y_234 = y.e234
    y_134 = y.e134
    y_124 = y.e124
    y_123 = y.e123
    ret_34 = (+)((*)(x_134, y_234), (*)(-1, x_234, y_134))
    ret_24 = (+)((*)(x_124, y_234), (*)(-1, x_234, y_124))
    ret_23 = (+)((*)(x_123, y_234), (*)(-1, x_234, y_123))
    ret_14 = (+)((*)(x_124, y_134), (*)(-1, x_134, y_124))
    ret_13 = (+)((*)(x_123, y_134), (*)(-1, x_134, y_123))
    ret_12 = (+)((*)(x_123, y_124), (*)(-1, x_124, y_123))
    return MultiVector2(; e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12)
end
function anti_wedge(x::MultiVector3, y::MultiVector4)
    x_234 = x.e234
    x_134 = x.e134
    x_124 = x.e124
    x_123 = x.e123
    y_1234 = y.e1234
    ret_234 = (*)(x_234, y_1234)
    ret_134 = (*)(x_134, y_1234)
    ret_124 = (*)(x_124, y_1234)
    ret_123 = (*)(x_123, y_1234)
    return MultiVector3(; e234 = ret_234, e134 = ret_134, e124 = ret_124, e123 = ret_123)
end
function anti_wedge(x::MultiVector3, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function anti_wedge(x::MultiVector4, y::MultiVectorAll)
    x_1234 = x.e1234
    y_ = y.e
    y_4 = y.e4
    y_3 = y.e3
    y_34 = y.e34
    y_2 = y.e2
    y_24 = y.e24
    y_23 = y.e23
    y_234 = y.e234
    y_1 = y.e1
    y_14 = y.e14
    y_13 = y.e13
    y_134 = y.e134
    y_12 = y.e12
    y_124 = y.e124
    y_123 = y.e123
    y_1234 = y.e1234
    ret_ = (*)(x_1234, y_)
    ret_4 = (*)(x_1234, y_4)
    ret_3 = (*)(x_1234, y_3)
    ret_34 = (*)(x_1234, y_34)
    ret_2 = (*)(x_1234, y_2)
    ret_24 = (*)(x_1234, y_24)
    ret_23 = (*)(x_1234, y_23)
    ret_234 = (*)(x_1234, y_234)
    ret_1 = (*)(x_1234, y_1)
    ret_14 = (*)(x_1234, y_14)
    ret_13 = (*)(x_1234, y_13)
    ret_134 = (*)(x_1234, y_134)
    ret_12 = (*)(x_1234, y_12)
    ret_124 = (*)(x_1234, y_124)
    ret_123 = (*)(x_1234, y_123)
    ret_1234 = (*)(x_1234, y_1234)
    return MultiVectorAll(; e = ret_, e4 = ret_4, e3 = ret_3, e34 = ret_34, e2 = ret_2, e24 = ret_24, e23 = ret_23, e234 = ret_234, e1 = ret_1, e14 = ret_14, e13 = ret_13, e134 = ret_134, e12 = ret_12, e124 = ret_124, e123 = ret_123, e1234 = ret_1234)
end
function anti_wedge(x::MultiVector4, y::MultiVectorEven)
    x_1234 = x.e1234
    y_ = y.e
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    y_1234 = y.e1234
    ret_ = (*)(x_1234, y_)
    ret_34 = (*)(x_1234, y_34)
    ret_24 = (*)(x_1234, y_24)
    ret_23 = (*)(x_1234, y_23)
    ret_14 = (*)(x_1234, y_14)
    ret_13 = (*)(x_1234, y_13)
    ret_12 = (*)(x_1234, y_12)
    ret_1234 = (*)(x_1234, y_1234)
    return MultiVectorEven(; e = ret_, e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12, e1234 = ret_1234)
end
function anti_wedge(x::MultiVector4, y::MultiVector0)
    x_1234 = x.e1234
    y_ = y.e
    ret_ = (*)(x_1234, y_)
    return MultiVector0(; e = ret_)
end
function anti_wedge(x::MultiVector4, y::MultiVector1)
    x_1234 = x.e1234
    y_4 = y.e4
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    ret_4 = (*)(x_1234, y_4)
    ret_3 = (*)(x_1234, y_3)
    ret_2 = (*)(x_1234, y_2)
    ret_1 = (*)(x_1234, y_1)
    return MultiVector1(; e4 = ret_4, e3 = ret_3, e2 = ret_2, e1 = ret_1)
end
function anti_wedge(x::MultiVector4, y::MultiVector2)
    x_1234 = x.e1234
    y_34 = y.e34
    y_24 = y.e24
    y_23 = y.e23
    y_14 = y.e14
    y_13 = y.e13
    y_12 = y.e12
    ret_34 = (*)(x_1234, y_34)
    ret_24 = (*)(x_1234, y_24)
    ret_23 = (*)(x_1234, y_23)
    ret_14 = (*)(x_1234, y_14)
    ret_13 = (*)(x_1234, y_13)
    ret_12 = (*)(x_1234, y_12)
    return MultiVector2(; e34 = ret_34, e24 = ret_24, e23 = ret_23, e14 = ret_14, e13 = ret_13, e12 = ret_12)
end
function anti_wedge(x::MultiVector4, y::MultiVector3)
    x_1234 = x.e1234
    y_234 = y.e234
    y_134 = y.e134
    y_124 = y.e124
    y_123 = y.e123
    ret_234 = (*)(x_1234, y_234)
    ret_134 = (*)(x_1234, y_134)
    ret_124 = (*)(x_1234, y_124)
    ret_123 = (*)(x_1234, y_123)
    return MultiVector3(; e234 = ret_234, e134 = ret_134, e124 = ret_124, e123 = ret_123)
end
function anti_wedge(x::MultiVector4, y::MultiVector4)
    x_1234 = x.e1234
    y_1234 = y.e1234
    ret_1234 = (*)(x_1234, y_1234)
    return MultiVector4(; e1234 = ret_1234)
end
function anti_wedge(x::MultiVector4, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function anti_wedge(x::MultiVectorZero, y::MultiVectorAll)
    return MultiVectorZero(; )
end
function anti_wedge(x::MultiVectorZero, y::MultiVectorEven)
    return MultiVectorZero(; )
end
function anti_wedge(x::MultiVectorZero, y::MultiVector0)
    return MultiVectorZero(; )
end
function anti_wedge(x::MultiVectorZero, y::MultiVector1)
    return MultiVectorZero(; )
end
function anti_wedge(x::MultiVectorZero, y::MultiVector2)
    return MultiVectorZero(; )
end
function anti_wedge(x::MultiVectorZero, y::MultiVector3)
    return MultiVectorZero(; )
end
function anti_wedge(x::MultiVectorZero, y::MultiVector4)
    return MultiVectorZero(; )
end
function anti_wedge(x::MultiVectorZero, y::MultiVectorZero)
    return MultiVectorZero(; )
end
