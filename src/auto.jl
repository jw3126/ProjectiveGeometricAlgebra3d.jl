struct MultiVectorAll{T}
    e::T
    e3::T
    e2::T
    e23::T
    e1::T
    e13::T
    e12::T
    e123::T
    e0::T
    e03::T
    e02::T
    e023::T
    e01::T
    e013::T
    e012::T
    e0123::T
    function MultiVectorAll{T}(e, e3, e2, e23, e1, e13, e12, e123, e0, e03, e02, e023, e01, e013, e012, e0123) where T
        new{T}(convert(T, e), convert(T, e3), convert(T, e2), convert(T, e23), convert(T, e1), convert(T, e13), convert(T, e12), convert(T, e123), convert(T, e0), convert(T, e03), convert(T, e02), convert(T, e023), convert(T, e01), convert(T, e013), convert(T, e012), convert(T, e0123))
    end
    function MultiVectorAll(e, e3, e2, e23, e1, e13, e12, e123, e0, e03, e02, e023, e01, e013, e012, e0123)
        (_e, _e3, _e2, _e23, _e1, _e13, _e12, _e123, _e0, _e03, _e02, _e023, _e01, _e013, _e012, _e0123) = promote(e, e3, e2, e23, e1, e13, e12, e123, e0, e03, e02, e023, e01, e013, e012, e0123)
        T = typeof(_e)
        new{T}(_e, _e3, _e2, _e23, _e1, _e13, _e12, _e123, _e0, _e03, _e02, _e023, _e01, _e013, _e012, _e0123)
    end
end
function MultiVectorAll(; e = 0, e3 = 0, e2 = 0, e23 = 0, e1 = 0, e13 = 0, e12 = 0, e123 = 0, e0 = 0, e03 = 0, e02 = 0, e023 = 0, e01 = 0, e013 = 0, e012 = 0, e0123 = 0)
    return MultiVectorAll(e, e3, e2, e23, e1, e13, e12, e123, e0, e03, e02, e023, e01, e013, e012, e0123)
end
function MultiVectorAll(t::NTuple{16, Any})
    MultiVectorAll(t[1], t[2], t[3], t[4], t[5], t[6], t[7], t[8], t[9], t[10], t[11], t[12], t[13], t[14], t[15], t[16])
end
function Base.Tuple(x::MultiVectorAll)
    tuple(x.e, x.e3, x.e2, x.e23, x.e1, x.e13, x.e12, x.e123, x.e0, x.e03, x.e02, x.e023, x.e01, x.e013, x.e012, x.e0123)
end
function basislength(::Type{<:MultiVectorAll})
    16
end
function scalartype(::Type{MultiVectorAll{T}}) where T
    T
end
function MultiVectorAll{T}(x::MultiVectorAll) where T
    MultiVectorAll{T}(x.e, x.e3, x.e2, x.e23, x.e1, x.e13, x.e12, x.e123, x.e0, x.e03, x.e02, x.e023, x.e01, x.e013, x.e012, x.e0123)
end
struct MultiVectorEven{T}
    e::T
    e23::T
    e13::T
    e12::T
    e03::T
    e02::T
    e01::T
    e0123::T
    function MultiVectorEven{T}(e, e23, e13, e12, e03, e02, e01, e0123) where T
        new{T}(convert(T, e), convert(T, e23), convert(T, e13), convert(T, e12), convert(T, e03), convert(T, e02), convert(T, e01), convert(T, e0123))
    end
    function MultiVectorEven(e, e23, e13, e12, e03, e02, e01, e0123)
        (_e, _e23, _e13, _e12, _e03, _e02, _e01, _e0123) = promote(e, e23, e13, e12, e03, e02, e01, e0123)
        T = typeof(_e)
        new{T}(_e, _e23, _e13, _e12, _e03, _e02, _e01, _e0123)
    end
end
function MultiVectorEven(; e = 0, e23 = 0, e13 = 0, e12 = 0, e03 = 0, e02 = 0, e01 = 0, e0123 = 0)
    return MultiVectorEven(e, e23, e13, e12, e03, e02, e01, e0123)
end
function MultiVectorEven(t::NTuple{8, Any})
    MultiVectorEven(t[1], t[2], t[3], t[4], t[5], t[6], t[7], t[8])
end
function Base.Tuple(x::MultiVectorEven)
    tuple(x.e, x.e23, x.e13, x.e12, x.e03, x.e02, x.e01, x.e0123)
end
function basislength(::Type{<:MultiVectorEven})
    8
end
function scalartype(::Type{MultiVectorEven{T}}) where T
    T
end
function MultiVectorEven{T}(x::MultiVectorEven) where T
    MultiVectorEven{T}(x.e, x.e23, x.e13, x.e12, x.e03, x.e02, x.e01, x.e0123)
end
struct MultiVector0{T}
    e::T
    function MultiVector0{T}(e) where T
        new{T}(convert(T, e))
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
function MultiVector0(t::NTuple{1, Any})
    MultiVector0(t[1])
end
function Base.Tuple(x::MultiVector0)
    tuple(x.e)
end
function basislength(::Type{<:MultiVector0})
    1
end
function scalartype(::Type{MultiVector0{T}}) where T
    T
end
function MultiVector0{T}(x::MultiVector0) where T
    MultiVector0{T}(x.e)
end
struct MultiVector1{T}
    e3::T
    e2::T
    e1::T
    e0::T
    function MultiVector1{T}(e3, e2, e1, e0) where T
        new{T}(convert(T, e3), convert(T, e2), convert(T, e1), convert(T, e0))
    end
    function MultiVector1(e3, e2, e1, e0)
        (_e3, _e2, _e1, _e0) = promote(e3, e2, e1, e0)
        T = typeof(_e3)
        new{T}(_e3, _e2, _e1, _e0)
    end
end
function MultiVector1(; e3 = 0, e2 = 0, e1 = 0, e0 = 0)
    return MultiVector1(e3, e2, e1, e0)
end
function MultiVector1(t::NTuple{4, Any})
    MultiVector1(t[1], t[2], t[3], t[4])
end
function Base.Tuple(x::MultiVector1)
    tuple(x.e3, x.e2, x.e1, x.e0)
end
function basislength(::Type{<:MultiVector1})
    4
end
function scalartype(::Type{MultiVector1{T}}) where T
    T
end
function MultiVector1{T}(x::MultiVector1) where T
    MultiVector1{T}(x.e3, x.e2, x.e1, x.e0)
end
struct MultiVector2{T}
    e23::T
    e13::T
    e12::T
    e03::T
    e02::T
    e01::T
    function MultiVector2{T}(e23, e13, e12, e03, e02, e01) where T
        new{T}(convert(T, e23), convert(T, e13), convert(T, e12), convert(T, e03), convert(T, e02), convert(T, e01))
    end
    function MultiVector2(e23, e13, e12, e03, e02, e01)
        (_e23, _e13, _e12, _e03, _e02, _e01) = promote(e23, e13, e12, e03, e02, e01)
        T = typeof(_e23)
        new{T}(_e23, _e13, _e12, _e03, _e02, _e01)
    end
end
function MultiVector2(; e23 = 0, e13 = 0, e12 = 0, e03 = 0, e02 = 0, e01 = 0)
    return MultiVector2(e23, e13, e12, e03, e02, e01)
end
function MultiVector2(t::NTuple{6, Any})
    MultiVector2(t[1], t[2], t[3], t[4], t[5], t[6])
end
function Base.Tuple(x::MultiVector2)
    tuple(x.e23, x.e13, x.e12, x.e03, x.e02, x.e01)
end
function basislength(::Type{<:MultiVector2})
    6
end
function scalartype(::Type{MultiVector2{T}}) where T
    T
end
function MultiVector2{T}(x::MultiVector2) where T
    MultiVector2{T}(x.e23, x.e13, x.e12, x.e03, x.e02, x.e01)
end
struct MultiVector3{T}
    e123::T
    e023::T
    e013::T
    e012::T
    function MultiVector3{T}(e123, e023, e013, e012) where T
        new{T}(convert(T, e123), convert(T, e023), convert(T, e013), convert(T, e012))
    end
    function MultiVector3(e123, e023, e013, e012)
        (_e123, _e023, _e013, _e012) = promote(e123, e023, e013, e012)
        T = typeof(_e123)
        new{T}(_e123, _e023, _e013, _e012)
    end
end
function MultiVector3(; e123 = 0, e023 = 0, e013 = 0, e012 = 0)
    return MultiVector3(e123, e023, e013, e012)
end
function MultiVector3(t::NTuple{4, Any})
    MultiVector3(t[1], t[2], t[3], t[4])
end
function Base.Tuple(x::MultiVector3)
    tuple(x.e123, x.e023, x.e013, x.e012)
end
function basislength(::Type{<:MultiVector3})
    4
end
function scalartype(::Type{MultiVector3{T}}) where T
    T
end
function MultiVector3{T}(x::MultiVector3) where T
    MultiVector3{T}(x.e123, x.e023, x.e013, x.e012)
end
struct MultiVector4{T}
    e0123::T
    function MultiVector4{T}(e0123) where T
        new{T}(convert(T, e0123))
    end
    function MultiVector4(e0123)
        (_e0123,) = promote(e0123)
        T = typeof(_e0123)
        new{T}(_e0123)
    end
end
function MultiVector4(; e0123 = 0)
    return MultiVector4(e0123)
end
function MultiVector4(t::NTuple{1, Any})
    MultiVector4(t[1])
end
function Base.Tuple(x::MultiVector4)
    tuple(x.e0123)
end
function basislength(::Type{<:MultiVector4})
    1
end
function scalartype(::Type{MultiVector4{T}}) where T
    T
end
function MultiVector4{T}(x::MultiVector4) where T
    MultiVector4{T}(x.e0123)
end
struct MultiVectorZero
end
function MultiVectorZero(t::NTuple{0, Any})
    MultiVectorZero()
end
function Base.Tuple(x::MultiVectorZero)
    tuple()
end
function basislength(::Type{<:MultiVectorZero})
    0
end
function dual(x::MultiVectorAll)
    x_ = x.e
    x_3 = x.e3
    x_2 = x.e2
    x_23 = x.e23
    x_1 = x.e1
    x_13 = x.e13
    x_12 = x.e12
    x_123 = x.e123
    x_0 = x.e0
    x_03 = x.e03
    x_02 = x.e02
    x_023 = x.e023
    x_01 = x.e01
    x_013 = x.e013
    x_012 = x.e012
    x_0123 = x.e0123
    ret_ = x_0123
    ret_3 = (*)(-1, x_012)
    ret_2 = x_013
    ret_23 = x_01
    ret_1 = (*)(-1, x_023)
    ret_13 = (*)(-1, x_02)
    ret_12 = x_03
    ret_123 = x_0
    ret_0 = x_123
    ret_03 = x_12
    ret_02 = (*)(-1, x_13)
    ret_023 = (*)(-1, x_1)
    ret_01 = x_23
    ret_013 = x_2
    ret_012 = (*)(-1, x_3)
    ret_0123 = x_
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function dual(x::MultiVectorEven)
    x_ = x.e
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    x_0123 = x.e0123
    ret_ = x_0123
    ret_23 = x_01
    ret_13 = (*)(-1, x_02)
    ret_12 = x_03
    ret_03 = x_12
    ret_02 = (*)(-1, x_13)
    ret_01 = x_23
    ret_0123 = x_
    return MultiVectorEven(; e = ret_, e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01, e0123 = ret_0123)
end
function dual(x::MultiVector0)
    x_ = x.e
    ret_0123 = x_
    return MultiVector4(; e0123 = ret_0123)
end
function dual(x::MultiVector1)
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    x_0 = x.e0
    ret_123 = x_0
    ret_023 = (*)(-1, x_1)
    ret_013 = x_2
    ret_012 = (*)(-1, x_3)
    return MultiVector3(; e123 = ret_123, e023 = ret_023, e013 = ret_013, e012 = ret_012)
end
function dual(x::MultiVector2)
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    ret_23 = x_01
    ret_13 = (*)(-1, x_02)
    ret_12 = x_03
    ret_03 = x_12
    ret_02 = (*)(-1, x_13)
    ret_01 = x_23
    return MultiVector2(; e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01)
end
function dual(x::MultiVector3)
    x_123 = x.e123
    x_023 = x.e023
    x_013 = x.e013
    x_012 = x.e012
    ret_3 = (*)(-1, x_012)
    ret_2 = x_013
    ret_1 = (*)(-1, x_023)
    ret_0 = x_123
    return MultiVector1(; e3 = ret_3, e2 = ret_2, e1 = ret_1, e0 = ret_0)
end
function dual(x::MultiVector4)
    x_0123 = x.e0123
    ret_ = x_0123
    return MultiVector0(; e = ret_)
end
function dual(x::MultiVectorZero)
    return MultiVectorZero(; )
end
function rev(x::MultiVectorAll)
    x_ = x.e
    x_3 = x.e3
    x_2 = x.e2
    x_23 = x.e23
    x_1 = x.e1
    x_13 = x.e13
    x_12 = x.e12
    x_123 = x.e123
    x_0 = x.e0
    x_03 = x.e03
    x_02 = x.e02
    x_023 = x.e023
    x_01 = x.e01
    x_013 = x.e013
    x_012 = x.e012
    x_0123 = x.e0123
    ret_ = x_
    ret_3 = x_3
    ret_2 = x_2
    ret_23 = (*)(-1, x_23)
    ret_1 = x_1
    ret_13 = (*)(-1, x_13)
    ret_12 = (*)(-1, x_12)
    ret_123 = (*)(-1, x_123)
    ret_0 = x_0
    ret_03 = (*)(-1, x_03)
    ret_02 = (*)(-1, x_02)
    ret_023 = (*)(-1, x_023)
    ret_01 = (*)(-1, x_01)
    ret_013 = (*)(-1, x_013)
    ret_012 = (*)(-1, x_012)
    ret_0123 = x_0123
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function rev(x::MultiVectorEven)
    x_ = x.e
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    x_0123 = x.e0123
    ret_ = x_
    ret_23 = (*)(-1, x_23)
    ret_13 = (*)(-1, x_13)
    ret_12 = (*)(-1, x_12)
    ret_03 = (*)(-1, x_03)
    ret_02 = (*)(-1, x_02)
    ret_01 = (*)(-1, x_01)
    ret_0123 = x_0123
    return MultiVectorEven(; e = ret_, e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01, e0123 = ret_0123)
end
function rev(x::MultiVector0)
    x_ = x.e
    ret_ = x_
    return MultiVector0(; e = ret_)
end
function rev(x::MultiVector1)
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    x_0 = x.e0
    ret_3 = x_3
    ret_2 = x_2
    ret_1 = x_1
    ret_0 = x_0
    return MultiVector1(; e3 = ret_3, e2 = ret_2, e1 = ret_1, e0 = ret_0)
end
function rev(x::MultiVector2)
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    ret_23 = (*)(-1, x_23)
    ret_13 = (*)(-1, x_13)
    ret_12 = (*)(-1, x_12)
    ret_03 = (*)(-1, x_03)
    ret_02 = (*)(-1, x_02)
    ret_01 = (*)(-1, x_01)
    return MultiVector2(; e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01)
end
function rev(x::MultiVector3)
    x_123 = x.e123
    x_023 = x.e023
    x_013 = x.e013
    x_012 = x.e012
    ret_123 = (*)(-1, x_123)
    ret_023 = (*)(-1, x_023)
    ret_013 = (*)(-1, x_013)
    ret_012 = (*)(-1, x_012)
    return MultiVector3(; e123 = ret_123, e023 = ret_023, e013 = ret_013, e012 = ret_012)
end
function rev(x::MultiVector4)
    x_0123 = x.e0123
    ret_0123 = x_0123
    return MultiVector4(; e0123 = ret_0123)
end
function rev(x::MultiVectorZero)
    return MultiVectorZero(; )
end
function Base.:-(x::MultiVectorAll)
    x_ = x.e
    x_3 = x.e3
    x_2 = x.e2
    x_23 = x.e23
    x_1 = x.e1
    x_13 = x.e13
    x_12 = x.e12
    x_123 = x.e123
    x_0 = x.e0
    x_03 = x.e03
    x_02 = x.e02
    x_023 = x.e023
    x_01 = x.e01
    x_013 = x.e013
    x_012 = x.e012
    x_0123 = x.e0123
    ret_ = (*)(-1, x_)
    ret_3 = (*)(-1, x_3)
    ret_2 = (*)(-1, x_2)
    ret_23 = (*)(-1, x_23)
    ret_1 = (*)(-1, x_1)
    ret_13 = (*)(-1, x_13)
    ret_12 = (*)(-1, x_12)
    ret_123 = (*)(-1, x_123)
    ret_0 = (*)(-1, x_0)
    ret_03 = (*)(-1, x_03)
    ret_02 = (*)(-1, x_02)
    ret_023 = (*)(-1, x_023)
    ret_01 = (*)(-1, x_01)
    ret_013 = (*)(-1, x_013)
    ret_012 = (*)(-1, x_012)
    ret_0123 = (*)(-1, x_0123)
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function Base.:-(x::MultiVectorEven)
    x_ = x.e
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    x_0123 = x.e0123
    ret_ = (*)(-1, x_)
    ret_23 = (*)(-1, x_23)
    ret_13 = (*)(-1, x_13)
    ret_12 = (*)(-1, x_12)
    ret_03 = (*)(-1, x_03)
    ret_02 = (*)(-1, x_02)
    ret_01 = (*)(-1, x_01)
    ret_0123 = (*)(-1, x_0123)
    return MultiVectorEven(; e = ret_, e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01, e0123 = ret_0123)
end
function Base.:-(x::MultiVector0)
    x_ = x.e
    ret_ = (*)(-1, x_)
    return MultiVector0(; e = ret_)
end
function Base.:-(x::MultiVector1)
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    x_0 = x.e0
    ret_3 = (*)(-1, x_3)
    ret_2 = (*)(-1, x_2)
    ret_1 = (*)(-1, x_1)
    ret_0 = (*)(-1, x_0)
    return MultiVector1(; e3 = ret_3, e2 = ret_2, e1 = ret_1, e0 = ret_0)
end
function Base.:-(x::MultiVector2)
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    ret_23 = (*)(-1, x_23)
    ret_13 = (*)(-1, x_13)
    ret_12 = (*)(-1, x_12)
    ret_03 = (*)(-1, x_03)
    ret_02 = (*)(-1, x_02)
    ret_01 = (*)(-1, x_01)
    return MultiVector2(; e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01)
end
function Base.:-(x::MultiVector3)
    x_123 = x.e123
    x_023 = x.e023
    x_013 = x.e013
    x_012 = x.e012
    ret_123 = (*)(-1, x_123)
    ret_023 = (*)(-1, x_023)
    ret_013 = (*)(-1, x_013)
    ret_012 = (*)(-1, x_012)
    return MultiVector3(; e123 = ret_123, e023 = ret_023, e013 = ret_013, e012 = ret_012)
end
function Base.:-(x::MultiVector4)
    x_0123 = x.e0123
    ret_0123 = (*)(-1, x_0123)
    return MultiVector4(; e0123 = ret_0123)
end
function Base.:-(x::MultiVectorZero)
    return MultiVectorZero(; )
end
function Base.:+(x::MultiVectorAll, y::MultiVectorAll)
    x_ = x.e
    x_3 = x.e3
    x_2 = x.e2
    x_23 = x.e23
    x_1 = x.e1
    x_13 = x.e13
    x_12 = x.e12
    x_123 = x.e123
    x_0 = x.e0
    x_03 = x.e03
    x_02 = x.e02
    x_023 = x.e023
    x_01 = x.e01
    x_013 = x.e013
    x_012 = x.e012
    x_0123 = x.e0123
    y_ = y.e
    y_3 = y.e3
    y_2 = y.e2
    y_23 = y.e23
    y_1 = y.e1
    y_13 = y.e13
    y_12 = y.e12
    y_123 = y.e123
    y_0 = y.e0
    y_03 = y.e03
    y_02 = y.e02
    y_023 = y.e023
    y_01 = y.e01
    y_013 = y.e013
    y_012 = y.e012
    y_0123 = y.e0123
    ret_ = (+)(x_, y_)
    ret_3 = (+)(x_3, y_3)
    ret_2 = (+)(x_2, y_2)
    ret_23 = (+)(x_23, y_23)
    ret_1 = (+)(x_1, y_1)
    ret_13 = (+)(x_13, y_13)
    ret_12 = (+)(x_12, y_12)
    ret_123 = (+)(x_123, y_123)
    ret_0 = (+)(x_0, y_0)
    ret_03 = (+)(x_03, y_03)
    ret_02 = (+)(x_02, y_02)
    ret_023 = (+)(x_023, y_023)
    ret_01 = (+)(x_01, y_01)
    ret_013 = (+)(x_013, y_013)
    ret_012 = (+)(x_012, y_012)
    ret_0123 = (+)(x_0123, y_0123)
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function Base.:+(x::MultiVectorAll, y::MultiVectorEven)
    x_ = x.e
    x_3 = x.e3
    x_2 = x.e2
    x_23 = x.e23
    x_1 = x.e1
    x_13 = x.e13
    x_12 = x.e12
    x_123 = x.e123
    x_0 = x.e0
    x_03 = x.e03
    x_02 = x.e02
    x_023 = x.e023
    x_01 = x.e01
    x_013 = x.e013
    x_012 = x.e012
    x_0123 = x.e0123
    y_ = y.e
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    y_0123 = y.e0123
    ret_ = (+)(x_, y_)
    ret_3 = x_3
    ret_2 = x_2
    ret_23 = (+)(x_23, y_23)
    ret_1 = x_1
    ret_13 = (+)(x_13, y_13)
    ret_12 = (+)(x_12, y_12)
    ret_123 = x_123
    ret_0 = x_0
    ret_03 = (+)(x_03, y_03)
    ret_02 = (+)(x_02, y_02)
    ret_023 = x_023
    ret_01 = (+)(x_01, y_01)
    ret_013 = x_013
    ret_012 = x_012
    ret_0123 = (+)(x_0123, y_0123)
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function Base.:+(x::MultiVectorAll, y::MultiVector0)
    x_ = x.e
    x_3 = x.e3
    x_2 = x.e2
    x_23 = x.e23
    x_1 = x.e1
    x_13 = x.e13
    x_12 = x.e12
    x_123 = x.e123
    x_0 = x.e0
    x_03 = x.e03
    x_02 = x.e02
    x_023 = x.e023
    x_01 = x.e01
    x_013 = x.e013
    x_012 = x.e012
    x_0123 = x.e0123
    y_ = y.e
    ret_ = (+)(x_, y_)
    ret_3 = x_3
    ret_2 = x_2
    ret_23 = x_23
    ret_1 = x_1
    ret_13 = x_13
    ret_12 = x_12
    ret_123 = x_123
    ret_0 = x_0
    ret_03 = x_03
    ret_02 = x_02
    ret_023 = x_023
    ret_01 = x_01
    ret_013 = x_013
    ret_012 = x_012
    ret_0123 = x_0123
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function Base.:+(x::MultiVectorAll, y::MultiVector1)
    x_ = x.e
    x_3 = x.e3
    x_2 = x.e2
    x_23 = x.e23
    x_1 = x.e1
    x_13 = x.e13
    x_12 = x.e12
    x_123 = x.e123
    x_0 = x.e0
    x_03 = x.e03
    x_02 = x.e02
    x_023 = x.e023
    x_01 = x.e01
    x_013 = x.e013
    x_012 = x.e012
    x_0123 = x.e0123
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    y_0 = y.e0
    ret_ = x_
    ret_3 = (+)(x_3, y_3)
    ret_2 = (+)(x_2, y_2)
    ret_23 = x_23
    ret_1 = (+)(x_1, y_1)
    ret_13 = x_13
    ret_12 = x_12
    ret_123 = x_123
    ret_0 = (+)(x_0, y_0)
    ret_03 = x_03
    ret_02 = x_02
    ret_023 = x_023
    ret_01 = x_01
    ret_013 = x_013
    ret_012 = x_012
    ret_0123 = x_0123
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function Base.:+(x::MultiVectorAll, y::MultiVector2)
    x_ = x.e
    x_3 = x.e3
    x_2 = x.e2
    x_23 = x.e23
    x_1 = x.e1
    x_13 = x.e13
    x_12 = x.e12
    x_123 = x.e123
    x_0 = x.e0
    x_03 = x.e03
    x_02 = x.e02
    x_023 = x.e023
    x_01 = x.e01
    x_013 = x.e013
    x_012 = x.e012
    x_0123 = x.e0123
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    ret_ = x_
    ret_3 = x_3
    ret_2 = x_2
    ret_23 = (+)(x_23, y_23)
    ret_1 = x_1
    ret_13 = (+)(x_13, y_13)
    ret_12 = (+)(x_12, y_12)
    ret_123 = x_123
    ret_0 = x_0
    ret_03 = (+)(x_03, y_03)
    ret_02 = (+)(x_02, y_02)
    ret_023 = x_023
    ret_01 = (+)(x_01, y_01)
    ret_013 = x_013
    ret_012 = x_012
    ret_0123 = x_0123
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function Base.:+(x::MultiVectorAll, y::MultiVector3)
    x_ = x.e
    x_3 = x.e3
    x_2 = x.e2
    x_23 = x.e23
    x_1 = x.e1
    x_13 = x.e13
    x_12 = x.e12
    x_123 = x.e123
    x_0 = x.e0
    x_03 = x.e03
    x_02 = x.e02
    x_023 = x.e023
    x_01 = x.e01
    x_013 = x.e013
    x_012 = x.e012
    x_0123 = x.e0123
    y_123 = y.e123
    y_023 = y.e023
    y_013 = y.e013
    y_012 = y.e012
    ret_ = x_
    ret_3 = x_3
    ret_2 = x_2
    ret_23 = x_23
    ret_1 = x_1
    ret_13 = x_13
    ret_12 = x_12
    ret_123 = (+)(x_123, y_123)
    ret_0 = x_0
    ret_03 = x_03
    ret_02 = x_02
    ret_023 = (+)(x_023, y_023)
    ret_01 = x_01
    ret_013 = (+)(x_013, y_013)
    ret_012 = (+)(x_012, y_012)
    ret_0123 = x_0123
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function Base.:+(x::MultiVectorAll, y::MultiVector4)
    x_ = x.e
    x_3 = x.e3
    x_2 = x.e2
    x_23 = x.e23
    x_1 = x.e1
    x_13 = x.e13
    x_12 = x.e12
    x_123 = x.e123
    x_0 = x.e0
    x_03 = x.e03
    x_02 = x.e02
    x_023 = x.e023
    x_01 = x.e01
    x_013 = x.e013
    x_012 = x.e012
    x_0123 = x.e0123
    y_0123 = y.e0123
    ret_ = x_
    ret_3 = x_3
    ret_2 = x_2
    ret_23 = x_23
    ret_1 = x_1
    ret_13 = x_13
    ret_12 = x_12
    ret_123 = x_123
    ret_0 = x_0
    ret_03 = x_03
    ret_02 = x_02
    ret_023 = x_023
    ret_01 = x_01
    ret_013 = x_013
    ret_012 = x_012
    ret_0123 = (+)(x_0123, y_0123)
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function Base.:+(x::MultiVectorAll, y::MultiVectorZero)
    x_ = x.e
    x_3 = x.e3
    x_2 = x.e2
    x_23 = x.e23
    x_1 = x.e1
    x_13 = x.e13
    x_12 = x.e12
    x_123 = x.e123
    x_0 = x.e0
    x_03 = x.e03
    x_02 = x.e02
    x_023 = x.e023
    x_01 = x.e01
    x_013 = x.e013
    x_012 = x.e012
    x_0123 = x.e0123
    ret_ = x_
    ret_3 = x_3
    ret_2 = x_2
    ret_23 = x_23
    ret_1 = x_1
    ret_13 = x_13
    ret_12 = x_12
    ret_123 = x_123
    ret_0 = x_0
    ret_03 = x_03
    ret_02 = x_02
    ret_023 = x_023
    ret_01 = x_01
    ret_013 = x_013
    ret_012 = x_012
    ret_0123 = x_0123
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function Base.:+(x::MultiVectorEven, y::MultiVectorAll)
    x_ = x.e
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    x_0123 = x.e0123
    y_ = y.e
    y_3 = y.e3
    y_2 = y.e2
    y_23 = y.e23
    y_1 = y.e1
    y_13 = y.e13
    y_12 = y.e12
    y_123 = y.e123
    y_0 = y.e0
    y_03 = y.e03
    y_02 = y.e02
    y_023 = y.e023
    y_01 = y.e01
    y_013 = y.e013
    y_012 = y.e012
    y_0123 = y.e0123
    ret_ = (+)(x_, y_)
    ret_3 = y_3
    ret_2 = y_2
    ret_23 = (+)(x_23, y_23)
    ret_1 = y_1
    ret_13 = (+)(x_13, y_13)
    ret_12 = (+)(x_12, y_12)
    ret_123 = y_123
    ret_0 = y_0
    ret_03 = (+)(x_03, y_03)
    ret_02 = (+)(x_02, y_02)
    ret_023 = y_023
    ret_01 = (+)(x_01, y_01)
    ret_013 = y_013
    ret_012 = y_012
    ret_0123 = (+)(x_0123, y_0123)
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function Base.:+(x::MultiVectorEven, y::MultiVectorEven)
    x_ = x.e
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    x_0123 = x.e0123
    y_ = y.e
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    y_0123 = y.e0123
    ret_ = (+)(x_, y_)
    ret_23 = (+)(x_23, y_23)
    ret_13 = (+)(x_13, y_13)
    ret_12 = (+)(x_12, y_12)
    ret_03 = (+)(x_03, y_03)
    ret_02 = (+)(x_02, y_02)
    ret_01 = (+)(x_01, y_01)
    ret_0123 = (+)(x_0123, y_0123)
    return MultiVectorEven(; e = ret_, e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01, e0123 = ret_0123)
end
function Base.:+(x::MultiVectorEven, y::MultiVector0)
    x_ = x.e
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    x_0123 = x.e0123
    y_ = y.e
    ret_ = (+)(x_, y_)
    ret_23 = x_23
    ret_13 = x_13
    ret_12 = x_12
    ret_03 = x_03
    ret_02 = x_02
    ret_01 = x_01
    ret_0123 = x_0123
    return MultiVectorEven(; e = ret_, e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01, e0123 = ret_0123)
end
function Base.:+(x::MultiVectorEven, y::MultiVector1)
    x_ = x.e
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    x_0123 = x.e0123
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    y_0 = y.e0
    ret_ = x_
    ret_3 = y_3
    ret_2 = y_2
    ret_23 = x_23
    ret_1 = y_1
    ret_13 = x_13
    ret_12 = x_12
    ret_0 = y_0
    ret_03 = x_03
    ret_02 = x_02
    ret_01 = x_01
    ret_0123 = x_0123
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e0 = ret_0, e03 = ret_03, e02 = ret_02, e01 = ret_01, e0123 = ret_0123)
end
function Base.:+(x::MultiVectorEven, y::MultiVector2)
    x_ = x.e
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    x_0123 = x.e0123
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    ret_ = x_
    ret_23 = (+)(x_23, y_23)
    ret_13 = (+)(x_13, y_13)
    ret_12 = (+)(x_12, y_12)
    ret_03 = (+)(x_03, y_03)
    ret_02 = (+)(x_02, y_02)
    ret_01 = (+)(x_01, y_01)
    ret_0123 = x_0123
    return MultiVectorEven(; e = ret_, e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01, e0123 = ret_0123)
end
function Base.:+(x::MultiVectorEven, y::MultiVector3)
    x_ = x.e
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    x_0123 = x.e0123
    y_123 = y.e123
    y_023 = y.e023
    y_013 = y.e013
    y_012 = y.e012
    ret_ = x_
    ret_23 = x_23
    ret_13 = x_13
    ret_12 = x_12
    ret_123 = y_123
    ret_03 = x_03
    ret_02 = x_02
    ret_023 = y_023
    ret_01 = x_01
    ret_013 = y_013
    ret_012 = y_012
    ret_0123 = x_0123
    return MultiVectorAll(; e = ret_, e23 = ret_23, e13 = ret_13, e12 = ret_12, e123 = ret_123, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function Base.:+(x::MultiVectorEven, y::MultiVector4)
    x_ = x.e
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    x_0123 = x.e0123
    y_0123 = y.e0123
    ret_ = x_
    ret_23 = x_23
    ret_13 = x_13
    ret_12 = x_12
    ret_03 = x_03
    ret_02 = x_02
    ret_01 = x_01
    ret_0123 = (+)(x_0123, y_0123)
    return MultiVectorEven(; e = ret_, e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01, e0123 = ret_0123)
end
function Base.:+(x::MultiVectorEven, y::MultiVectorZero)
    x_ = x.e
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    x_0123 = x.e0123
    ret_ = x_
    ret_23 = x_23
    ret_13 = x_13
    ret_12 = x_12
    ret_03 = x_03
    ret_02 = x_02
    ret_01 = x_01
    ret_0123 = x_0123
    return MultiVectorEven(; e = ret_, e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01, e0123 = ret_0123)
end
function Base.:+(x::MultiVector0, y::MultiVectorAll)
    x_ = x.e
    y_ = y.e
    y_3 = y.e3
    y_2 = y.e2
    y_23 = y.e23
    y_1 = y.e1
    y_13 = y.e13
    y_12 = y.e12
    y_123 = y.e123
    y_0 = y.e0
    y_03 = y.e03
    y_02 = y.e02
    y_023 = y.e023
    y_01 = y.e01
    y_013 = y.e013
    y_012 = y.e012
    y_0123 = y.e0123
    ret_ = (+)(x_, y_)
    ret_3 = y_3
    ret_2 = y_2
    ret_23 = y_23
    ret_1 = y_1
    ret_13 = y_13
    ret_12 = y_12
    ret_123 = y_123
    ret_0 = y_0
    ret_03 = y_03
    ret_02 = y_02
    ret_023 = y_023
    ret_01 = y_01
    ret_013 = y_013
    ret_012 = y_012
    ret_0123 = y_0123
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function Base.:+(x::MultiVector0, y::MultiVectorEven)
    x_ = x.e
    y_ = y.e
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    y_0123 = y.e0123
    ret_ = (+)(x_, y_)
    ret_23 = y_23
    ret_13 = y_13
    ret_12 = y_12
    ret_03 = y_03
    ret_02 = y_02
    ret_01 = y_01
    ret_0123 = y_0123
    return MultiVectorEven(; e = ret_, e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01, e0123 = ret_0123)
end
function Base.:+(x::MultiVector0, y::MultiVector0)
    x_ = x.e
    y_ = y.e
    ret_ = (+)(x_, y_)
    return MultiVector0(; e = ret_)
end
function Base.:+(x::MultiVector0, y::MultiVector1)
    x_ = x.e
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    y_0 = y.e0
    ret_ = x_
    ret_3 = y_3
    ret_2 = y_2
    ret_1 = y_1
    ret_0 = y_0
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e1 = ret_1, e0 = ret_0)
end
function Base.:+(x::MultiVector0, y::MultiVector2)
    x_ = x.e
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    ret_ = x_
    ret_23 = y_23
    ret_13 = y_13
    ret_12 = y_12
    ret_03 = y_03
    ret_02 = y_02
    ret_01 = y_01
    return MultiVectorEven(; e = ret_, e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01)
end
function Base.:+(x::MultiVector0, y::MultiVector3)
    x_ = x.e
    y_123 = y.e123
    y_023 = y.e023
    y_013 = y.e013
    y_012 = y.e012
    ret_ = x_
    ret_123 = y_123
    ret_023 = y_023
    ret_013 = y_013
    ret_012 = y_012
    return MultiVectorAll(; e = ret_, e123 = ret_123, e023 = ret_023, e013 = ret_013, e012 = ret_012)
end
function Base.:+(x::MultiVector0, y::MultiVector4)
    x_ = x.e
    y_0123 = y.e0123
    ret_ = x_
    ret_0123 = y_0123
    return MultiVectorEven(; e = ret_, e0123 = ret_0123)
end
function Base.:+(x::MultiVector0, y::MultiVectorZero)
    x_ = x.e
    ret_ = x_
    return MultiVector0(; e = ret_)
end
function Base.:+(x::MultiVector1, y::MultiVectorAll)
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    x_0 = x.e0
    y_ = y.e
    y_3 = y.e3
    y_2 = y.e2
    y_23 = y.e23
    y_1 = y.e1
    y_13 = y.e13
    y_12 = y.e12
    y_123 = y.e123
    y_0 = y.e0
    y_03 = y.e03
    y_02 = y.e02
    y_023 = y.e023
    y_01 = y.e01
    y_013 = y.e013
    y_012 = y.e012
    y_0123 = y.e0123
    ret_ = y_
    ret_3 = (+)(x_3, y_3)
    ret_2 = (+)(x_2, y_2)
    ret_23 = y_23
    ret_1 = (+)(x_1, y_1)
    ret_13 = y_13
    ret_12 = y_12
    ret_123 = y_123
    ret_0 = (+)(x_0, y_0)
    ret_03 = y_03
    ret_02 = y_02
    ret_023 = y_023
    ret_01 = y_01
    ret_013 = y_013
    ret_012 = y_012
    ret_0123 = y_0123
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function Base.:+(x::MultiVector1, y::MultiVectorEven)
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    x_0 = x.e0
    y_ = y.e
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    y_0123 = y.e0123
    ret_ = y_
    ret_3 = x_3
    ret_2 = x_2
    ret_23 = y_23
    ret_1 = x_1
    ret_13 = y_13
    ret_12 = y_12
    ret_0 = x_0
    ret_03 = y_03
    ret_02 = y_02
    ret_01 = y_01
    ret_0123 = y_0123
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e0 = ret_0, e03 = ret_03, e02 = ret_02, e01 = ret_01, e0123 = ret_0123)
end
function Base.:+(x::MultiVector1, y::MultiVector0)
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    x_0 = x.e0
    y_ = y.e
    ret_ = y_
    ret_3 = x_3
    ret_2 = x_2
    ret_1 = x_1
    ret_0 = x_0
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e1 = ret_1, e0 = ret_0)
end
function Base.:+(x::MultiVector1, y::MultiVector1)
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    x_0 = x.e0
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    y_0 = y.e0
    ret_3 = (+)(x_3, y_3)
    ret_2 = (+)(x_2, y_2)
    ret_1 = (+)(x_1, y_1)
    ret_0 = (+)(x_0, y_0)
    return MultiVector1(; e3 = ret_3, e2 = ret_2, e1 = ret_1, e0 = ret_0)
end
function Base.:+(x::MultiVector1, y::MultiVector2)
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    x_0 = x.e0
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    ret_3 = x_3
    ret_2 = x_2
    ret_23 = y_23
    ret_1 = x_1
    ret_13 = y_13
    ret_12 = y_12
    ret_0 = x_0
    ret_03 = y_03
    ret_02 = y_02
    ret_01 = y_01
    return MultiVectorAll(; e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e0 = ret_0, e03 = ret_03, e02 = ret_02, e01 = ret_01)
end
function Base.:+(x::MultiVector1, y::MultiVector3)
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    x_0 = x.e0
    y_123 = y.e123
    y_023 = y.e023
    y_013 = y.e013
    y_012 = y.e012
    ret_3 = x_3
    ret_2 = x_2
    ret_1 = x_1
    ret_123 = y_123
    ret_0 = x_0
    ret_023 = y_023
    ret_013 = y_013
    ret_012 = y_012
    return MultiVectorAll(; e3 = ret_3, e2 = ret_2, e1 = ret_1, e123 = ret_123, e0 = ret_0, e023 = ret_023, e013 = ret_013, e012 = ret_012)
end
function Base.:+(x::MultiVector1, y::MultiVector4)
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    x_0 = x.e0
    y_0123 = y.e0123
    ret_3 = x_3
    ret_2 = x_2
    ret_1 = x_1
    ret_0 = x_0
    ret_0123 = y_0123
    return MultiVectorAll(; e3 = ret_3, e2 = ret_2, e1 = ret_1, e0 = ret_0, e0123 = ret_0123)
end
function Base.:+(x::MultiVector1, y::MultiVectorZero)
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    x_0 = x.e0
    ret_3 = x_3
    ret_2 = x_2
    ret_1 = x_1
    ret_0 = x_0
    return MultiVector1(; e3 = ret_3, e2 = ret_2, e1 = ret_1, e0 = ret_0)
end
function Base.:+(x::MultiVector2, y::MultiVectorAll)
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    y_ = y.e
    y_3 = y.e3
    y_2 = y.e2
    y_23 = y.e23
    y_1 = y.e1
    y_13 = y.e13
    y_12 = y.e12
    y_123 = y.e123
    y_0 = y.e0
    y_03 = y.e03
    y_02 = y.e02
    y_023 = y.e023
    y_01 = y.e01
    y_013 = y.e013
    y_012 = y.e012
    y_0123 = y.e0123
    ret_ = y_
    ret_3 = y_3
    ret_2 = y_2
    ret_23 = (+)(x_23, y_23)
    ret_1 = y_1
    ret_13 = (+)(x_13, y_13)
    ret_12 = (+)(x_12, y_12)
    ret_123 = y_123
    ret_0 = y_0
    ret_03 = (+)(x_03, y_03)
    ret_02 = (+)(x_02, y_02)
    ret_023 = y_023
    ret_01 = (+)(x_01, y_01)
    ret_013 = y_013
    ret_012 = y_012
    ret_0123 = y_0123
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function Base.:+(x::MultiVector2, y::MultiVectorEven)
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    y_ = y.e
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    y_0123 = y.e0123
    ret_ = y_
    ret_23 = (+)(x_23, y_23)
    ret_13 = (+)(x_13, y_13)
    ret_12 = (+)(x_12, y_12)
    ret_03 = (+)(x_03, y_03)
    ret_02 = (+)(x_02, y_02)
    ret_01 = (+)(x_01, y_01)
    ret_0123 = y_0123
    return MultiVectorEven(; e = ret_, e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01, e0123 = ret_0123)
end
function Base.:+(x::MultiVector2, y::MultiVector0)
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    y_ = y.e
    ret_ = y_
    ret_23 = x_23
    ret_13 = x_13
    ret_12 = x_12
    ret_03 = x_03
    ret_02 = x_02
    ret_01 = x_01
    return MultiVectorEven(; e = ret_, e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01)
end
function Base.:+(x::MultiVector2, y::MultiVector1)
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    y_0 = y.e0
    ret_3 = y_3
    ret_2 = y_2
    ret_23 = x_23
    ret_1 = y_1
    ret_13 = x_13
    ret_12 = x_12
    ret_0 = y_0
    ret_03 = x_03
    ret_02 = x_02
    ret_01 = x_01
    return MultiVectorAll(; e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e0 = ret_0, e03 = ret_03, e02 = ret_02, e01 = ret_01)
end
function Base.:+(x::MultiVector2, y::MultiVector2)
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    ret_23 = (+)(x_23, y_23)
    ret_13 = (+)(x_13, y_13)
    ret_12 = (+)(x_12, y_12)
    ret_03 = (+)(x_03, y_03)
    ret_02 = (+)(x_02, y_02)
    ret_01 = (+)(x_01, y_01)
    return MultiVector2(; e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01)
end
function Base.:+(x::MultiVector2, y::MultiVector3)
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    y_123 = y.e123
    y_023 = y.e023
    y_013 = y.e013
    y_012 = y.e012
    ret_23 = x_23
    ret_13 = x_13
    ret_12 = x_12
    ret_123 = y_123
    ret_03 = x_03
    ret_02 = x_02
    ret_023 = y_023
    ret_01 = x_01
    ret_013 = y_013
    ret_012 = y_012
    return MultiVectorAll(; e23 = ret_23, e13 = ret_13, e12 = ret_12, e123 = ret_123, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012)
end
function Base.:+(x::MultiVector2, y::MultiVector4)
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    y_0123 = y.e0123
    ret_23 = x_23
    ret_13 = x_13
    ret_12 = x_12
    ret_03 = x_03
    ret_02 = x_02
    ret_01 = x_01
    ret_0123 = y_0123
    return MultiVectorEven(; e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01, e0123 = ret_0123)
end
function Base.:+(x::MultiVector2, y::MultiVectorZero)
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    ret_23 = x_23
    ret_13 = x_13
    ret_12 = x_12
    ret_03 = x_03
    ret_02 = x_02
    ret_01 = x_01
    return MultiVector2(; e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01)
end
function Base.:+(x::MultiVector3, y::MultiVectorAll)
    x_123 = x.e123
    x_023 = x.e023
    x_013 = x.e013
    x_012 = x.e012
    y_ = y.e
    y_3 = y.e3
    y_2 = y.e2
    y_23 = y.e23
    y_1 = y.e1
    y_13 = y.e13
    y_12 = y.e12
    y_123 = y.e123
    y_0 = y.e0
    y_03 = y.e03
    y_02 = y.e02
    y_023 = y.e023
    y_01 = y.e01
    y_013 = y.e013
    y_012 = y.e012
    y_0123 = y.e0123
    ret_ = y_
    ret_3 = y_3
    ret_2 = y_2
    ret_23 = y_23
    ret_1 = y_1
    ret_13 = y_13
    ret_12 = y_12
    ret_123 = (+)(x_123, y_123)
    ret_0 = y_0
    ret_03 = y_03
    ret_02 = y_02
    ret_023 = (+)(x_023, y_023)
    ret_01 = y_01
    ret_013 = (+)(x_013, y_013)
    ret_012 = (+)(x_012, y_012)
    ret_0123 = y_0123
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function Base.:+(x::MultiVector3, y::MultiVectorEven)
    x_123 = x.e123
    x_023 = x.e023
    x_013 = x.e013
    x_012 = x.e012
    y_ = y.e
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    y_0123 = y.e0123
    ret_ = y_
    ret_23 = y_23
    ret_13 = y_13
    ret_12 = y_12
    ret_123 = x_123
    ret_03 = y_03
    ret_02 = y_02
    ret_023 = x_023
    ret_01 = y_01
    ret_013 = x_013
    ret_012 = x_012
    ret_0123 = y_0123
    return MultiVectorAll(; e = ret_, e23 = ret_23, e13 = ret_13, e12 = ret_12, e123 = ret_123, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function Base.:+(x::MultiVector3, y::MultiVector0)
    x_123 = x.e123
    x_023 = x.e023
    x_013 = x.e013
    x_012 = x.e012
    y_ = y.e
    ret_ = y_
    ret_123 = x_123
    ret_023 = x_023
    ret_013 = x_013
    ret_012 = x_012
    return MultiVectorAll(; e = ret_, e123 = ret_123, e023 = ret_023, e013 = ret_013, e012 = ret_012)
end
function Base.:+(x::MultiVector3, y::MultiVector1)
    x_123 = x.e123
    x_023 = x.e023
    x_013 = x.e013
    x_012 = x.e012
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    y_0 = y.e0
    ret_3 = y_3
    ret_2 = y_2
    ret_1 = y_1
    ret_123 = x_123
    ret_0 = y_0
    ret_023 = x_023
    ret_013 = x_013
    ret_012 = x_012
    return MultiVectorAll(; e3 = ret_3, e2 = ret_2, e1 = ret_1, e123 = ret_123, e0 = ret_0, e023 = ret_023, e013 = ret_013, e012 = ret_012)
end
function Base.:+(x::MultiVector3, y::MultiVector2)
    x_123 = x.e123
    x_023 = x.e023
    x_013 = x.e013
    x_012 = x.e012
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    ret_23 = y_23
    ret_13 = y_13
    ret_12 = y_12
    ret_123 = x_123
    ret_03 = y_03
    ret_02 = y_02
    ret_023 = x_023
    ret_01 = y_01
    ret_013 = x_013
    ret_012 = x_012
    return MultiVectorAll(; e23 = ret_23, e13 = ret_13, e12 = ret_12, e123 = ret_123, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012)
end
function Base.:+(x::MultiVector3, y::MultiVector3)
    x_123 = x.e123
    x_023 = x.e023
    x_013 = x.e013
    x_012 = x.e012
    y_123 = y.e123
    y_023 = y.e023
    y_013 = y.e013
    y_012 = y.e012
    ret_123 = (+)(x_123, y_123)
    ret_023 = (+)(x_023, y_023)
    ret_013 = (+)(x_013, y_013)
    ret_012 = (+)(x_012, y_012)
    return MultiVector3(; e123 = ret_123, e023 = ret_023, e013 = ret_013, e012 = ret_012)
end
function Base.:+(x::MultiVector3, y::MultiVector4)
    x_123 = x.e123
    x_023 = x.e023
    x_013 = x.e013
    x_012 = x.e012
    y_0123 = y.e0123
    ret_123 = x_123
    ret_023 = x_023
    ret_013 = x_013
    ret_012 = x_012
    ret_0123 = y_0123
    return MultiVectorAll(; e123 = ret_123, e023 = ret_023, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function Base.:+(x::MultiVector3, y::MultiVectorZero)
    x_123 = x.e123
    x_023 = x.e023
    x_013 = x.e013
    x_012 = x.e012
    ret_123 = x_123
    ret_023 = x_023
    ret_013 = x_013
    ret_012 = x_012
    return MultiVector3(; e123 = ret_123, e023 = ret_023, e013 = ret_013, e012 = ret_012)
end
function Base.:+(x::MultiVector4, y::MultiVectorAll)
    x_0123 = x.e0123
    y_ = y.e
    y_3 = y.e3
    y_2 = y.e2
    y_23 = y.e23
    y_1 = y.e1
    y_13 = y.e13
    y_12 = y.e12
    y_123 = y.e123
    y_0 = y.e0
    y_03 = y.e03
    y_02 = y.e02
    y_023 = y.e023
    y_01 = y.e01
    y_013 = y.e013
    y_012 = y.e012
    y_0123 = y.e0123
    ret_ = y_
    ret_3 = y_3
    ret_2 = y_2
    ret_23 = y_23
    ret_1 = y_1
    ret_13 = y_13
    ret_12 = y_12
    ret_123 = y_123
    ret_0 = y_0
    ret_03 = y_03
    ret_02 = y_02
    ret_023 = y_023
    ret_01 = y_01
    ret_013 = y_013
    ret_012 = y_012
    ret_0123 = (+)(x_0123, y_0123)
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function Base.:+(x::MultiVector4, y::MultiVectorEven)
    x_0123 = x.e0123
    y_ = y.e
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    y_0123 = y.e0123
    ret_ = y_
    ret_23 = y_23
    ret_13 = y_13
    ret_12 = y_12
    ret_03 = y_03
    ret_02 = y_02
    ret_01 = y_01
    ret_0123 = (+)(x_0123, y_0123)
    return MultiVectorEven(; e = ret_, e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01, e0123 = ret_0123)
end
function Base.:+(x::MultiVector4, y::MultiVector0)
    x_0123 = x.e0123
    y_ = y.e
    ret_ = y_
    ret_0123 = x_0123
    return MultiVectorEven(; e = ret_, e0123 = ret_0123)
end
function Base.:+(x::MultiVector4, y::MultiVector1)
    x_0123 = x.e0123
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    y_0 = y.e0
    ret_3 = y_3
    ret_2 = y_2
    ret_1 = y_1
    ret_0 = y_0
    ret_0123 = x_0123
    return MultiVectorAll(; e3 = ret_3, e2 = ret_2, e1 = ret_1, e0 = ret_0, e0123 = ret_0123)
end
function Base.:+(x::MultiVector4, y::MultiVector2)
    x_0123 = x.e0123
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    ret_23 = y_23
    ret_13 = y_13
    ret_12 = y_12
    ret_03 = y_03
    ret_02 = y_02
    ret_01 = y_01
    ret_0123 = x_0123
    return MultiVectorEven(; e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01, e0123 = ret_0123)
end
function Base.:+(x::MultiVector4, y::MultiVector3)
    x_0123 = x.e0123
    y_123 = y.e123
    y_023 = y.e023
    y_013 = y.e013
    y_012 = y.e012
    ret_123 = y_123
    ret_023 = y_023
    ret_013 = y_013
    ret_012 = y_012
    ret_0123 = x_0123
    return MultiVectorAll(; e123 = ret_123, e023 = ret_023, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function Base.:+(x::MultiVector4, y::MultiVector4)
    x_0123 = x.e0123
    y_0123 = y.e0123
    ret_0123 = (+)(x_0123, y_0123)
    return MultiVector4(; e0123 = ret_0123)
end
function Base.:+(x::MultiVector4, y::MultiVectorZero)
    x_0123 = x.e0123
    ret_0123 = x_0123
    return MultiVector4(; e0123 = ret_0123)
end
function Base.:+(x::MultiVectorZero, y::MultiVectorAll)
    y_ = y.e
    y_3 = y.e3
    y_2 = y.e2
    y_23 = y.e23
    y_1 = y.e1
    y_13 = y.e13
    y_12 = y.e12
    y_123 = y.e123
    y_0 = y.e0
    y_03 = y.e03
    y_02 = y.e02
    y_023 = y.e023
    y_01 = y.e01
    y_013 = y.e013
    y_012 = y.e012
    y_0123 = y.e0123
    ret_ = y_
    ret_3 = y_3
    ret_2 = y_2
    ret_23 = y_23
    ret_1 = y_1
    ret_13 = y_13
    ret_12 = y_12
    ret_123 = y_123
    ret_0 = y_0
    ret_03 = y_03
    ret_02 = y_02
    ret_023 = y_023
    ret_01 = y_01
    ret_013 = y_013
    ret_012 = y_012
    ret_0123 = y_0123
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function Base.:+(x::MultiVectorZero, y::MultiVectorEven)
    y_ = y.e
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    y_0123 = y.e0123
    ret_ = y_
    ret_23 = y_23
    ret_13 = y_13
    ret_12 = y_12
    ret_03 = y_03
    ret_02 = y_02
    ret_01 = y_01
    ret_0123 = y_0123
    return MultiVectorEven(; e = ret_, e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01, e0123 = ret_0123)
end
function Base.:+(x::MultiVectorZero, y::MultiVector0)
    y_ = y.e
    ret_ = y_
    return MultiVector0(; e = ret_)
end
function Base.:+(x::MultiVectorZero, y::MultiVector1)
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    y_0 = y.e0
    ret_3 = y_3
    ret_2 = y_2
    ret_1 = y_1
    ret_0 = y_0
    return MultiVector1(; e3 = ret_3, e2 = ret_2, e1 = ret_1, e0 = ret_0)
end
function Base.:+(x::MultiVectorZero, y::MultiVector2)
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    ret_23 = y_23
    ret_13 = y_13
    ret_12 = y_12
    ret_03 = y_03
    ret_02 = y_02
    ret_01 = y_01
    return MultiVector2(; e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01)
end
function Base.:+(x::MultiVectorZero, y::MultiVector3)
    y_123 = y.e123
    y_023 = y.e023
    y_013 = y.e013
    y_012 = y.e012
    ret_123 = y_123
    ret_023 = y_023
    ret_013 = y_013
    ret_012 = y_012
    return MultiVector3(; e123 = ret_123, e023 = ret_023, e013 = ret_013, e012 = ret_012)
end
function Base.:+(x::MultiVectorZero, y::MultiVector4)
    y_0123 = y.e0123
    ret_0123 = y_0123
    return MultiVector4(; e0123 = ret_0123)
end
function Base.:+(x::MultiVectorZero, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function Base.:-(x::MultiVectorAll, y::MultiVectorAll)
    x_ = x.e
    x_3 = x.e3
    x_2 = x.e2
    x_23 = x.e23
    x_1 = x.e1
    x_13 = x.e13
    x_12 = x.e12
    x_123 = x.e123
    x_0 = x.e0
    x_03 = x.e03
    x_02 = x.e02
    x_023 = x.e023
    x_01 = x.e01
    x_013 = x.e013
    x_012 = x.e012
    x_0123 = x.e0123
    y_ = y.e
    y_3 = y.e3
    y_2 = y.e2
    y_23 = y.e23
    y_1 = y.e1
    y_13 = y.e13
    y_12 = y.e12
    y_123 = y.e123
    y_0 = y.e0
    y_03 = y.e03
    y_02 = y.e02
    y_023 = y.e023
    y_01 = y.e01
    y_013 = y.e013
    y_012 = y.e012
    y_0123 = y.e0123
    ret_ = (+)(x_, (*)(-1, y_))
    ret_3 = (+)(x_3, (*)(-1, y_3))
    ret_2 = (+)(x_2, (*)(-1, y_2))
    ret_23 = (+)(x_23, (*)(-1, y_23))
    ret_1 = (+)(x_1, (*)(-1, y_1))
    ret_13 = (+)(x_13, (*)(-1, y_13))
    ret_12 = (+)(x_12, (*)(-1, y_12))
    ret_123 = (+)(x_123, (*)(-1, y_123))
    ret_0 = (+)(x_0, (*)(-1, y_0))
    ret_03 = (+)(x_03, (*)(-1, y_03))
    ret_02 = (+)(x_02, (*)(-1, y_02))
    ret_023 = (+)(x_023, (*)(-1, y_023))
    ret_01 = (+)(x_01, (*)(-1, y_01))
    ret_013 = (+)(x_013, (*)(-1, y_013))
    ret_012 = (+)(x_012, (*)(-1, y_012))
    ret_0123 = (+)(x_0123, (*)(-1, y_0123))
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function Base.:-(x::MultiVectorAll, y::MultiVectorEven)
    x_ = x.e
    x_3 = x.e3
    x_2 = x.e2
    x_23 = x.e23
    x_1 = x.e1
    x_13 = x.e13
    x_12 = x.e12
    x_123 = x.e123
    x_0 = x.e0
    x_03 = x.e03
    x_02 = x.e02
    x_023 = x.e023
    x_01 = x.e01
    x_013 = x.e013
    x_012 = x.e012
    x_0123 = x.e0123
    y_ = y.e
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    y_0123 = y.e0123
    ret_ = (+)(x_, (*)(-1, y_))
    ret_3 = x_3
    ret_2 = x_2
    ret_23 = (+)(x_23, (*)(-1, y_23))
    ret_1 = x_1
    ret_13 = (+)(x_13, (*)(-1, y_13))
    ret_12 = (+)(x_12, (*)(-1, y_12))
    ret_123 = x_123
    ret_0 = x_0
    ret_03 = (+)(x_03, (*)(-1, y_03))
    ret_02 = (+)(x_02, (*)(-1, y_02))
    ret_023 = x_023
    ret_01 = (+)(x_01, (*)(-1, y_01))
    ret_013 = x_013
    ret_012 = x_012
    ret_0123 = (+)(x_0123, (*)(-1, y_0123))
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function Base.:-(x::MultiVectorAll, y::MultiVector0)
    x_ = x.e
    x_3 = x.e3
    x_2 = x.e2
    x_23 = x.e23
    x_1 = x.e1
    x_13 = x.e13
    x_12 = x.e12
    x_123 = x.e123
    x_0 = x.e0
    x_03 = x.e03
    x_02 = x.e02
    x_023 = x.e023
    x_01 = x.e01
    x_013 = x.e013
    x_012 = x.e012
    x_0123 = x.e0123
    y_ = y.e
    ret_ = (+)(x_, (*)(-1, y_))
    ret_3 = x_3
    ret_2 = x_2
    ret_23 = x_23
    ret_1 = x_1
    ret_13 = x_13
    ret_12 = x_12
    ret_123 = x_123
    ret_0 = x_0
    ret_03 = x_03
    ret_02 = x_02
    ret_023 = x_023
    ret_01 = x_01
    ret_013 = x_013
    ret_012 = x_012
    ret_0123 = x_0123
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function Base.:-(x::MultiVectorAll, y::MultiVector1)
    x_ = x.e
    x_3 = x.e3
    x_2 = x.e2
    x_23 = x.e23
    x_1 = x.e1
    x_13 = x.e13
    x_12 = x.e12
    x_123 = x.e123
    x_0 = x.e0
    x_03 = x.e03
    x_02 = x.e02
    x_023 = x.e023
    x_01 = x.e01
    x_013 = x.e013
    x_012 = x.e012
    x_0123 = x.e0123
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    y_0 = y.e0
    ret_ = x_
    ret_3 = (+)(x_3, (*)(-1, y_3))
    ret_2 = (+)(x_2, (*)(-1, y_2))
    ret_23 = x_23
    ret_1 = (+)(x_1, (*)(-1, y_1))
    ret_13 = x_13
    ret_12 = x_12
    ret_123 = x_123
    ret_0 = (+)(x_0, (*)(-1, y_0))
    ret_03 = x_03
    ret_02 = x_02
    ret_023 = x_023
    ret_01 = x_01
    ret_013 = x_013
    ret_012 = x_012
    ret_0123 = x_0123
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function Base.:-(x::MultiVectorAll, y::MultiVector2)
    x_ = x.e
    x_3 = x.e3
    x_2 = x.e2
    x_23 = x.e23
    x_1 = x.e1
    x_13 = x.e13
    x_12 = x.e12
    x_123 = x.e123
    x_0 = x.e0
    x_03 = x.e03
    x_02 = x.e02
    x_023 = x.e023
    x_01 = x.e01
    x_013 = x.e013
    x_012 = x.e012
    x_0123 = x.e0123
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    ret_ = x_
    ret_3 = x_3
    ret_2 = x_2
    ret_23 = (+)(x_23, (*)(-1, y_23))
    ret_1 = x_1
    ret_13 = (+)(x_13, (*)(-1, y_13))
    ret_12 = (+)(x_12, (*)(-1, y_12))
    ret_123 = x_123
    ret_0 = x_0
    ret_03 = (+)(x_03, (*)(-1, y_03))
    ret_02 = (+)(x_02, (*)(-1, y_02))
    ret_023 = x_023
    ret_01 = (+)(x_01, (*)(-1, y_01))
    ret_013 = x_013
    ret_012 = x_012
    ret_0123 = x_0123
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function Base.:-(x::MultiVectorAll, y::MultiVector3)
    x_ = x.e
    x_3 = x.e3
    x_2 = x.e2
    x_23 = x.e23
    x_1 = x.e1
    x_13 = x.e13
    x_12 = x.e12
    x_123 = x.e123
    x_0 = x.e0
    x_03 = x.e03
    x_02 = x.e02
    x_023 = x.e023
    x_01 = x.e01
    x_013 = x.e013
    x_012 = x.e012
    x_0123 = x.e0123
    y_123 = y.e123
    y_023 = y.e023
    y_013 = y.e013
    y_012 = y.e012
    ret_ = x_
    ret_3 = x_3
    ret_2 = x_2
    ret_23 = x_23
    ret_1 = x_1
    ret_13 = x_13
    ret_12 = x_12
    ret_123 = (+)(x_123, (*)(-1, y_123))
    ret_0 = x_0
    ret_03 = x_03
    ret_02 = x_02
    ret_023 = (+)(x_023, (*)(-1, y_023))
    ret_01 = x_01
    ret_013 = (+)(x_013, (*)(-1, y_013))
    ret_012 = (+)(x_012, (*)(-1, y_012))
    ret_0123 = x_0123
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function Base.:-(x::MultiVectorAll, y::MultiVector4)
    x_ = x.e
    x_3 = x.e3
    x_2 = x.e2
    x_23 = x.e23
    x_1 = x.e1
    x_13 = x.e13
    x_12 = x.e12
    x_123 = x.e123
    x_0 = x.e0
    x_03 = x.e03
    x_02 = x.e02
    x_023 = x.e023
    x_01 = x.e01
    x_013 = x.e013
    x_012 = x.e012
    x_0123 = x.e0123
    y_0123 = y.e0123
    ret_ = x_
    ret_3 = x_3
    ret_2 = x_2
    ret_23 = x_23
    ret_1 = x_1
    ret_13 = x_13
    ret_12 = x_12
    ret_123 = x_123
    ret_0 = x_0
    ret_03 = x_03
    ret_02 = x_02
    ret_023 = x_023
    ret_01 = x_01
    ret_013 = x_013
    ret_012 = x_012
    ret_0123 = (+)(x_0123, (*)(-1, y_0123))
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function Base.:-(x::MultiVectorAll, y::MultiVectorZero)
    x_ = x.e
    x_3 = x.e3
    x_2 = x.e2
    x_23 = x.e23
    x_1 = x.e1
    x_13 = x.e13
    x_12 = x.e12
    x_123 = x.e123
    x_0 = x.e0
    x_03 = x.e03
    x_02 = x.e02
    x_023 = x.e023
    x_01 = x.e01
    x_013 = x.e013
    x_012 = x.e012
    x_0123 = x.e0123
    ret_ = x_
    ret_3 = x_3
    ret_2 = x_2
    ret_23 = x_23
    ret_1 = x_1
    ret_13 = x_13
    ret_12 = x_12
    ret_123 = x_123
    ret_0 = x_0
    ret_03 = x_03
    ret_02 = x_02
    ret_023 = x_023
    ret_01 = x_01
    ret_013 = x_013
    ret_012 = x_012
    ret_0123 = x_0123
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function Base.:-(x::MultiVectorEven, y::MultiVectorAll)
    x_ = x.e
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    x_0123 = x.e0123
    y_ = y.e
    y_3 = y.e3
    y_2 = y.e2
    y_23 = y.e23
    y_1 = y.e1
    y_13 = y.e13
    y_12 = y.e12
    y_123 = y.e123
    y_0 = y.e0
    y_03 = y.e03
    y_02 = y.e02
    y_023 = y.e023
    y_01 = y.e01
    y_013 = y.e013
    y_012 = y.e012
    y_0123 = y.e0123
    ret_ = (+)(x_, (*)(-1, y_))
    ret_3 = y_3
    ret_2 = y_2
    ret_23 = (+)(x_23, (*)(-1, y_23))
    ret_1 = y_1
    ret_13 = (+)(x_13, (*)(-1, y_13))
    ret_12 = (+)(x_12, (*)(-1, y_12))
    ret_123 = y_123
    ret_0 = y_0
    ret_03 = (+)(x_03, (*)(-1, y_03))
    ret_02 = (+)(x_02, (*)(-1, y_02))
    ret_023 = y_023
    ret_01 = (+)(x_01, (*)(-1, y_01))
    ret_013 = y_013
    ret_012 = y_012
    ret_0123 = (+)(x_0123, (*)(-1, y_0123))
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function Base.:-(x::MultiVectorEven, y::MultiVectorEven)
    x_ = x.e
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    x_0123 = x.e0123
    y_ = y.e
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    y_0123 = y.e0123
    ret_ = (+)(x_, (*)(-1, y_))
    ret_23 = (+)(x_23, (*)(-1, y_23))
    ret_13 = (+)(x_13, (*)(-1, y_13))
    ret_12 = (+)(x_12, (*)(-1, y_12))
    ret_03 = (+)(x_03, (*)(-1, y_03))
    ret_02 = (+)(x_02, (*)(-1, y_02))
    ret_01 = (+)(x_01, (*)(-1, y_01))
    ret_0123 = (+)(x_0123, (*)(-1, y_0123))
    return MultiVectorEven(; e = ret_, e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01, e0123 = ret_0123)
end
function Base.:-(x::MultiVectorEven, y::MultiVector0)
    x_ = x.e
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    x_0123 = x.e0123
    y_ = y.e
    ret_ = (+)(x_, (*)(-1, y_))
    ret_23 = x_23
    ret_13 = x_13
    ret_12 = x_12
    ret_03 = x_03
    ret_02 = x_02
    ret_01 = x_01
    ret_0123 = x_0123
    return MultiVectorEven(; e = ret_, e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01, e0123 = ret_0123)
end
function Base.:-(x::MultiVectorEven, y::MultiVector1)
    x_ = x.e
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    x_0123 = x.e0123
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    y_0 = y.e0
    ret_ = x_
    ret_3 = y_3
    ret_2 = y_2
    ret_23 = x_23
    ret_1 = y_1
    ret_13 = x_13
    ret_12 = x_12
    ret_0 = y_0
    ret_03 = x_03
    ret_02 = x_02
    ret_01 = x_01
    ret_0123 = x_0123
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e0 = ret_0, e03 = ret_03, e02 = ret_02, e01 = ret_01, e0123 = ret_0123)
end
function Base.:-(x::MultiVectorEven, y::MultiVector2)
    x_ = x.e
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    x_0123 = x.e0123
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    ret_ = x_
    ret_23 = (+)(x_23, (*)(-1, y_23))
    ret_13 = (+)(x_13, (*)(-1, y_13))
    ret_12 = (+)(x_12, (*)(-1, y_12))
    ret_03 = (+)(x_03, (*)(-1, y_03))
    ret_02 = (+)(x_02, (*)(-1, y_02))
    ret_01 = (+)(x_01, (*)(-1, y_01))
    ret_0123 = x_0123
    return MultiVectorEven(; e = ret_, e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01, e0123 = ret_0123)
end
function Base.:-(x::MultiVectorEven, y::MultiVector3)
    x_ = x.e
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    x_0123 = x.e0123
    y_123 = y.e123
    y_023 = y.e023
    y_013 = y.e013
    y_012 = y.e012
    ret_ = x_
    ret_23 = x_23
    ret_13 = x_13
    ret_12 = x_12
    ret_123 = y_123
    ret_03 = x_03
    ret_02 = x_02
    ret_023 = y_023
    ret_01 = x_01
    ret_013 = y_013
    ret_012 = y_012
    ret_0123 = x_0123
    return MultiVectorAll(; e = ret_, e23 = ret_23, e13 = ret_13, e12 = ret_12, e123 = ret_123, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function Base.:-(x::MultiVectorEven, y::MultiVector4)
    x_ = x.e
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    x_0123 = x.e0123
    y_0123 = y.e0123
    ret_ = x_
    ret_23 = x_23
    ret_13 = x_13
    ret_12 = x_12
    ret_03 = x_03
    ret_02 = x_02
    ret_01 = x_01
    ret_0123 = (+)(x_0123, (*)(-1, y_0123))
    return MultiVectorEven(; e = ret_, e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01, e0123 = ret_0123)
end
function Base.:-(x::MultiVectorEven, y::MultiVectorZero)
    x_ = x.e
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    x_0123 = x.e0123
    ret_ = x_
    ret_23 = x_23
    ret_13 = x_13
    ret_12 = x_12
    ret_03 = x_03
    ret_02 = x_02
    ret_01 = x_01
    ret_0123 = x_0123
    return MultiVectorEven(; e = ret_, e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01, e0123 = ret_0123)
end
function Base.:-(x::MultiVector0, y::MultiVectorAll)
    x_ = x.e
    y_ = y.e
    y_3 = y.e3
    y_2 = y.e2
    y_23 = y.e23
    y_1 = y.e1
    y_13 = y.e13
    y_12 = y.e12
    y_123 = y.e123
    y_0 = y.e0
    y_03 = y.e03
    y_02 = y.e02
    y_023 = y.e023
    y_01 = y.e01
    y_013 = y.e013
    y_012 = y.e012
    y_0123 = y.e0123
    ret_ = (+)(x_, (*)(-1, y_))
    ret_3 = y_3
    ret_2 = y_2
    ret_23 = y_23
    ret_1 = y_1
    ret_13 = y_13
    ret_12 = y_12
    ret_123 = y_123
    ret_0 = y_0
    ret_03 = y_03
    ret_02 = y_02
    ret_023 = y_023
    ret_01 = y_01
    ret_013 = y_013
    ret_012 = y_012
    ret_0123 = y_0123
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function Base.:-(x::MultiVector0, y::MultiVectorEven)
    x_ = x.e
    y_ = y.e
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    y_0123 = y.e0123
    ret_ = (+)(x_, (*)(-1, y_))
    ret_23 = y_23
    ret_13 = y_13
    ret_12 = y_12
    ret_03 = y_03
    ret_02 = y_02
    ret_01 = y_01
    ret_0123 = y_0123
    return MultiVectorEven(; e = ret_, e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01, e0123 = ret_0123)
end
function Base.:-(x::MultiVector0, y::MultiVector0)
    x_ = x.e
    y_ = y.e
    ret_ = (+)(x_, (*)(-1, y_))
    return MultiVector0(; e = ret_)
end
function Base.:-(x::MultiVector0, y::MultiVector1)
    x_ = x.e
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    y_0 = y.e0
    ret_ = x_
    ret_3 = y_3
    ret_2 = y_2
    ret_1 = y_1
    ret_0 = y_0
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e1 = ret_1, e0 = ret_0)
end
function Base.:-(x::MultiVector0, y::MultiVector2)
    x_ = x.e
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    ret_ = x_
    ret_23 = y_23
    ret_13 = y_13
    ret_12 = y_12
    ret_03 = y_03
    ret_02 = y_02
    ret_01 = y_01
    return MultiVectorEven(; e = ret_, e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01)
end
function Base.:-(x::MultiVector0, y::MultiVector3)
    x_ = x.e
    y_123 = y.e123
    y_023 = y.e023
    y_013 = y.e013
    y_012 = y.e012
    ret_ = x_
    ret_123 = y_123
    ret_023 = y_023
    ret_013 = y_013
    ret_012 = y_012
    return MultiVectorAll(; e = ret_, e123 = ret_123, e023 = ret_023, e013 = ret_013, e012 = ret_012)
end
function Base.:-(x::MultiVector0, y::MultiVector4)
    x_ = x.e
    y_0123 = y.e0123
    ret_ = x_
    ret_0123 = y_0123
    return MultiVectorEven(; e = ret_, e0123 = ret_0123)
end
function Base.:-(x::MultiVector0, y::MultiVectorZero)
    x_ = x.e
    ret_ = x_
    return MultiVector0(; e = ret_)
end
function Base.:-(x::MultiVector1, y::MultiVectorAll)
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    x_0 = x.e0
    y_ = y.e
    y_3 = y.e3
    y_2 = y.e2
    y_23 = y.e23
    y_1 = y.e1
    y_13 = y.e13
    y_12 = y.e12
    y_123 = y.e123
    y_0 = y.e0
    y_03 = y.e03
    y_02 = y.e02
    y_023 = y.e023
    y_01 = y.e01
    y_013 = y.e013
    y_012 = y.e012
    y_0123 = y.e0123
    ret_ = y_
    ret_3 = (+)(x_3, (*)(-1, y_3))
    ret_2 = (+)(x_2, (*)(-1, y_2))
    ret_23 = y_23
    ret_1 = (+)(x_1, (*)(-1, y_1))
    ret_13 = y_13
    ret_12 = y_12
    ret_123 = y_123
    ret_0 = (+)(x_0, (*)(-1, y_0))
    ret_03 = y_03
    ret_02 = y_02
    ret_023 = y_023
    ret_01 = y_01
    ret_013 = y_013
    ret_012 = y_012
    ret_0123 = y_0123
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function Base.:-(x::MultiVector1, y::MultiVectorEven)
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    x_0 = x.e0
    y_ = y.e
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    y_0123 = y.e0123
    ret_ = y_
    ret_3 = x_3
    ret_2 = x_2
    ret_23 = y_23
    ret_1 = x_1
    ret_13 = y_13
    ret_12 = y_12
    ret_0 = x_0
    ret_03 = y_03
    ret_02 = y_02
    ret_01 = y_01
    ret_0123 = y_0123
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e0 = ret_0, e03 = ret_03, e02 = ret_02, e01 = ret_01, e0123 = ret_0123)
end
function Base.:-(x::MultiVector1, y::MultiVector0)
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    x_0 = x.e0
    y_ = y.e
    ret_ = y_
    ret_3 = x_3
    ret_2 = x_2
    ret_1 = x_1
    ret_0 = x_0
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e1 = ret_1, e0 = ret_0)
end
function Base.:-(x::MultiVector1, y::MultiVector1)
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    x_0 = x.e0
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    y_0 = y.e0
    ret_3 = (+)(x_3, (*)(-1, y_3))
    ret_2 = (+)(x_2, (*)(-1, y_2))
    ret_1 = (+)(x_1, (*)(-1, y_1))
    ret_0 = (+)(x_0, (*)(-1, y_0))
    return MultiVector1(; e3 = ret_3, e2 = ret_2, e1 = ret_1, e0 = ret_0)
end
function Base.:-(x::MultiVector1, y::MultiVector2)
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    x_0 = x.e0
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    ret_3 = x_3
    ret_2 = x_2
    ret_23 = y_23
    ret_1 = x_1
    ret_13 = y_13
    ret_12 = y_12
    ret_0 = x_0
    ret_03 = y_03
    ret_02 = y_02
    ret_01 = y_01
    return MultiVectorAll(; e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e0 = ret_0, e03 = ret_03, e02 = ret_02, e01 = ret_01)
end
function Base.:-(x::MultiVector1, y::MultiVector3)
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    x_0 = x.e0
    y_123 = y.e123
    y_023 = y.e023
    y_013 = y.e013
    y_012 = y.e012
    ret_3 = x_3
    ret_2 = x_2
    ret_1 = x_1
    ret_123 = y_123
    ret_0 = x_0
    ret_023 = y_023
    ret_013 = y_013
    ret_012 = y_012
    return MultiVectorAll(; e3 = ret_3, e2 = ret_2, e1 = ret_1, e123 = ret_123, e0 = ret_0, e023 = ret_023, e013 = ret_013, e012 = ret_012)
end
function Base.:-(x::MultiVector1, y::MultiVector4)
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    x_0 = x.e0
    y_0123 = y.e0123
    ret_3 = x_3
    ret_2 = x_2
    ret_1 = x_1
    ret_0 = x_0
    ret_0123 = y_0123
    return MultiVectorAll(; e3 = ret_3, e2 = ret_2, e1 = ret_1, e0 = ret_0, e0123 = ret_0123)
end
function Base.:-(x::MultiVector1, y::MultiVectorZero)
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    x_0 = x.e0
    ret_3 = x_3
    ret_2 = x_2
    ret_1 = x_1
    ret_0 = x_0
    return MultiVector1(; e3 = ret_3, e2 = ret_2, e1 = ret_1, e0 = ret_0)
end
function Base.:-(x::MultiVector2, y::MultiVectorAll)
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    y_ = y.e
    y_3 = y.e3
    y_2 = y.e2
    y_23 = y.e23
    y_1 = y.e1
    y_13 = y.e13
    y_12 = y.e12
    y_123 = y.e123
    y_0 = y.e0
    y_03 = y.e03
    y_02 = y.e02
    y_023 = y.e023
    y_01 = y.e01
    y_013 = y.e013
    y_012 = y.e012
    y_0123 = y.e0123
    ret_ = y_
    ret_3 = y_3
    ret_2 = y_2
    ret_23 = (+)(x_23, (*)(-1, y_23))
    ret_1 = y_1
    ret_13 = (+)(x_13, (*)(-1, y_13))
    ret_12 = (+)(x_12, (*)(-1, y_12))
    ret_123 = y_123
    ret_0 = y_0
    ret_03 = (+)(x_03, (*)(-1, y_03))
    ret_02 = (+)(x_02, (*)(-1, y_02))
    ret_023 = y_023
    ret_01 = (+)(x_01, (*)(-1, y_01))
    ret_013 = y_013
    ret_012 = y_012
    ret_0123 = y_0123
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function Base.:-(x::MultiVector2, y::MultiVectorEven)
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    y_ = y.e
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    y_0123 = y.e0123
    ret_ = y_
    ret_23 = (+)(x_23, (*)(-1, y_23))
    ret_13 = (+)(x_13, (*)(-1, y_13))
    ret_12 = (+)(x_12, (*)(-1, y_12))
    ret_03 = (+)(x_03, (*)(-1, y_03))
    ret_02 = (+)(x_02, (*)(-1, y_02))
    ret_01 = (+)(x_01, (*)(-1, y_01))
    ret_0123 = y_0123
    return MultiVectorEven(; e = ret_, e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01, e0123 = ret_0123)
end
function Base.:-(x::MultiVector2, y::MultiVector0)
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    y_ = y.e
    ret_ = y_
    ret_23 = x_23
    ret_13 = x_13
    ret_12 = x_12
    ret_03 = x_03
    ret_02 = x_02
    ret_01 = x_01
    return MultiVectorEven(; e = ret_, e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01)
end
function Base.:-(x::MultiVector2, y::MultiVector1)
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    y_0 = y.e0
    ret_3 = y_3
    ret_2 = y_2
    ret_23 = x_23
    ret_1 = y_1
    ret_13 = x_13
    ret_12 = x_12
    ret_0 = y_0
    ret_03 = x_03
    ret_02 = x_02
    ret_01 = x_01
    return MultiVectorAll(; e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e0 = ret_0, e03 = ret_03, e02 = ret_02, e01 = ret_01)
end
function Base.:-(x::MultiVector2, y::MultiVector2)
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    ret_23 = (+)(x_23, (*)(-1, y_23))
    ret_13 = (+)(x_13, (*)(-1, y_13))
    ret_12 = (+)(x_12, (*)(-1, y_12))
    ret_03 = (+)(x_03, (*)(-1, y_03))
    ret_02 = (+)(x_02, (*)(-1, y_02))
    ret_01 = (+)(x_01, (*)(-1, y_01))
    return MultiVector2(; e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01)
end
function Base.:-(x::MultiVector2, y::MultiVector3)
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    y_123 = y.e123
    y_023 = y.e023
    y_013 = y.e013
    y_012 = y.e012
    ret_23 = x_23
    ret_13 = x_13
    ret_12 = x_12
    ret_123 = y_123
    ret_03 = x_03
    ret_02 = x_02
    ret_023 = y_023
    ret_01 = x_01
    ret_013 = y_013
    ret_012 = y_012
    return MultiVectorAll(; e23 = ret_23, e13 = ret_13, e12 = ret_12, e123 = ret_123, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012)
end
function Base.:-(x::MultiVector2, y::MultiVector4)
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    y_0123 = y.e0123
    ret_23 = x_23
    ret_13 = x_13
    ret_12 = x_12
    ret_03 = x_03
    ret_02 = x_02
    ret_01 = x_01
    ret_0123 = y_0123
    return MultiVectorEven(; e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01, e0123 = ret_0123)
end
function Base.:-(x::MultiVector2, y::MultiVectorZero)
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    ret_23 = x_23
    ret_13 = x_13
    ret_12 = x_12
    ret_03 = x_03
    ret_02 = x_02
    ret_01 = x_01
    return MultiVector2(; e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01)
end
function Base.:-(x::MultiVector3, y::MultiVectorAll)
    x_123 = x.e123
    x_023 = x.e023
    x_013 = x.e013
    x_012 = x.e012
    y_ = y.e
    y_3 = y.e3
    y_2 = y.e2
    y_23 = y.e23
    y_1 = y.e1
    y_13 = y.e13
    y_12 = y.e12
    y_123 = y.e123
    y_0 = y.e0
    y_03 = y.e03
    y_02 = y.e02
    y_023 = y.e023
    y_01 = y.e01
    y_013 = y.e013
    y_012 = y.e012
    y_0123 = y.e0123
    ret_ = y_
    ret_3 = y_3
    ret_2 = y_2
    ret_23 = y_23
    ret_1 = y_1
    ret_13 = y_13
    ret_12 = y_12
    ret_123 = (+)(x_123, (*)(-1, y_123))
    ret_0 = y_0
    ret_03 = y_03
    ret_02 = y_02
    ret_023 = (+)(x_023, (*)(-1, y_023))
    ret_01 = y_01
    ret_013 = (+)(x_013, (*)(-1, y_013))
    ret_012 = (+)(x_012, (*)(-1, y_012))
    ret_0123 = y_0123
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function Base.:-(x::MultiVector3, y::MultiVectorEven)
    x_123 = x.e123
    x_023 = x.e023
    x_013 = x.e013
    x_012 = x.e012
    y_ = y.e
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    y_0123 = y.e0123
    ret_ = y_
    ret_23 = y_23
    ret_13 = y_13
    ret_12 = y_12
    ret_123 = x_123
    ret_03 = y_03
    ret_02 = y_02
    ret_023 = x_023
    ret_01 = y_01
    ret_013 = x_013
    ret_012 = x_012
    ret_0123 = y_0123
    return MultiVectorAll(; e = ret_, e23 = ret_23, e13 = ret_13, e12 = ret_12, e123 = ret_123, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function Base.:-(x::MultiVector3, y::MultiVector0)
    x_123 = x.e123
    x_023 = x.e023
    x_013 = x.e013
    x_012 = x.e012
    y_ = y.e
    ret_ = y_
    ret_123 = x_123
    ret_023 = x_023
    ret_013 = x_013
    ret_012 = x_012
    return MultiVectorAll(; e = ret_, e123 = ret_123, e023 = ret_023, e013 = ret_013, e012 = ret_012)
end
function Base.:-(x::MultiVector3, y::MultiVector1)
    x_123 = x.e123
    x_023 = x.e023
    x_013 = x.e013
    x_012 = x.e012
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    y_0 = y.e0
    ret_3 = y_3
    ret_2 = y_2
    ret_1 = y_1
    ret_123 = x_123
    ret_0 = y_0
    ret_023 = x_023
    ret_013 = x_013
    ret_012 = x_012
    return MultiVectorAll(; e3 = ret_3, e2 = ret_2, e1 = ret_1, e123 = ret_123, e0 = ret_0, e023 = ret_023, e013 = ret_013, e012 = ret_012)
end
function Base.:-(x::MultiVector3, y::MultiVector2)
    x_123 = x.e123
    x_023 = x.e023
    x_013 = x.e013
    x_012 = x.e012
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    ret_23 = y_23
    ret_13 = y_13
    ret_12 = y_12
    ret_123 = x_123
    ret_03 = y_03
    ret_02 = y_02
    ret_023 = x_023
    ret_01 = y_01
    ret_013 = x_013
    ret_012 = x_012
    return MultiVectorAll(; e23 = ret_23, e13 = ret_13, e12 = ret_12, e123 = ret_123, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012)
end
function Base.:-(x::MultiVector3, y::MultiVector3)
    x_123 = x.e123
    x_023 = x.e023
    x_013 = x.e013
    x_012 = x.e012
    y_123 = y.e123
    y_023 = y.e023
    y_013 = y.e013
    y_012 = y.e012
    ret_123 = (+)(x_123, (*)(-1, y_123))
    ret_023 = (+)(x_023, (*)(-1, y_023))
    ret_013 = (+)(x_013, (*)(-1, y_013))
    ret_012 = (+)(x_012, (*)(-1, y_012))
    return MultiVector3(; e123 = ret_123, e023 = ret_023, e013 = ret_013, e012 = ret_012)
end
function Base.:-(x::MultiVector3, y::MultiVector4)
    x_123 = x.e123
    x_023 = x.e023
    x_013 = x.e013
    x_012 = x.e012
    y_0123 = y.e0123
    ret_123 = x_123
    ret_023 = x_023
    ret_013 = x_013
    ret_012 = x_012
    ret_0123 = y_0123
    return MultiVectorAll(; e123 = ret_123, e023 = ret_023, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function Base.:-(x::MultiVector3, y::MultiVectorZero)
    x_123 = x.e123
    x_023 = x.e023
    x_013 = x.e013
    x_012 = x.e012
    ret_123 = x_123
    ret_023 = x_023
    ret_013 = x_013
    ret_012 = x_012
    return MultiVector3(; e123 = ret_123, e023 = ret_023, e013 = ret_013, e012 = ret_012)
end
function Base.:-(x::MultiVector4, y::MultiVectorAll)
    x_0123 = x.e0123
    y_ = y.e
    y_3 = y.e3
    y_2 = y.e2
    y_23 = y.e23
    y_1 = y.e1
    y_13 = y.e13
    y_12 = y.e12
    y_123 = y.e123
    y_0 = y.e0
    y_03 = y.e03
    y_02 = y.e02
    y_023 = y.e023
    y_01 = y.e01
    y_013 = y.e013
    y_012 = y.e012
    y_0123 = y.e0123
    ret_ = y_
    ret_3 = y_3
    ret_2 = y_2
    ret_23 = y_23
    ret_1 = y_1
    ret_13 = y_13
    ret_12 = y_12
    ret_123 = y_123
    ret_0 = y_0
    ret_03 = y_03
    ret_02 = y_02
    ret_023 = y_023
    ret_01 = y_01
    ret_013 = y_013
    ret_012 = y_012
    ret_0123 = (+)(x_0123, (*)(-1, y_0123))
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function Base.:-(x::MultiVector4, y::MultiVectorEven)
    x_0123 = x.e0123
    y_ = y.e
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    y_0123 = y.e0123
    ret_ = y_
    ret_23 = y_23
    ret_13 = y_13
    ret_12 = y_12
    ret_03 = y_03
    ret_02 = y_02
    ret_01 = y_01
    ret_0123 = (+)(x_0123, (*)(-1, y_0123))
    return MultiVectorEven(; e = ret_, e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01, e0123 = ret_0123)
end
function Base.:-(x::MultiVector4, y::MultiVector0)
    x_0123 = x.e0123
    y_ = y.e
    ret_ = y_
    ret_0123 = x_0123
    return MultiVectorEven(; e = ret_, e0123 = ret_0123)
end
function Base.:-(x::MultiVector4, y::MultiVector1)
    x_0123 = x.e0123
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    y_0 = y.e0
    ret_3 = y_3
    ret_2 = y_2
    ret_1 = y_1
    ret_0 = y_0
    ret_0123 = x_0123
    return MultiVectorAll(; e3 = ret_3, e2 = ret_2, e1 = ret_1, e0 = ret_0, e0123 = ret_0123)
end
function Base.:-(x::MultiVector4, y::MultiVector2)
    x_0123 = x.e0123
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    ret_23 = y_23
    ret_13 = y_13
    ret_12 = y_12
    ret_03 = y_03
    ret_02 = y_02
    ret_01 = y_01
    ret_0123 = x_0123
    return MultiVectorEven(; e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01, e0123 = ret_0123)
end
function Base.:-(x::MultiVector4, y::MultiVector3)
    x_0123 = x.e0123
    y_123 = y.e123
    y_023 = y.e023
    y_013 = y.e013
    y_012 = y.e012
    ret_123 = y_123
    ret_023 = y_023
    ret_013 = y_013
    ret_012 = y_012
    ret_0123 = x_0123
    return MultiVectorAll(; e123 = ret_123, e023 = ret_023, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function Base.:-(x::MultiVector4, y::MultiVector4)
    x_0123 = x.e0123
    y_0123 = y.e0123
    ret_0123 = (+)(x_0123, (*)(-1, y_0123))
    return MultiVector4(; e0123 = ret_0123)
end
function Base.:-(x::MultiVector4, y::MultiVectorZero)
    x_0123 = x.e0123
    ret_0123 = x_0123
    return MultiVector4(; e0123 = ret_0123)
end
function Base.:-(x::MultiVectorZero, y::MultiVectorAll)
    y_ = y.e
    y_3 = y.e3
    y_2 = y.e2
    y_23 = y.e23
    y_1 = y.e1
    y_13 = y.e13
    y_12 = y.e12
    y_123 = y.e123
    y_0 = y.e0
    y_03 = y.e03
    y_02 = y.e02
    y_023 = y.e023
    y_01 = y.e01
    y_013 = y.e013
    y_012 = y.e012
    y_0123 = y.e0123
    ret_ = y_
    ret_3 = y_3
    ret_2 = y_2
    ret_23 = y_23
    ret_1 = y_1
    ret_13 = y_13
    ret_12 = y_12
    ret_123 = y_123
    ret_0 = y_0
    ret_03 = y_03
    ret_02 = y_02
    ret_023 = y_023
    ret_01 = y_01
    ret_013 = y_013
    ret_012 = y_012
    ret_0123 = y_0123
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function Base.:-(x::MultiVectorZero, y::MultiVectorEven)
    y_ = y.e
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    y_0123 = y.e0123
    ret_ = y_
    ret_23 = y_23
    ret_13 = y_13
    ret_12 = y_12
    ret_03 = y_03
    ret_02 = y_02
    ret_01 = y_01
    ret_0123 = y_0123
    return MultiVectorEven(; e = ret_, e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01, e0123 = ret_0123)
end
function Base.:-(x::MultiVectorZero, y::MultiVector0)
    y_ = y.e
    ret_ = y_
    return MultiVector0(; e = ret_)
end
function Base.:-(x::MultiVectorZero, y::MultiVector1)
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    y_0 = y.e0
    ret_3 = y_3
    ret_2 = y_2
    ret_1 = y_1
    ret_0 = y_0
    return MultiVector1(; e3 = ret_3, e2 = ret_2, e1 = ret_1, e0 = ret_0)
end
function Base.:-(x::MultiVectorZero, y::MultiVector2)
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    ret_23 = y_23
    ret_13 = y_13
    ret_12 = y_12
    ret_03 = y_03
    ret_02 = y_02
    ret_01 = y_01
    return MultiVector2(; e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01)
end
function Base.:-(x::MultiVectorZero, y::MultiVector3)
    y_123 = y.e123
    y_023 = y.e023
    y_013 = y.e013
    y_012 = y.e012
    ret_123 = y_123
    ret_023 = y_023
    ret_013 = y_013
    ret_012 = y_012
    return MultiVector3(; e123 = ret_123, e023 = ret_023, e013 = ret_013, e012 = ret_012)
end
function Base.:-(x::MultiVectorZero, y::MultiVector4)
    y_0123 = y.e0123
    ret_0123 = y_0123
    return MultiVector4(; e0123 = ret_0123)
end
function Base.:-(x::MultiVectorZero, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function geomul(x::MultiVectorAll, y::MultiVectorAll)
    x_ = x.e
    x_3 = x.e3
    x_2 = x.e2
    x_23 = x.e23
    x_1 = x.e1
    x_13 = x.e13
    x_12 = x.e12
    x_123 = x.e123
    x_0 = x.e0
    x_03 = x.e03
    x_02 = x.e02
    x_023 = x.e023
    x_01 = x.e01
    x_013 = x.e013
    x_012 = x.e012
    x_0123 = x.e0123
    y_ = y.e
    y_3 = y.e3
    y_2 = y.e2
    y_23 = y.e23
    y_1 = y.e1
    y_13 = y.e13
    y_12 = y.e12
    y_123 = y.e123
    y_0 = y.e0
    y_03 = y.e03
    y_02 = y.e02
    y_023 = y.e023
    y_01 = y.e01
    y_013 = y.e013
    y_012 = y.e012
    y_0123 = y.e0123
    ret_ = (+)((*)(x_, y_), (*)(x_1, y_1), (*)(x_2, y_2), (*)(x_3, y_3), (*)(-1, x_12, y_12), (*)(-1, x_123, y_123), (*)(-1, x_13, y_13), (*)(-1, x_23, y_23))
    ret_3 = (+)((*)(x_, y_3), (*)(x_1, y_13), (*)(x_2, y_23), (*)(x_3, y_), (*)(-1, x_12, y_123), (*)(-1, x_123, y_12), (*)(-1, x_13, y_1), (*)(-1, x_23, y_2))
    ret_2 = (+)((*)(x_, y_2), (*)(x_1, y_12), (*)(x_123, y_13), (*)(x_13, y_123), (*)(x_2, y_), (*)(x_23, y_3), (*)(-1, x_12, y_1), (*)(-1, x_3, y_23))
    ret_23 = (+)((*)(x_, y_23), (*)(x_1, y_123), (*)(x_123, y_1), (*)(x_13, y_12), (*)(x_2, y_3), (*)(x_23, y_), (*)(-1, x_12, y_13), (*)(-1, x_3, y_2))
    ret_1 = (+)((*)(x_, y_1), (*)(x_1, y_), (*)(x_12, y_2), (*)(x_13, y_3), (*)(-1, x_123, y_23), (*)(-1, x_2, y_12), (*)(-1, x_23, y_123), (*)(-1, x_3, y_13))
    ret_13 = (+)((*)(x_, y_13), (*)(x_1, y_3), (*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_123, y_2), (*)(-1, x_2, y_123), (*)(-1, x_23, y_12), (*)(-1, x_3, y_1))
    ret_12 = (+)((*)(x_, y_12), (*)(x_1, y_2), (*)(x_12, y_), (*)(x_123, y_3), (*)(x_23, y_13), (*)(x_3, y_123), (*)(-1, x_13, y_23), (*)(-1, x_2, y_1))
    ret_123 = (+)((*)(x_, y_123), (*)(x_1, y_23), (*)(x_12, y_3), (*)(x_123, y_), (*)(x_23, y_1), (*)(x_3, y_12), (*)(-1, x_13, y_2), (*)(-1, x_2, y_13))
    ret_0 = (+)((*)(x_, y_0), (*)(x_0, y_), (*)(x_01, y_1), (*)(x_02, y_2), (*)(x_03, y_3), (*)(x_123, y_0123), (*)(-1, x_012, y_12), (*)(-1, x_0123, y_123), (*)(-1, x_013, y_13), (*)(-1, x_023, y_23), (*)(-1, x_1, y_01), (*)(-1, x_12, y_012), (*)(-1, x_13, y_013), (*)(-1, x_2, y_02), (*)(-1, x_23, y_023), (*)(-1, x_3, y_03))
    ret_03 = (+)((*)(x_, y_03), (*)(x_0, y_3), (*)(x_01, y_13), (*)(x_02, y_23), (*)(x_03, y_), (*)(x_123, y_012), (*)(-1, x_012, y_123), (*)(-1, x_0123, y_12), (*)(-1, x_013, y_1), (*)(-1, x_023, y_2), (*)(-1, x_1, y_013), (*)(-1, x_12, y_0123), (*)(-1, x_13, y_01), (*)(-1, x_2, y_023), (*)(-1, x_23, y_02), (*)(-1, x_3, y_0))
    ret_02 = (+)((*)(x_, y_02), (*)(x_0, y_2), (*)(x_01, y_12), (*)(x_0123, y_13), (*)(x_013, y_123), (*)(x_02, y_), (*)(x_023, y_3), (*)(x_13, y_0123), (*)(x_23, y_03), (*)(x_3, y_023), (*)(-1, x_012, y_1), (*)(-1, x_03, y_23), (*)(-1, x_1, y_012), (*)(-1, x_12, y_01), (*)(-1, x_123, y_013), (*)(-1, x_2, y_0))
    ret_023 = (+)((*)(x_, y_023), (*)(x_0, y_23), (*)(x_01, y_123), (*)(x_0123, y_1), (*)(x_013, y_12), (*)(x_02, y_3), (*)(x_023, y_), (*)(x_13, y_012), (*)(x_23, y_0), (*)(x_3, y_02), (*)(-1, x_012, y_13), (*)(-1, x_03, y_2), (*)(-1, x_1, y_0123), (*)(-1, x_12, y_013), (*)(-1, x_123, y_01), (*)(-1, x_2, y_03))
    ret_01 = (+)((*)(x_, y_01), (*)(x_0, y_1), (*)(x_01, y_), (*)(x_012, y_2), (*)(x_013, y_3), (*)(x_12, y_02), (*)(x_123, y_023), (*)(x_13, y_03), (*)(x_2, y_012), (*)(x_3, y_013), (*)(-1, x_0123, y_23), (*)(-1, x_02, y_12), (*)(-1, x_023, y_123), (*)(-1, x_03, y_13), (*)(-1, x_1, y_0), (*)(-1, x_23, y_0123))
    ret_013 = (+)((*)(x_, y_013), (*)(x_0, y_13), (*)(x_01, y_3), (*)(x_012, y_23), (*)(x_013, y_), (*)(x_12, y_023), (*)(x_123, y_02), (*)(x_13, y_0), (*)(x_2, y_0123), (*)(x_3, y_01), (*)(-1, x_0123, y_2), (*)(-1, x_02, y_123), (*)(-1, x_023, y_12), (*)(-1, x_03, y_1), (*)(-1, x_1, y_03), (*)(-1, x_23, y_012))
    ret_012 = (+)((*)(x_, y_012), (*)(x_0, y_12), (*)(x_01, y_2), (*)(x_012, y_), (*)(x_0123, y_3), (*)(x_023, y_13), (*)(x_03, y_123), (*)(x_12, y_0), (*)(x_2, y_01), (*)(x_23, y_013), (*)(-1, x_013, y_23), (*)(-1, x_02, y_1), (*)(-1, x_1, y_02), (*)(-1, x_123, y_03), (*)(-1, x_13, y_023), (*)(-1, x_3, y_0123))
    ret_0123 = (+)((*)(x_, y_0123), (*)(x_0, y_123), (*)(x_01, y_23), (*)(x_012, y_3), (*)(x_0123, y_), (*)(x_023, y_1), (*)(x_03, y_12), (*)(x_12, y_03), (*)(x_2, y_013), (*)(x_23, y_01), (*)(-1, x_013, y_2), (*)(-1, x_02, y_13), (*)(-1, x_1, y_023), (*)(-1, x_123, y_0), (*)(-1, x_13, y_02), (*)(-1, x_3, y_012))
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function geomul(x::MultiVectorAll, y::MultiVectorEven)
    x_ = x.e
    x_3 = x.e3
    x_2 = x.e2
    x_23 = x.e23
    x_1 = x.e1
    x_13 = x.e13
    x_12 = x.e12
    x_123 = x.e123
    x_0 = x.e0
    x_03 = x.e03
    x_02 = x.e02
    x_023 = x.e023
    x_01 = x.e01
    x_013 = x.e013
    x_012 = x.e012
    x_0123 = x.e0123
    y_ = y.e
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    y_0123 = y.e0123
    ret_ = (+)((*)(x_, y_), (*)(-1, x_12, y_12), (*)(-1, x_13, y_13), (*)(-1, x_23, y_23))
    ret_3 = (+)((*)(x_1, y_13), (*)(x_2, y_23), (*)(x_3, y_), (*)(-1, x_123, y_12))
    ret_2 = (+)((*)(x_1, y_12), (*)(x_123, y_13), (*)(x_2, y_), (*)(-1, x_3, y_23))
    ret_23 = (+)((*)(x_, y_23), (*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_12, y_13))
    ret_1 = (+)((*)(x_1, y_), (*)(-1, x_123, y_23), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))
    ret_13 = (+)((*)(x_, y_13), (*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_23, y_12))
    ret_12 = (+)((*)(x_, y_12), (*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_13, y_23))
    ret_123 = (+)((*)(x_1, y_23), (*)(x_123, y_), (*)(x_3, y_12), (*)(-1, x_2, y_13))
    ret_0 = (+)((*)(x_0, y_), (*)(x_123, y_0123), (*)(-1, x_012, y_12), (*)(-1, x_013, y_13), (*)(-1, x_023, y_23), (*)(-1, x_1, y_01), (*)(-1, x_2, y_02), (*)(-1, x_3, y_03))
    ret_03 = (+)((*)(x_, y_03), (*)(x_01, y_13), (*)(x_02, y_23), (*)(x_03, y_), (*)(-1, x_0123, y_12), (*)(-1, x_12, y_0123), (*)(-1, x_13, y_01), (*)(-1, x_23, y_02))
    ret_02 = (+)((*)(x_, y_02), (*)(x_01, y_12), (*)(x_0123, y_13), (*)(x_02, y_), (*)(x_13, y_0123), (*)(x_23, y_03), (*)(-1, x_03, y_23), (*)(-1, x_12, y_01))
    ret_023 = (+)((*)(x_0, y_23), (*)(x_013, y_12), (*)(x_023, y_), (*)(x_3, y_02), (*)(-1, x_012, y_13), (*)(-1, x_1, y_0123), (*)(-1, x_123, y_01), (*)(-1, x_2, y_03))
    ret_01 = (+)((*)(x_, y_01), (*)(x_01, y_), (*)(x_12, y_02), (*)(x_13, y_03), (*)(-1, x_0123, y_23), (*)(-1, x_02, y_12), (*)(-1, x_03, y_13), (*)(-1, x_23, y_0123))
    ret_013 = (+)((*)(x_0, y_13), (*)(x_012, y_23), (*)(x_013, y_), (*)(x_123, y_02), (*)(x_2, y_0123), (*)(x_3, y_01), (*)(-1, x_023, y_12), (*)(-1, x_1, y_03))
    ret_012 = (+)((*)(x_0, y_12), (*)(x_012, y_), (*)(x_023, y_13), (*)(x_2, y_01), (*)(-1, x_013, y_23), (*)(-1, x_1, y_02), (*)(-1, x_123, y_03), (*)(-1, x_3, y_0123))
    ret_0123 = (+)((*)(x_, y_0123), (*)(x_01, y_23), (*)(x_0123, y_), (*)(x_03, y_12), (*)(x_12, y_03), (*)(x_23, y_01), (*)(-1, x_02, y_13), (*)(-1, x_13, y_02))
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function geomul(x::MultiVectorAll, y::MultiVector0)
    x_ = x.e
    x_3 = x.e3
    x_2 = x.e2
    x_23 = x.e23
    x_1 = x.e1
    x_13 = x.e13
    x_12 = x.e12
    x_123 = x.e123
    x_0 = x.e0
    x_03 = x.e03
    x_02 = x.e02
    x_023 = x.e023
    x_01 = x.e01
    x_013 = x.e013
    x_012 = x.e012
    x_0123 = x.e0123
    y_ = y.e
    ret_ = (*)(x_, y_)
    ret_3 = (*)(x_3, y_)
    ret_2 = (*)(x_2, y_)
    ret_23 = (*)(x_23, y_)
    ret_1 = (*)(x_1, y_)
    ret_13 = (*)(x_13, y_)
    ret_12 = (*)(x_12, y_)
    ret_123 = (*)(x_123, y_)
    ret_0 = (*)(x_0, y_)
    ret_03 = (*)(x_03, y_)
    ret_02 = (*)(x_02, y_)
    ret_023 = (*)(x_023, y_)
    ret_01 = (*)(x_01, y_)
    ret_013 = (*)(x_013, y_)
    ret_012 = (*)(x_012, y_)
    ret_0123 = (*)(x_0123, y_)
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function geomul(x::MultiVectorAll, y::MultiVector1)
    x_ = x.e
    x_3 = x.e3
    x_2 = x.e2
    x_23 = x.e23
    x_1 = x.e1
    x_13 = x.e13
    x_12 = x.e12
    x_123 = x.e123
    x_0 = x.e0
    x_03 = x.e03
    x_02 = x.e02
    x_023 = x.e023
    x_01 = x.e01
    x_013 = x.e013
    x_012 = x.e012
    x_0123 = x.e0123
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    y_0 = y.e0
    ret_ = (+)((*)(x_1, y_1), (*)(x_2, y_2), (*)(x_3, y_3))
    ret_3 = (+)((*)(x_, y_3), (*)(-1, x_13, y_1), (*)(-1, x_23, y_2))
    ret_2 = (+)((*)(x_, y_2), (*)(x_23, y_3), (*)(-1, x_12, y_1))
    ret_23 = (+)((*)(x_123, y_1), (*)(x_2, y_3), (*)(-1, x_3, y_2))
    ret_1 = (+)((*)(x_, y_1), (*)(x_12, y_2), (*)(x_13, y_3))
    ret_13 = (+)((*)(x_1, y_3), (*)(-1, x_123, y_2), (*)(-1, x_3, y_1))
    ret_12 = (+)((*)(x_1, y_2), (*)(x_123, y_3), (*)(-1, x_2, y_1))
    ret_123 = (+)((*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_13, y_2))
    ret_0 = (+)((*)(x_, y_0), (*)(x_01, y_1), (*)(x_02, y_2), (*)(x_03, y_3))
    ret_03 = (+)((*)(x_0, y_3), (*)(-1, x_013, y_1), (*)(-1, x_023, y_2), (*)(-1, x_3, y_0))
    ret_02 = (+)((*)(x_0, y_2), (*)(x_023, y_3), (*)(-1, x_012, y_1), (*)(-1, x_2, y_0))
    ret_023 = (+)((*)(x_0123, y_1), (*)(x_02, y_3), (*)(x_23, y_0), (*)(-1, x_03, y_2))
    ret_01 = (+)((*)(x_0, y_1), (*)(x_012, y_2), (*)(x_013, y_3), (*)(-1, x_1, y_0))
    ret_013 = (+)((*)(x_01, y_3), (*)(x_13, y_0), (*)(-1, x_0123, y_2), (*)(-1, x_03, y_1))
    ret_012 = (+)((*)(x_01, y_2), (*)(x_0123, y_3), (*)(x_12, y_0), (*)(-1, x_02, y_1))
    ret_0123 = (+)((*)(x_012, y_3), (*)(x_023, y_1), (*)(-1, x_013, y_2), (*)(-1, x_123, y_0))
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function geomul(x::MultiVectorAll, y::MultiVector2)
    x_ = x.e
    x_3 = x.e3
    x_2 = x.e2
    x_23 = x.e23
    x_1 = x.e1
    x_13 = x.e13
    x_12 = x.e12
    x_123 = x.e123
    x_0 = x.e0
    x_03 = x.e03
    x_02 = x.e02
    x_023 = x.e023
    x_01 = x.e01
    x_013 = x.e013
    x_012 = x.e012
    x_0123 = x.e0123
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    ret_ = (+)((*)(-1, x_12, y_12), (*)(-1, x_13, y_13), (*)(-1, x_23, y_23))
    ret_3 = (+)((*)(x_1, y_13), (*)(x_2, y_23), (*)(-1, x_123, y_12))
    ret_2 = (+)((*)(x_1, y_12), (*)(x_123, y_13), (*)(-1, x_3, y_23))
    ret_23 = (+)((*)(x_, y_23), (*)(x_13, y_12), (*)(-1, x_12, y_13))
    ret_1 = (+)((*)(-1, x_123, y_23), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))
    ret_13 = (+)((*)(x_, y_13), (*)(x_12, y_23), (*)(-1, x_23, y_12))
    ret_12 = (+)((*)(x_, y_12), (*)(x_23, y_13), (*)(-1, x_13, y_23))
    ret_123 = (+)((*)(x_1, y_23), (*)(x_3, y_12), (*)(-1, x_2, y_13))
    ret_0 = (+)((*)(-1, x_012, y_12), (*)(-1, x_013, y_13), (*)(-1, x_023, y_23), (*)(-1, x_1, y_01), (*)(-1, x_2, y_02), (*)(-1, x_3, y_03))
    ret_03 = (+)((*)(x_, y_03), (*)(x_01, y_13), (*)(x_02, y_23), (*)(-1, x_0123, y_12), (*)(-1, x_13, y_01), (*)(-1, x_23, y_02))
    ret_02 = (+)((*)(x_, y_02), (*)(x_01, y_12), (*)(x_0123, y_13), (*)(x_23, y_03), (*)(-1, x_03, y_23), (*)(-1, x_12, y_01))
    ret_023 = (+)((*)(x_0, y_23), (*)(x_013, y_12), (*)(x_3, y_02), (*)(-1, x_012, y_13), (*)(-1, x_123, y_01), (*)(-1, x_2, y_03))
    ret_01 = (+)((*)(x_, y_01), (*)(x_12, y_02), (*)(x_13, y_03), (*)(-1, x_0123, y_23), (*)(-1, x_02, y_12), (*)(-1, x_03, y_13))
    ret_013 = (+)((*)(x_0, y_13), (*)(x_012, y_23), (*)(x_123, y_02), (*)(x_3, y_01), (*)(-1, x_023, y_12), (*)(-1, x_1, y_03))
    ret_012 = (+)((*)(x_0, y_12), (*)(x_023, y_13), (*)(x_2, y_01), (*)(-1, x_013, y_23), (*)(-1, x_1, y_02), (*)(-1, x_123, y_03))
    ret_0123 = (+)((*)(x_01, y_23), (*)(x_03, y_12), (*)(x_12, y_03), (*)(x_23, y_01), (*)(-1, x_02, y_13), (*)(-1, x_13, y_02))
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function geomul(x::MultiVectorAll, y::MultiVector3)
    x_ = x.e
    x_3 = x.e3
    x_2 = x.e2
    x_23 = x.e23
    x_1 = x.e1
    x_13 = x.e13
    x_12 = x.e12
    x_123 = x.e123
    x_0 = x.e0
    x_03 = x.e03
    x_02 = x.e02
    x_023 = x.e023
    x_01 = x.e01
    x_013 = x.e013
    x_012 = x.e012
    x_0123 = x.e0123
    y_123 = y.e123
    y_023 = y.e023
    y_013 = y.e013
    y_012 = y.e012
    ret_ = (*)(-1, x_123, y_123)
    ret_3 = (*)(-1, x_12, y_123)
    ret_2 = (*)(x_13, y_123)
    ret_23 = (*)(x_1, y_123)
    ret_1 = (*)(-1, x_23, y_123)
    ret_13 = (*)(-1, x_2, y_123)
    ret_12 = (*)(x_3, y_123)
    ret_123 = (*)(x_, y_123)
    ret_0 = (+)((*)(-1, x_0123, y_123), (*)(-1, x_12, y_012), (*)(-1, x_13, y_013), (*)(-1, x_23, y_023))
    ret_03 = (+)((*)(x_123, y_012), (*)(-1, x_012, y_123), (*)(-1, x_1, y_013), (*)(-1, x_2, y_023))
    ret_02 = (+)((*)(x_013, y_123), (*)(x_3, y_023), (*)(-1, x_1, y_012), (*)(-1, x_123, y_013))
    ret_023 = (+)((*)(x_, y_023), (*)(x_01, y_123), (*)(x_13, y_012), (*)(-1, x_12, y_013))
    ret_01 = (+)((*)(x_123, y_023), (*)(x_2, y_012), (*)(x_3, y_013), (*)(-1, x_023, y_123))
    ret_013 = (+)((*)(x_, y_013), (*)(x_12, y_023), (*)(-1, x_02, y_123), (*)(-1, x_23, y_012))
    ret_012 = (+)((*)(x_, y_012), (*)(x_03, y_123), (*)(x_23, y_013), (*)(-1, x_13, y_023))
    ret_0123 = (+)((*)(x_0, y_123), (*)(x_2, y_013), (*)(-1, x_1, y_023), (*)(-1, x_3, y_012))
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function geomul(x::MultiVectorAll, y::MultiVector4)
    x_ = x.e
    x_3 = x.e3
    x_2 = x.e2
    x_23 = x.e23
    x_1 = x.e1
    x_13 = x.e13
    x_12 = x.e12
    x_123 = x.e123
    x_0 = x.e0
    x_03 = x.e03
    x_02 = x.e02
    x_023 = x.e023
    x_01 = x.e01
    x_013 = x.e013
    x_012 = x.e012
    x_0123 = x.e0123
    y_0123 = y.e0123
    ret_0 = (*)(x_123, y_0123)
    ret_03 = (*)(-1, x_12, y_0123)
    ret_02 = (*)(x_13, y_0123)
    ret_023 = (*)(-1, x_1, y_0123)
    ret_01 = (*)(-1, x_23, y_0123)
    ret_013 = (*)(x_2, y_0123)
    ret_012 = (*)(-1, x_3, y_0123)
    ret_0123 = (*)(x_, y_0123)
    return MultiVectorAll(; e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function geomul(x::MultiVectorAll, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function geomul(x::MultiVectorEven, y::MultiVectorAll)
    x_ = x.e
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    x_0123 = x.e0123
    y_ = y.e
    y_3 = y.e3
    y_2 = y.e2
    y_23 = y.e23
    y_1 = y.e1
    y_13 = y.e13
    y_12 = y.e12
    y_123 = y.e123
    y_0 = y.e0
    y_03 = y.e03
    y_02 = y.e02
    y_023 = y.e023
    y_01 = y.e01
    y_013 = y.e013
    y_012 = y.e012
    y_0123 = y.e0123
    ret_ = (+)((*)(x_, y_), (*)(-1, x_12, y_12), (*)(-1, x_13, y_13), (*)(-1, x_23, y_23))
    ret_3 = (+)((*)(x_, y_3), (*)(-1, x_12, y_123), (*)(-1, x_13, y_1), (*)(-1, x_23, y_2))
    ret_2 = (+)((*)(x_, y_2), (*)(x_13, y_123), (*)(x_23, y_3), (*)(-1, x_12, y_1))
    ret_23 = (+)((*)(x_, y_23), (*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_12, y_13))
    ret_1 = (+)((*)(x_, y_1), (*)(x_12, y_2), (*)(x_13, y_3), (*)(-1, x_23, y_123))
    ret_13 = (+)((*)(x_, y_13), (*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_23, y_12))
    ret_12 = (+)((*)(x_, y_12), (*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_13, y_23))
    ret_123 = (+)((*)(x_, y_123), (*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_13, y_2))
    ret_0 = (+)((*)(x_, y_0), (*)(x_01, y_1), (*)(x_02, y_2), (*)(x_03, y_3), (*)(-1, x_0123, y_123), (*)(-1, x_12, y_012), (*)(-1, x_13, y_013), (*)(-1, x_23, y_023))
    ret_03 = (+)((*)(x_, y_03), (*)(x_01, y_13), (*)(x_02, y_23), (*)(x_03, y_), (*)(-1, x_0123, y_12), (*)(-1, x_12, y_0123), (*)(-1, x_13, y_01), (*)(-1, x_23, y_02))
    ret_02 = (+)((*)(x_, y_02), (*)(x_01, y_12), (*)(x_0123, y_13), (*)(x_02, y_), (*)(x_13, y_0123), (*)(x_23, y_03), (*)(-1, x_03, y_23), (*)(-1, x_12, y_01))
    ret_023 = (+)((*)(x_, y_023), (*)(x_01, y_123), (*)(x_0123, y_1), (*)(x_02, y_3), (*)(x_13, y_012), (*)(x_23, y_0), (*)(-1, x_03, y_2), (*)(-1, x_12, y_013))
    ret_01 = (+)((*)(x_, y_01), (*)(x_01, y_), (*)(x_12, y_02), (*)(x_13, y_03), (*)(-1, x_0123, y_23), (*)(-1, x_02, y_12), (*)(-1, x_03, y_13), (*)(-1, x_23, y_0123))
    ret_013 = (+)((*)(x_, y_013), (*)(x_01, y_3), (*)(x_12, y_023), (*)(x_13, y_0), (*)(-1, x_0123, y_2), (*)(-1, x_02, y_123), (*)(-1, x_03, y_1), (*)(-1, x_23, y_012))
    ret_012 = (+)((*)(x_, y_012), (*)(x_01, y_2), (*)(x_0123, y_3), (*)(x_03, y_123), (*)(x_12, y_0), (*)(x_23, y_013), (*)(-1, x_02, y_1), (*)(-1, x_13, y_023))
    ret_0123 = (+)((*)(x_, y_0123), (*)(x_01, y_23), (*)(x_0123, y_), (*)(x_03, y_12), (*)(x_12, y_03), (*)(x_23, y_01), (*)(-1, x_02, y_13), (*)(-1, x_13, y_02))
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function geomul(x::MultiVectorEven, y::MultiVectorEven)
    x_ = x.e
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    x_0123 = x.e0123
    y_ = y.e
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    y_0123 = y.e0123
    ret_ = (+)((*)(x_, y_), (*)(-1, x_12, y_12), (*)(-1, x_13, y_13), (*)(-1, x_23, y_23))
    ret_23 = (+)((*)(x_, y_23), (*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_12, y_13))
    ret_13 = (+)((*)(x_, y_13), (*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_23, y_12))
    ret_12 = (+)((*)(x_, y_12), (*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_13, y_23))
    ret_03 = (+)((*)(x_, y_03), (*)(x_01, y_13), (*)(x_02, y_23), (*)(x_03, y_), (*)(-1, x_0123, y_12), (*)(-1, x_12, y_0123), (*)(-1, x_13, y_01), (*)(-1, x_23, y_02))
    ret_02 = (+)((*)(x_, y_02), (*)(x_01, y_12), (*)(x_0123, y_13), (*)(x_02, y_), (*)(x_13, y_0123), (*)(x_23, y_03), (*)(-1, x_03, y_23), (*)(-1, x_12, y_01))
    ret_01 = (+)((*)(x_, y_01), (*)(x_01, y_), (*)(x_12, y_02), (*)(x_13, y_03), (*)(-1, x_0123, y_23), (*)(-1, x_02, y_12), (*)(-1, x_03, y_13), (*)(-1, x_23, y_0123))
    ret_0123 = (+)((*)(x_, y_0123), (*)(x_01, y_23), (*)(x_0123, y_), (*)(x_03, y_12), (*)(x_12, y_03), (*)(x_23, y_01), (*)(-1, x_02, y_13), (*)(-1, x_13, y_02))
    return MultiVectorEven(; e = ret_, e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01, e0123 = ret_0123)
end
function geomul(x::MultiVectorEven, y::MultiVector0)
    x_ = x.e
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    x_0123 = x.e0123
    y_ = y.e
    ret_ = (*)(x_, y_)
    ret_23 = (*)(x_23, y_)
    ret_13 = (*)(x_13, y_)
    ret_12 = (*)(x_12, y_)
    ret_03 = (*)(x_03, y_)
    ret_02 = (*)(x_02, y_)
    ret_01 = (*)(x_01, y_)
    ret_0123 = (*)(x_0123, y_)
    return MultiVectorEven(; e = ret_, e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01, e0123 = ret_0123)
end
function geomul(x::MultiVectorEven, y::MultiVector1)
    x_ = x.e
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    x_0123 = x.e0123
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    y_0 = y.e0
    ret_3 = (+)((*)(x_, y_3), (*)(-1, x_13, y_1), (*)(-1, x_23, y_2))
    ret_2 = (+)((*)(x_, y_2), (*)(x_23, y_3), (*)(-1, x_12, y_1))
    ret_1 = (+)((*)(x_, y_1), (*)(x_12, y_2), (*)(x_13, y_3))
    ret_123 = (+)((*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_13, y_2))
    ret_0 = (+)((*)(x_, y_0), (*)(x_01, y_1), (*)(x_02, y_2), (*)(x_03, y_3))
    ret_023 = (+)((*)(x_0123, y_1), (*)(x_02, y_3), (*)(x_23, y_0), (*)(-1, x_03, y_2))
    ret_013 = (+)((*)(x_01, y_3), (*)(x_13, y_0), (*)(-1, x_0123, y_2), (*)(-1, x_03, y_1))
    ret_012 = (+)((*)(x_01, y_2), (*)(x_0123, y_3), (*)(x_12, y_0), (*)(-1, x_02, y_1))
    return MultiVectorAll(; e3 = ret_3, e2 = ret_2, e1 = ret_1, e123 = ret_123, e0 = ret_0, e023 = ret_023, e013 = ret_013, e012 = ret_012)
end
function geomul(x::MultiVectorEven, y::MultiVector2)
    x_ = x.e
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    x_0123 = x.e0123
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    ret_ = (+)((*)(-1, x_12, y_12), (*)(-1, x_13, y_13), (*)(-1, x_23, y_23))
    ret_23 = (+)((*)(x_, y_23), (*)(x_13, y_12), (*)(-1, x_12, y_13))
    ret_13 = (+)((*)(x_, y_13), (*)(x_12, y_23), (*)(-1, x_23, y_12))
    ret_12 = (+)((*)(x_, y_12), (*)(x_23, y_13), (*)(-1, x_13, y_23))
    ret_03 = (+)((*)(x_, y_03), (*)(x_01, y_13), (*)(x_02, y_23), (*)(-1, x_0123, y_12), (*)(-1, x_13, y_01), (*)(-1, x_23, y_02))
    ret_02 = (+)((*)(x_, y_02), (*)(x_01, y_12), (*)(x_0123, y_13), (*)(x_23, y_03), (*)(-1, x_03, y_23), (*)(-1, x_12, y_01))
    ret_01 = (+)((*)(x_, y_01), (*)(x_12, y_02), (*)(x_13, y_03), (*)(-1, x_0123, y_23), (*)(-1, x_02, y_12), (*)(-1, x_03, y_13))
    ret_0123 = (+)((*)(x_01, y_23), (*)(x_03, y_12), (*)(x_12, y_03), (*)(x_23, y_01), (*)(-1, x_02, y_13), (*)(-1, x_13, y_02))
    return MultiVectorEven(; e = ret_, e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01, e0123 = ret_0123)
end
function geomul(x::MultiVectorEven, y::MultiVector3)
    x_ = x.e
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    x_0123 = x.e0123
    y_123 = y.e123
    y_023 = y.e023
    y_013 = y.e013
    y_012 = y.e012
    ret_3 = (*)(-1, x_12, y_123)
    ret_2 = (*)(x_13, y_123)
    ret_1 = (*)(-1, x_23, y_123)
    ret_123 = (*)(x_, y_123)
    ret_0 = (+)((*)(-1, x_0123, y_123), (*)(-1, x_12, y_012), (*)(-1, x_13, y_013), (*)(-1, x_23, y_023))
    ret_023 = (+)((*)(x_, y_023), (*)(x_01, y_123), (*)(x_13, y_012), (*)(-1, x_12, y_013))
    ret_013 = (+)((*)(x_, y_013), (*)(x_12, y_023), (*)(-1, x_02, y_123), (*)(-1, x_23, y_012))
    ret_012 = (+)((*)(x_, y_012), (*)(x_03, y_123), (*)(x_23, y_013), (*)(-1, x_13, y_023))
    return MultiVectorAll(; e3 = ret_3, e2 = ret_2, e1 = ret_1, e123 = ret_123, e0 = ret_0, e023 = ret_023, e013 = ret_013, e012 = ret_012)
end
function geomul(x::MultiVectorEven, y::MultiVector4)
    x_ = x.e
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    x_0123 = x.e0123
    y_0123 = y.e0123
    ret_03 = (*)(-1, x_12, y_0123)
    ret_02 = (*)(x_13, y_0123)
    ret_01 = (*)(-1, x_23, y_0123)
    ret_0123 = (*)(x_, y_0123)
    return MultiVectorEven(; e03 = ret_03, e02 = ret_02, e01 = ret_01, e0123 = ret_0123)
end
function geomul(x::MultiVectorEven, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function geomul(x::MultiVector0, y::MultiVectorAll)
    x_ = x.e
    y_ = y.e
    y_3 = y.e3
    y_2 = y.e2
    y_23 = y.e23
    y_1 = y.e1
    y_13 = y.e13
    y_12 = y.e12
    y_123 = y.e123
    y_0 = y.e0
    y_03 = y.e03
    y_02 = y.e02
    y_023 = y.e023
    y_01 = y.e01
    y_013 = y.e013
    y_012 = y.e012
    y_0123 = y.e0123
    ret_ = (*)(x_, y_)
    ret_3 = (*)(x_, y_3)
    ret_2 = (*)(x_, y_2)
    ret_23 = (*)(x_, y_23)
    ret_1 = (*)(x_, y_1)
    ret_13 = (*)(x_, y_13)
    ret_12 = (*)(x_, y_12)
    ret_123 = (*)(x_, y_123)
    ret_0 = (*)(x_, y_0)
    ret_03 = (*)(x_, y_03)
    ret_02 = (*)(x_, y_02)
    ret_023 = (*)(x_, y_023)
    ret_01 = (*)(x_, y_01)
    ret_013 = (*)(x_, y_013)
    ret_012 = (*)(x_, y_012)
    ret_0123 = (*)(x_, y_0123)
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function geomul(x::MultiVector0, y::MultiVectorEven)
    x_ = x.e
    y_ = y.e
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    y_0123 = y.e0123
    ret_ = (*)(x_, y_)
    ret_23 = (*)(x_, y_23)
    ret_13 = (*)(x_, y_13)
    ret_12 = (*)(x_, y_12)
    ret_03 = (*)(x_, y_03)
    ret_02 = (*)(x_, y_02)
    ret_01 = (*)(x_, y_01)
    ret_0123 = (*)(x_, y_0123)
    return MultiVectorEven(; e = ret_, e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01, e0123 = ret_0123)
end
function geomul(x::MultiVector0, y::MultiVector0)
    x_ = x.e
    y_ = y.e
    ret_ = (*)(x_, y_)
    return MultiVector0(; e = ret_)
end
function geomul(x::MultiVector0, y::MultiVector1)
    x_ = x.e
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    y_0 = y.e0
    ret_3 = (*)(x_, y_3)
    ret_2 = (*)(x_, y_2)
    ret_1 = (*)(x_, y_1)
    ret_0 = (*)(x_, y_0)
    return MultiVector1(; e3 = ret_3, e2 = ret_2, e1 = ret_1, e0 = ret_0)
end
function geomul(x::MultiVector0, y::MultiVector2)
    x_ = x.e
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    ret_23 = (*)(x_, y_23)
    ret_13 = (*)(x_, y_13)
    ret_12 = (*)(x_, y_12)
    ret_03 = (*)(x_, y_03)
    ret_02 = (*)(x_, y_02)
    ret_01 = (*)(x_, y_01)
    return MultiVector2(; e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01)
end
function geomul(x::MultiVector0, y::MultiVector3)
    x_ = x.e
    y_123 = y.e123
    y_023 = y.e023
    y_013 = y.e013
    y_012 = y.e012
    ret_123 = (*)(x_, y_123)
    ret_023 = (*)(x_, y_023)
    ret_013 = (*)(x_, y_013)
    ret_012 = (*)(x_, y_012)
    return MultiVector3(; e123 = ret_123, e023 = ret_023, e013 = ret_013, e012 = ret_012)
end
function geomul(x::MultiVector0, y::MultiVector4)
    x_ = x.e
    y_0123 = y.e0123
    ret_0123 = (*)(x_, y_0123)
    return MultiVector4(; e0123 = ret_0123)
end
function geomul(x::MultiVector0, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function geomul(x::MultiVector1, y::MultiVectorAll)
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    x_0 = x.e0
    y_ = y.e
    y_3 = y.e3
    y_2 = y.e2
    y_23 = y.e23
    y_1 = y.e1
    y_13 = y.e13
    y_12 = y.e12
    y_123 = y.e123
    y_0 = y.e0
    y_03 = y.e03
    y_02 = y.e02
    y_023 = y.e023
    y_01 = y.e01
    y_013 = y.e013
    y_012 = y.e012
    y_0123 = y.e0123
    ret_ = (+)((*)(x_1, y_1), (*)(x_2, y_2), (*)(x_3, y_3))
    ret_3 = (+)((*)(x_1, y_13), (*)(x_2, y_23), (*)(x_3, y_))
    ret_2 = (+)((*)(x_1, y_12), (*)(x_2, y_), (*)(-1, x_3, y_23))
    ret_23 = (+)((*)(x_1, y_123), (*)(x_2, y_3), (*)(-1, x_3, y_2))
    ret_1 = (+)((*)(x_1, y_), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))
    ret_13 = (+)((*)(x_1, y_3), (*)(-1, x_2, y_123), (*)(-1, x_3, y_1))
    ret_12 = (+)((*)(x_1, y_2), (*)(x_3, y_123), (*)(-1, x_2, y_1))
    ret_123 = (+)((*)(x_1, y_23), (*)(x_3, y_12), (*)(-1, x_2, y_13))
    ret_0 = (+)((*)(x_0, y_), (*)(-1, x_1, y_01), (*)(-1, x_2, y_02), (*)(-1, x_3, y_03))
    ret_03 = (+)((*)(x_0, y_3), (*)(-1, x_1, y_013), (*)(-1, x_2, y_023), (*)(-1, x_3, y_0))
    ret_02 = (+)((*)(x_0, y_2), (*)(x_3, y_023), (*)(-1, x_1, y_012), (*)(-1, x_2, y_0))
    ret_023 = (+)((*)(x_0, y_23), (*)(x_3, y_02), (*)(-1, x_1, y_0123), (*)(-1, x_2, y_03))
    ret_01 = (+)((*)(x_0, y_1), (*)(x_2, y_012), (*)(x_3, y_013), (*)(-1, x_1, y_0))
    ret_013 = (+)((*)(x_0, y_13), (*)(x_2, y_0123), (*)(x_3, y_01), (*)(-1, x_1, y_03))
    ret_012 = (+)((*)(x_0, y_12), (*)(x_2, y_01), (*)(-1, x_1, y_02), (*)(-1, x_3, y_0123))
    ret_0123 = (+)((*)(x_0, y_123), (*)(x_2, y_013), (*)(-1, x_1, y_023), (*)(-1, x_3, y_012))
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function geomul(x::MultiVector1, y::MultiVectorEven)
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    x_0 = x.e0
    y_ = y.e
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    y_0123 = y.e0123
    ret_3 = (+)((*)(x_1, y_13), (*)(x_2, y_23), (*)(x_3, y_))
    ret_2 = (+)((*)(x_1, y_12), (*)(x_2, y_), (*)(-1, x_3, y_23))
    ret_1 = (+)((*)(x_1, y_), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))
    ret_123 = (+)((*)(x_1, y_23), (*)(x_3, y_12), (*)(-1, x_2, y_13))
    ret_0 = (+)((*)(x_0, y_), (*)(-1, x_1, y_01), (*)(-1, x_2, y_02), (*)(-1, x_3, y_03))
    ret_023 = (+)((*)(x_0, y_23), (*)(x_3, y_02), (*)(-1, x_1, y_0123), (*)(-1, x_2, y_03))
    ret_013 = (+)((*)(x_0, y_13), (*)(x_2, y_0123), (*)(x_3, y_01), (*)(-1, x_1, y_03))
    ret_012 = (+)((*)(x_0, y_12), (*)(x_2, y_01), (*)(-1, x_1, y_02), (*)(-1, x_3, y_0123))
    return MultiVectorAll(; e3 = ret_3, e2 = ret_2, e1 = ret_1, e123 = ret_123, e0 = ret_0, e023 = ret_023, e013 = ret_013, e012 = ret_012)
end
function geomul(x::MultiVector1, y::MultiVector0)
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    x_0 = x.e0
    y_ = y.e
    ret_3 = (*)(x_3, y_)
    ret_2 = (*)(x_2, y_)
    ret_1 = (*)(x_1, y_)
    ret_0 = (*)(x_0, y_)
    return MultiVector1(; e3 = ret_3, e2 = ret_2, e1 = ret_1, e0 = ret_0)
end
function geomul(x::MultiVector1, y::MultiVector1)
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    x_0 = x.e0
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    y_0 = y.e0
    ret_ = (+)((*)(x_1, y_1), (*)(x_2, y_2), (*)(x_3, y_3))
    ret_23 = (+)((*)(x_2, y_3), (*)(-1, x_3, y_2))
    ret_13 = (+)((*)(x_1, y_3), (*)(-1, x_3, y_1))
    ret_12 = (+)((*)(x_1, y_2), (*)(-1, x_2, y_1))
    ret_03 = (+)((*)(x_0, y_3), (*)(-1, x_3, y_0))
    ret_02 = (+)((*)(x_0, y_2), (*)(-1, x_2, y_0))
    ret_01 = (+)((*)(x_0, y_1), (*)(-1, x_1, y_0))
    return MultiVectorEven(; e = ret_, e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01)
end
function geomul(x::MultiVector1, y::MultiVector2)
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    x_0 = x.e0
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    ret_3 = (+)((*)(x_1, y_13), (*)(x_2, y_23))
    ret_2 = (+)((*)(x_1, y_12), (*)(-1, x_3, y_23))
    ret_1 = (+)((*)(-1, x_2, y_12), (*)(-1, x_3, y_13))
    ret_123 = (+)((*)(x_1, y_23), (*)(x_3, y_12), (*)(-1, x_2, y_13))
    ret_0 = (+)((*)(-1, x_1, y_01), (*)(-1, x_2, y_02), (*)(-1, x_3, y_03))
    ret_023 = (+)((*)(x_0, y_23), (*)(x_3, y_02), (*)(-1, x_2, y_03))
    ret_013 = (+)((*)(x_0, y_13), (*)(x_3, y_01), (*)(-1, x_1, y_03))
    ret_012 = (+)((*)(x_0, y_12), (*)(x_2, y_01), (*)(-1, x_1, y_02))
    return MultiVectorAll(; e3 = ret_3, e2 = ret_2, e1 = ret_1, e123 = ret_123, e0 = ret_0, e023 = ret_023, e013 = ret_013, e012 = ret_012)
end
function geomul(x::MultiVector1, y::MultiVector3)
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    x_0 = x.e0
    y_123 = y.e123
    y_023 = y.e023
    y_013 = y.e013
    y_012 = y.e012
    ret_23 = (*)(x_1, y_123)
    ret_13 = (*)(-1, x_2, y_123)
    ret_12 = (*)(x_3, y_123)
    ret_03 = (+)((*)(-1, x_1, y_013), (*)(-1, x_2, y_023))
    ret_02 = (+)((*)(x_3, y_023), (*)(-1, x_1, y_012))
    ret_01 = (+)((*)(x_2, y_012), (*)(x_3, y_013))
    ret_0123 = (+)((*)(x_0, y_123), (*)(x_2, y_013), (*)(-1, x_1, y_023), (*)(-1, x_3, y_012))
    return MultiVectorEven(; e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01, e0123 = ret_0123)
end
function geomul(x::MultiVector1, y::MultiVector4)
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    x_0 = x.e0
    y_0123 = y.e0123
    ret_023 = (*)(-1, x_1, y_0123)
    ret_013 = (*)(x_2, y_0123)
    ret_012 = (*)(-1, x_3, y_0123)
    return MultiVector3(; e023 = ret_023, e013 = ret_013, e012 = ret_012)
end
function geomul(x::MultiVector1, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function geomul(x::MultiVector2, y::MultiVectorAll)
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    y_ = y.e
    y_3 = y.e3
    y_2 = y.e2
    y_23 = y.e23
    y_1 = y.e1
    y_13 = y.e13
    y_12 = y.e12
    y_123 = y.e123
    y_0 = y.e0
    y_03 = y.e03
    y_02 = y.e02
    y_023 = y.e023
    y_01 = y.e01
    y_013 = y.e013
    y_012 = y.e012
    y_0123 = y.e0123
    ret_ = (+)((*)(-1, x_12, y_12), (*)(-1, x_13, y_13), (*)(-1, x_23, y_23))
    ret_3 = (+)((*)(-1, x_12, y_123), (*)(-1, x_13, y_1), (*)(-1, x_23, y_2))
    ret_2 = (+)((*)(x_13, y_123), (*)(x_23, y_3), (*)(-1, x_12, y_1))
    ret_23 = (+)((*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_12, y_13))
    ret_1 = (+)((*)(x_12, y_2), (*)(x_13, y_3), (*)(-1, x_23, y_123))
    ret_13 = (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_23, y_12))
    ret_12 = (+)((*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_13, y_23))
    ret_123 = (+)((*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_13, y_2))
    ret_0 = (+)((*)(x_01, y_1), (*)(x_02, y_2), (*)(x_03, y_3), (*)(-1, x_12, y_012), (*)(-1, x_13, y_013), (*)(-1, x_23, y_023))
    ret_03 = (+)((*)(x_01, y_13), (*)(x_02, y_23), (*)(x_03, y_), (*)(-1, x_12, y_0123), (*)(-1, x_13, y_01), (*)(-1, x_23, y_02))
    ret_02 = (+)((*)(x_01, y_12), (*)(x_02, y_), (*)(x_13, y_0123), (*)(x_23, y_03), (*)(-1, x_03, y_23), (*)(-1, x_12, y_01))
    ret_023 = (+)((*)(x_01, y_123), (*)(x_02, y_3), (*)(x_13, y_012), (*)(x_23, y_0), (*)(-1, x_03, y_2), (*)(-1, x_12, y_013))
    ret_01 = (+)((*)(x_01, y_), (*)(x_12, y_02), (*)(x_13, y_03), (*)(-1, x_02, y_12), (*)(-1, x_03, y_13), (*)(-1, x_23, y_0123))
    ret_013 = (+)((*)(x_01, y_3), (*)(x_12, y_023), (*)(x_13, y_0), (*)(-1, x_02, y_123), (*)(-1, x_03, y_1), (*)(-1, x_23, y_012))
    ret_012 = (+)((*)(x_01, y_2), (*)(x_03, y_123), (*)(x_12, y_0), (*)(x_23, y_013), (*)(-1, x_02, y_1), (*)(-1, x_13, y_023))
    ret_0123 = (+)((*)(x_01, y_23), (*)(x_03, y_12), (*)(x_12, y_03), (*)(x_23, y_01), (*)(-1, x_02, y_13), (*)(-1, x_13, y_02))
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function geomul(x::MultiVector2, y::MultiVectorEven)
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    y_ = y.e
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    y_0123 = y.e0123
    ret_ = (+)((*)(-1, x_12, y_12), (*)(-1, x_13, y_13), (*)(-1, x_23, y_23))
    ret_23 = (+)((*)(x_13, y_12), (*)(x_23, y_), (*)(-1, x_12, y_13))
    ret_13 = (+)((*)(x_12, y_23), (*)(x_13, y_), (*)(-1, x_23, y_12))
    ret_12 = (+)((*)(x_12, y_), (*)(x_23, y_13), (*)(-1, x_13, y_23))
    ret_03 = (+)((*)(x_01, y_13), (*)(x_02, y_23), (*)(x_03, y_), (*)(-1, x_12, y_0123), (*)(-1, x_13, y_01), (*)(-1, x_23, y_02))
    ret_02 = (+)((*)(x_01, y_12), (*)(x_02, y_), (*)(x_13, y_0123), (*)(x_23, y_03), (*)(-1, x_03, y_23), (*)(-1, x_12, y_01))
    ret_01 = (+)((*)(x_01, y_), (*)(x_12, y_02), (*)(x_13, y_03), (*)(-1, x_02, y_12), (*)(-1, x_03, y_13), (*)(-1, x_23, y_0123))
    ret_0123 = (+)((*)(x_01, y_23), (*)(x_03, y_12), (*)(x_12, y_03), (*)(x_23, y_01), (*)(-1, x_02, y_13), (*)(-1, x_13, y_02))
    return MultiVectorEven(; e = ret_, e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01, e0123 = ret_0123)
end
function geomul(x::MultiVector2, y::MultiVector0)
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    y_ = y.e
    ret_23 = (*)(x_23, y_)
    ret_13 = (*)(x_13, y_)
    ret_12 = (*)(x_12, y_)
    ret_03 = (*)(x_03, y_)
    ret_02 = (*)(x_02, y_)
    ret_01 = (*)(x_01, y_)
    return MultiVector2(; e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01)
end
function geomul(x::MultiVector2, y::MultiVector1)
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    y_0 = y.e0
    ret_3 = (+)((*)(-1, x_13, y_1), (*)(-1, x_23, y_2))
    ret_2 = (+)((*)(x_23, y_3), (*)(-1, x_12, y_1))
    ret_1 = (+)((*)(x_12, y_2), (*)(x_13, y_3))
    ret_123 = (+)((*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_13, y_2))
    ret_0 = (+)((*)(x_01, y_1), (*)(x_02, y_2), (*)(x_03, y_3))
    ret_023 = (+)((*)(x_02, y_3), (*)(x_23, y_0), (*)(-1, x_03, y_2))
    ret_013 = (+)((*)(x_01, y_3), (*)(x_13, y_0), (*)(-1, x_03, y_1))
    ret_012 = (+)((*)(x_01, y_2), (*)(x_12, y_0), (*)(-1, x_02, y_1))
    return MultiVectorAll(; e3 = ret_3, e2 = ret_2, e1 = ret_1, e123 = ret_123, e0 = ret_0, e023 = ret_023, e013 = ret_013, e012 = ret_012)
end
function geomul(x::MultiVector2, y::MultiVector2)
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    ret_ = (+)((*)(-1, x_12, y_12), (*)(-1, x_13, y_13), (*)(-1, x_23, y_23))
    ret_23 = (+)((*)(x_13, y_12), (*)(-1, x_12, y_13))
    ret_13 = (+)((*)(x_12, y_23), (*)(-1, x_23, y_12))
    ret_12 = (+)((*)(x_23, y_13), (*)(-1, x_13, y_23))
    ret_03 = (+)((*)(x_01, y_13), (*)(x_02, y_23), (*)(-1, x_13, y_01), (*)(-1, x_23, y_02))
    ret_02 = (+)((*)(x_01, y_12), (*)(x_23, y_03), (*)(-1, x_03, y_23), (*)(-1, x_12, y_01))
    ret_01 = (+)((*)(x_12, y_02), (*)(x_13, y_03), (*)(-1, x_02, y_12), (*)(-1, x_03, y_13))
    ret_0123 = (+)((*)(x_01, y_23), (*)(x_03, y_12), (*)(x_12, y_03), (*)(x_23, y_01), (*)(-1, x_02, y_13), (*)(-1, x_13, y_02))
    return MultiVectorEven(; e = ret_, e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01, e0123 = ret_0123)
end
function geomul(x::MultiVector2, y::MultiVector3)
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    y_123 = y.e123
    y_023 = y.e023
    y_013 = y.e013
    y_012 = y.e012
    ret_3 = (*)(-1, x_12, y_123)
    ret_2 = (*)(x_13, y_123)
    ret_1 = (*)(-1, x_23, y_123)
    ret_0 = (+)((*)(-1, x_12, y_012), (*)(-1, x_13, y_013), (*)(-1, x_23, y_023))
    ret_023 = (+)((*)(x_01, y_123), (*)(x_13, y_012), (*)(-1, x_12, y_013))
    ret_013 = (+)((*)(x_12, y_023), (*)(-1, x_02, y_123), (*)(-1, x_23, y_012))
    ret_012 = (+)((*)(x_03, y_123), (*)(x_23, y_013), (*)(-1, x_13, y_023))
    return MultiVectorAll(; e3 = ret_3, e2 = ret_2, e1 = ret_1, e0 = ret_0, e023 = ret_023, e013 = ret_013, e012 = ret_012)
end
function geomul(x::MultiVector2, y::MultiVector4)
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    y_0123 = y.e0123
    ret_03 = (*)(-1, x_12, y_0123)
    ret_02 = (*)(x_13, y_0123)
    ret_01 = (*)(-1, x_23, y_0123)
    return MultiVector2(; e03 = ret_03, e02 = ret_02, e01 = ret_01)
end
function geomul(x::MultiVector2, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function geomul(x::MultiVector3, y::MultiVectorAll)
    x_123 = x.e123
    x_023 = x.e023
    x_013 = x.e013
    x_012 = x.e012
    y_ = y.e
    y_3 = y.e3
    y_2 = y.e2
    y_23 = y.e23
    y_1 = y.e1
    y_13 = y.e13
    y_12 = y.e12
    y_123 = y.e123
    y_0 = y.e0
    y_03 = y.e03
    y_02 = y.e02
    y_023 = y.e023
    y_01 = y.e01
    y_013 = y.e013
    y_012 = y.e012
    y_0123 = y.e0123
    ret_ = (*)(-1, x_123, y_123)
    ret_3 = (*)(-1, x_123, y_12)
    ret_2 = (*)(x_123, y_13)
    ret_23 = (*)(x_123, y_1)
    ret_1 = (*)(-1, x_123, y_23)
    ret_13 = (*)(-1, x_123, y_2)
    ret_12 = (*)(x_123, y_3)
    ret_123 = (*)(x_123, y_)
    ret_0 = (+)((*)(x_123, y_0123), (*)(-1, x_012, y_12), (*)(-1, x_013, y_13), (*)(-1, x_023, y_23))
    ret_03 = (+)((*)(x_123, y_012), (*)(-1, x_012, y_123), (*)(-1, x_013, y_1), (*)(-1, x_023, y_2))
    ret_02 = (+)((*)(x_013, y_123), (*)(x_023, y_3), (*)(-1, x_012, y_1), (*)(-1, x_123, y_013))
    ret_023 = (+)((*)(x_013, y_12), (*)(x_023, y_), (*)(-1, x_012, y_13), (*)(-1, x_123, y_01))
    ret_01 = (+)((*)(x_012, y_2), (*)(x_013, y_3), (*)(x_123, y_023), (*)(-1, x_023, y_123))
    ret_013 = (+)((*)(x_012, y_23), (*)(x_013, y_), (*)(x_123, y_02), (*)(-1, x_023, y_12))
    ret_012 = (+)((*)(x_012, y_), (*)(x_023, y_13), (*)(-1, x_013, y_23), (*)(-1, x_123, y_03))
    ret_0123 = (+)((*)(x_012, y_3), (*)(x_023, y_1), (*)(-1, x_013, y_2), (*)(-1, x_123, y_0))
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function geomul(x::MultiVector3, y::MultiVectorEven)
    x_123 = x.e123
    x_023 = x.e023
    x_013 = x.e013
    x_012 = x.e012
    y_ = y.e
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    y_0123 = y.e0123
    ret_3 = (*)(-1, x_123, y_12)
    ret_2 = (*)(x_123, y_13)
    ret_1 = (*)(-1, x_123, y_23)
    ret_123 = (*)(x_123, y_)
    ret_0 = (+)((*)(x_123, y_0123), (*)(-1, x_012, y_12), (*)(-1, x_013, y_13), (*)(-1, x_023, y_23))
    ret_023 = (+)((*)(x_013, y_12), (*)(x_023, y_), (*)(-1, x_012, y_13), (*)(-1, x_123, y_01))
    ret_013 = (+)((*)(x_012, y_23), (*)(x_013, y_), (*)(x_123, y_02), (*)(-1, x_023, y_12))
    ret_012 = (+)((*)(x_012, y_), (*)(x_023, y_13), (*)(-1, x_013, y_23), (*)(-1, x_123, y_03))
    return MultiVectorAll(; e3 = ret_3, e2 = ret_2, e1 = ret_1, e123 = ret_123, e0 = ret_0, e023 = ret_023, e013 = ret_013, e012 = ret_012)
end
function geomul(x::MultiVector3, y::MultiVector0)
    x_123 = x.e123
    x_023 = x.e023
    x_013 = x.e013
    x_012 = x.e012
    y_ = y.e
    ret_123 = (*)(x_123, y_)
    ret_023 = (*)(x_023, y_)
    ret_013 = (*)(x_013, y_)
    ret_012 = (*)(x_012, y_)
    return MultiVector3(; e123 = ret_123, e023 = ret_023, e013 = ret_013, e012 = ret_012)
end
function geomul(x::MultiVector3, y::MultiVector1)
    x_123 = x.e123
    x_023 = x.e023
    x_013 = x.e013
    x_012 = x.e012
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    y_0 = y.e0
    ret_23 = (*)(x_123, y_1)
    ret_13 = (*)(-1, x_123, y_2)
    ret_12 = (*)(x_123, y_3)
    ret_03 = (+)((*)(-1, x_013, y_1), (*)(-1, x_023, y_2))
    ret_02 = (+)((*)(x_023, y_3), (*)(-1, x_012, y_1))
    ret_01 = (+)((*)(x_012, y_2), (*)(x_013, y_3))
    ret_0123 = (+)((*)(x_012, y_3), (*)(x_023, y_1), (*)(-1, x_013, y_2), (*)(-1, x_123, y_0))
    return MultiVectorEven(; e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01, e0123 = ret_0123)
end
function geomul(x::MultiVector3, y::MultiVector2)
    x_123 = x.e123
    x_023 = x.e023
    x_013 = x.e013
    x_012 = x.e012
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    ret_3 = (*)(-1, x_123, y_12)
    ret_2 = (*)(x_123, y_13)
    ret_1 = (*)(-1, x_123, y_23)
    ret_0 = (+)((*)(-1, x_012, y_12), (*)(-1, x_013, y_13), (*)(-1, x_023, y_23))
    ret_023 = (+)((*)(x_013, y_12), (*)(-1, x_012, y_13), (*)(-1, x_123, y_01))
    ret_013 = (+)((*)(x_012, y_23), (*)(x_123, y_02), (*)(-1, x_023, y_12))
    ret_012 = (+)((*)(x_023, y_13), (*)(-1, x_013, y_23), (*)(-1, x_123, y_03))
    return MultiVectorAll(; e3 = ret_3, e2 = ret_2, e1 = ret_1, e0 = ret_0, e023 = ret_023, e013 = ret_013, e012 = ret_012)
end
function geomul(x::MultiVector3, y::MultiVector3)
    x_123 = x.e123
    x_023 = x.e023
    x_013 = x.e013
    x_012 = x.e012
    y_123 = y.e123
    y_023 = y.e023
    y_013 = y.e013
    y_012 = y.e012
    ret_ = (*)(-1, x_123, y_123)
    ret_03 = (+)((*)(x_123, y_012), (*)(-1, x_012, y_123))
    ret_02 = (+)((*)(x_013, y_123), (*)(-1, x_123, y_013))
    ret_01 = (+)((*)(x_123, y_023), (*)(-1, x_023, y_123))
    return MultiVectorEven(; e = ret_, e03 = ret_03, e02 = ret_02, e01 = ret_01)
end
function geomul(x::MultiVector3, y::MultiVector4)
    x_123 = x.e123
    x_023 = x.e023
    x_013 = x.e013
    x_012 = x.e012
    y_0123 = y.e0123
    ret_0 = (*)(x_123, y_0123)
    return MultiVector1(; e0 = ret_0)
end
function geomul(x::MultiVector3, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function geomul(x::MultiVector4, y::MultiVectorAll)
    x_0123 = x.e0123
    y_ = y.e
    y_3 = y.e3
    y_2 = y.e2
    y_23 = y.e23
    y_1 = y.e1
    y_13 = y.e13
    y_12 = y.e12
    y_123 = y.e123
    y_0 = y.e0
    y_03 = y.e03
    y_02 = y.e02
    y_023 = y.e023
    y_01 = y.e01
    y_013 = y.e013
    y_012 = y.e012
    y_0123 = y.e0123
    ret_0 = (*)(-1, x_0123, y_123)
    ret_03 = (*)(-1, x_0123, y_12)
    ret_02 = (*)(x_0123, y_13)
    ret_023 = (*)(x_0123, y_1)
    ret_01 = (*)(-1, x_0123, y_23)
    ret_013 = (*)(-1, x_0123, y_2)
    ret_012 = (*)(x_0123, y_3)
    ret_0123 = (*)(x_0123, y_)
    return MultiVectorAll(; e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function geomul(x::MultiVector4, y::MultiVectorEven)
    x_0123 = x.e0123
    y_ = y.e
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    y_0123 = y.e0123
    ret_03 = (*)(-1, x_0123, y_12)
    ret_02 = (*)(x_0123, y_13)
    ret_01 = (*)(-1, x_0123, y_23)
    ret_0123 = (*)(x_0123, y_)
    return MultiVectorEven(; e03 = ret_03, e02 = ret_02, e01 = ret_01, e0123 = ret_0123)
end
function geomul(x::MultiVector4, y::MultiVector0)
    x_0123 = x.e0123
    y_ = y.e
    ret_0123 = (*)(x_0123, y_)
    return MultiVector4(; e0123 = ret_0123)
end
function geomul(x::MultiVector4, y::MultiVector1)
    x_0123 = x.e0123
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    y_0 = y.e0
    ret_023 = (*)(x_0123, y_1)
    ret_013 = (*)(-1, x_0123, y_2)
    ret_012 = (*)(x_0123, y_3)
    return MultiVector3(; e023 = ret_023, e013 = ret_013, e012 = ret_012)
end
function geomul(x::MultiVector4, y::MultiVector2)
    x_0123 = x.e0123
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    ret_03 = (*)(-1, x_0123, y_12)
    ret_02 = (*)(x_0123, y_13)
    ret_01 = (*)(-1, x_0123, y_23)
    return MultiVector2(; e03 = ret_03, e02 = ret_02, e01 = ret_01)
end
function geomul(x::MultiVector4, y::MultiVector3)
    x_0123 = x.e0123
    y_123 = y.e123
    y_023 = y.e023
    y_013 = y.e013
    y_012 = y.e012
    ret_0 = (*)(-1, x_0123, y_123)
    return MultiVector1(; e0 = ret_0)
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
    x_3 = x.e3
    x_2 = x.e2
    x_23 = x.e23
    x_1 = x.e1
    x_13 = x.e13
    x_12 = x.e12
    x_123 = x.e123
    x_0 = x.e0
    x_03 = x.e03
    x_02 = x.e02
    x_023 = x.e023
    x_01 = x.e01
    x_013 = x.e013
    x_012 = x.e012
    x_0123 = x.e0123
    y_ = y.e
    y_3 = y.e3
    y_2 = y.e2
    y_23 = y.e23
    y_1 = y.e1
    y_13 = y.e13
    y_12 = y.e12
    y_123 = y.e123
    y_0 = y.e0
    y_03 = y.e03
    y_02 = y.e02
    y_023 = y.e023
    y_01 = y.e01
    y_013 = y.e013
    y_012 = y.e012
    y_0123 = y.e0123
    ret_ = (*)(x_, y_)
    ret_3 = (+)((*)(x_, y_3), (*)(x_3, y_))
    ret_2 = (+)((*)(x_, y_2), (*)(x_2, y_))
    ret_23 = (+)((*)(x_, y_23), (*)(x_2, y_3), (*)(x_23, y_), (*)(-1, x_3, y_2))
    ret_1 = (+)((*)(x_, y_1), (*)(x_1, y_))
    ret_13 = (+)((*)(x_, y_13), (*)(x_1, y_3), (*)(x_13, y_), (*)(-1, x_3, y_1))
    ret_12 = (+)((*)(x_, y_12), (*)(x_1, y_2), (*)(x_12, y_), (*)(-1, x_2, y_1))
    ret_123 = (+)((*)(x_, y_123), (*)(x_1, y_23), (*)(x_12, y_3), (*)(x_123, y_), (*)(x_23, y_1), (*)(x_3, y_12), (*)(-1, x_13, y_2), (*)(-1, x_2, y_13))
    ret_0 = (+)((*)(x_, y_0), (*)(x_0, y_))
    ret_03 = (+)((*)(x_, y_03), (*)(x_0, y_3), (*)(x_03, y_), (*)(-1, x_3, y_0))
    ret_02 = (+)((*)(x_, y_02), (*)(x_0, y_2), (*)(x_02, y_), (*)(-1, x_2, y_0))
    ret_023 = (+)((*)(x_, y_023), (*)(x_0, y_23), (*)(x_02, y_3), (*)(x_023, y_), (*)(x_23, y_0), (*)(x_3, y_02), (*)(-1, x_03, y_2), (*)(-1, x_2, y_03))
    ret_01 = (+)((*)(x_, y_01), (*)(x_0, y_1), (*)(x_01, y_), (*)(-1, x_1, y_0))
    ret_013 = (+)((*)(x_, y_013), (*)(x_0, y_13), (*)(x_01, y_3), (*)(x_013, y_), (*)(x_13, y_0), (*)(x_3, y_01), (*)(-1, x_03, y_1), (*)(-1, x_1, y_03))
    ret_012 = (+)((*)(x_, y_012), (*)(x_0, y_12), (*)(x_01, y_2), (*)(x_012, y_), (*)(x_12, y_0), (*)(x_2, y_01), (*)(-1, x_02, y_1), (*)(-1, x_1, y_02))
    ret_0123 = (+)((*)(x_, y_0123), (*)(x_0, y_123), (*)(x_01, y_23), (*)(x_012, y_3), (*)(x_0123, y_), (*)(x_023, y_1), (*)(x_03, y_12), (*)(x_12, y_03), (*)(x_2, y_013), (*)(x_23, y_01), (*)(-1, x_013, y_2), (*)(-1, x_02, y_13), (*)(-1, x_1, y_023), (*)(-1, x_123, y_0), (*)(-1, x_13, y_02), (*)(-1, x_3, y_012))
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function wedge(x::MultiVectorAll, y::MultiVectorEven)
    x_ = x.e
    x_3 = x.e3
    x_2 = x.e2
    x_23 = x.e23
    x_1 = x.e1
    x_13 = x.e13
    x_12 = x.e12
    x_123 = x.e123
    x_0 = x.e0
    x_03 = x.e03
    x_02 = x.e02
    x_023 = x.e023
    x_01 = x.e01
    x_013 = x.e013
    x_012 = x.e012
    x_0123 = x.e0123
    y_ = y.e
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    y_0123 = y.e0123
    ret_ = (*)(x_, y_)
    ret_3 = (*)(x_3, y_)
    ret_2 = (*)(x_2, y_)
    ret_23 = (+)((*)(x_, y_23), (*)(x_23, y_))
    ret_1 = (*)(x_1, y_)
    ret_13 = (+)((*)(x_, y_13), (*)(x_13, y_))
    ret_12 = (+)((*)(x_, y_12), (*)(x_12, y_))
    ret_123 = (+)((*)(x_1, y_23), (*)(x_123, y_), (*)(x_3, y_12), (*)(-1, x_2, y_13))
    ret_0 = (*)(x_0, y_)
    ret_03 = (+)((*)(x_, y_03), (*)(x_03, y_))
    ret_02 = (+)((*)(x_, y_02), (*)(x_02, y_))
    ret_023 = (+)((*)(x_0, y_23), (*)(x_023, y_), (*)(x_3, y_02), (*)(-1, x_2, y_03))
    ret_01 = (+)((*)(x_, y_01), (*)(x_01, y_))
    ret_013 = (+)((*)(x_0, y_13), (*)(x_013, y_), (*)(x_3, y_01), (*)(-1, x_1, y_03))
    ret_012 = (+)((*)(x_0, y_12), (*)(x_012, y_), (*)(x_2, y_01), (*)(-1, x_1, y_02))
    ret_0123 = (+)((*)(x_, y_0123), (*)(x_01, y_23), (*)(x_0123, y_), (*)(x_03, y_12), (*)(x_12, y_03), (*)(x_23, y_01), (*)(-1, x_02, y_13), (*)(-1, x_13, y_02))
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function wedge(x::MultiVectorAll, y::MultiVector0)
    x_ = x.e
    x_3 = x.e3
    x_2 = x.e2
    x_23 = x.e23
    x_1 = x.e1
    x_13 = x.e13
    x_12 = x.e12
    x_123 = x.e123
    x_0 = x.e0
    x_03 = x.e03
    x_02 = x.e02
    x_023 = x.e023
    x_01 = x.e01
    x_013 = x.e013
    x_012 = x.e012
    x_0123 = x.e0123
    y_ = y.e
    ret_ = (*)(x_, y_)
    ret_3 = (*)(x_3, y_)
    ret_2 = (*)(x_2, y_)
    ret_23 = (*)(x_23, y_)
    ret_1 = (*)(x_1, y_)
    ret_13 = (*)(x_13, y_)
    ret_12 = (*)(x_12, y_)
    ret_123 = (*)(x_123, y_)
    ret_0 = (*)(x_0, y_)
    ret_03 = (*)(x_03, y_)
    ret_02 = (*)(x_02, y_)
    ret_023 = (*)(x_023, y_)
    ret_01 = (*)(x_01, y_)
    ret_013 = (*)(x_013, y_)
    ret_012 = (*)(x_012, y_)
    ret_0123 = (*)(x_0123, y_)
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function wedge(x::MultiVectorAll, y::MultiVector1)
    x_ = x.e
    x_3 = x.e3
    x_2 = x.e2
    x_23 = x.e23
    x_1 = x.e1
    x_13 = x.e13
    x_12 = x.e12
    x_123 = x.e123
    x_0 = x.e0
    x_03 = x.e03
    x_02 = x.e02
    x_023 = x.e023
    x_01 = x.e01
    x_013 = x.e013
    x_012 = x.e012
    x_0123 = x.e0123
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    y_0 = y.e0
    ret_3 = (*)(x_, y_3)
    ret_2 = (*)(x_, y_2)
    ret_23 = (+)((*)(x_2, y_3), (*)(-1, x_3, y_2))
    ret_1 = (*)(x_, y_1)
    ret_13 = (+)((*)(x_1, y_3), (*)(-1, x_3, y_1))
    ret_12 = (+)((*)(x_1, y_2), (*)(-1, x_2, y_1))
    ret_123 = (+)((*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_13, y_2))
    ret_0 = (*)(x_, y_0)
    ret_03 = (+)((*)(x_0, y_3), (*)(-1, x_3, y_0))
    ret_02 = (+)((*)(x_0, y_2), (*)(-1, x_2, y_0))
    ret_023 = (+)((*)(x_02, y_3), (*)(x_23, y_0), (*)(-1, x_03, y_2))
    ret_01 = (+)((*)(x_0, y_1), (*)(-1, x_1, y_0))
    ret_013 = (+)((*)(x_01, y_3), (*)(x_13, y_0), (*)(-1, x_03, y_1))
    ret_012 = (+)((*)(x_01, y_2), (*)(x_12, y_0), (*)(-1, x_02, y_1))
    ret_0123 = (+)((*)(x_012, y_3), (*)(x_023, y_1), (*)(-1, x_013, y_2), (*)(-1, x_123, y_0))
    return MultiVectorAll(; e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function wedge(x::MultiVectorAll, y::MultiVector2)
    x_ = x.e
    x_3 = x.e3
    x_2 = x.e2
    x_23 = x.e23
    x_1 = x.e1
    x_13 = x.e13
    x_12 = x.e12
    x_123 = x.e123
    x_0 = x.e0
    x_03 = x.e03
    x_02 = x.e02
    x_023 = x.e023
    x_01 = x.e01
    x_013 = x.e013
    x_012 = x.e012
    x_0123 = x.e0123
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    ret_23 = (*)(x_, y_23)
    ret_13 = (*)(x_, y_13)
    ret_12 = (*)(x_, y_12)
    ret_123 = (+)((*)(x_1, y_23), (*)(x_3, y_12), (*)(-1, x_2, y_13))
    ret_03 = (*)(x_, y_03)
    ret_02 = (*)(x_, y_02)
    ret_023 = (+)((*)(x_0, y_23), (*)(x_3, y_02), (*)(-1, x_2, y_03))
    ret_01 = (*)(x_, y_01)
    ret_013 = (+)((*)(x_0, y_13), (*)(x_3, y_01), (*)(-1, x_1, y_03))
    ret_012 = (+)((*)(x_0, y_12), (*)(x_2, y_01), (*)(-1, x_1, y_02))
    ret_0123 = (+)((*)(x_01, y_23), (*)(x_03, y_12), (*)(x_12, y_03), (*)(x_23, y_01), (*)(-1, x_02, y_13), (*)(-1, x_13, y_02))
    return MultiVectorAll(; e23 = ret_23, e13 = ret_13, e12 = ret_12, e123 = ret_123, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function wedge(x::MultiVectorAll, y::MultiVector3)
    x_ = x.e
    x_3 = x.e3
    x_2 = x.e2
    x_23 = x.e23
    x_1 = x.e1
    x_13 = x.e13
    x_12 = x.e12
    x_123 = x.e123
    x_0 = x.e0
    x_03 = x.e03
    x_02 = x.e02
    x_023 = x.e023
    x_01 = x.e01
    x_013 = x.e013
    x_012 = x.e012
    x_0123 = x.e0123
    y_123 = y.e123
    y_023 = y.e023
    y_013 = y.e013
    y_012 = y.e012
    ret_123 = (*)(x_, y_123)
    ret_023 = (*)(x_, y_023)
    ret_013 = (*)(x_, y_013)
    ret_012 = (*)(x_, y_012)
    ret_0123 = (+)((*)(x_0, y_123), (*)(x_2, y_013), (*)(-1, x_1, y_023), (*)(-1, x_3, y_012))
    return MultiVectorAll(; e123 = ret_123, e023 = ret_023, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function wedge(x::MultiVectorAll, y::MultiVector4)
    x_ = x.e
    x_3 = x.e3
    x_2 = x.e2
    x_23 = x.e23
    x_1 = x.e1
    x_13 = x.e13
    x_12 = x.e12
    x_123 = x.e123
    x_0 = x.e0
    x_03 = x.e03
    x_02 = x.e02
    x_023 = x.e023
    x_01 = x.e01
    x_013 = x.e013
    x_012 = x.e012
    x_0123 = x.e0123
    y_0123 = y.e0123
    ret_0123 = (*)(x_, y_0123)
    return MultiVector4(; e0123 = ret_0123)
end
function wedge(x::MultiVectorAll, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function wedge(x::MultiVectorEven, y::MultiVectorAll)
    x_ = x.e
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    x_0123 = x.e0123
    y_ = y.e
    y_3 = y.e3
    y_2 = y.e2
    y_23 = y.e23
    y_1 = y.e1
    y_13 = y.e13
    y_12 = y.e12
    y_123 = y.e123
    y_0 = y.e0
    y_03 = y.e03
    y_02 = y.e02
    y_023 = y.e023
    y_01 = y.e01
    y_013 = y.e013
    y_012 = y.e012
    y_0123 = y.e0123
    ret_ = (*)(x_, y_)
    ret_3 = (*)(x_, y_3)
    ret_2 = (*)(x_, y_2)
    ret_23 = (+)((*)(x_, y_23), (*)(x_23, y_))
    ret_1 = (*)(x_, y_1)
    ret_13 = (+)((*)(x_, y_13), (*)(x_13, y_))
    ret_12 = (+)((*)(x_, y_12), (*)(x_12, y_))
    ret_123 = (+)((*)(x_, y_123), (*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_13, y_2))
    ret_0 = (*)(x_, y_0)
    ret_03 = (+)((*)(x_, y_03), (*)(x_03, y_))
    ret_02 = (+)((*)(x_, y_02), (*)(x_02, y_))
    ret_023 = (+)((*)(x_, y_023), (*)(x_02, y_3), (*)(x_23, y_0), (*)(-1, x_03, y_2))
    ret_01 = (+)((*)(x_, y_01), (*)(x_01, y_))
    ret_013 = (+)((*)(x_, y_013), (*)(x_01, y_3), (*)(x_13, y_0), (*)(-1, x_03, y_1))
    ret_012 = (+)((*)(x_, y_012), (*)(x_01, y_2), (*)(x_12, y_0), (*)(-1, x_02, y_1))
    ret_0123 = (+)((*)(x_, y_0123), (*)(x_01, y_23), (*)(x_0123, y_), (*)(x_03, y_12), (*)(x_12, y_03), (*)(x_23, y_01), (*)(-1, x_02, y_13), (*)(-1, x_13, y_02))
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function wedge(x::MultiVectorEven, y::MultiVectorEven)
    x_ = x.e
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    x_0123 = x.e0123
    y_ = y.e
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    y_0123 = y.e0123
    ret_ = (*)(x_, y_)
    ret_23 = (+)((*)(x_, y_23), (*)(x_23, y_))
    ret_13 = (+)((*)(x_, y_13), (*)(x_13, y_))
    ret_12 = (+)((*)(x_, y_12), (*)(x_12, y_))
    ret_03 = (+)((*)(x_, y_03), (*)(x_03, y_))
    ret_02 = (+)((*)(x_, y_02), (*)(x_02, y_))
    ret_01 = (+)((*)(x_, y_01), (*)(x_01, y_))
    ret_0123 = (+)((*)(x_, y_0123), (*)(x_01, y_23), (*)(x_0123, y_), (*)(x_03, y_12), (*)(x_12, y_03), (*)(x_23, y_01), (*)(-1, x_02, y_13), (*)(-1, x_13, y_02))
    return MultiVectorEven(; e = ret_, e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01, e0123 = ret_0123)
end
function wedge(x::MultiVectorEven, y::MultiVector0)
    x_ = x.e
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    x_0123 = x.e0123
    y_ = y.e
    ret_ = (*)(x_, y_)
    ret_23 = (*)(x_23, y_)
    ret_13 = (*)(x_13, y_)
    ret_12 = (*)(x_12, y_)
    ret_03 = (*)(x_03, y_)
    ret_02 = (*)(x_02, y_)
    ret_01 = (*)(x_01, y_)
    ret_0123 = (*)(x_0123, y_)
    return MultiVectorEven(; e = ret_, e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01, e0123 = ret_0123)
end
function wedge(x::MultiVectorEven, y::MultiVector1)
    x_ = x.e
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    x_0123 = x.e0123
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    y_0 = y.e0
    ret_3 = (*)(x_, y_3)
    ret_2 = (*)(x_, y_2)
    ret_1 = (*)(x_, y_1)
    ret_123 = (+)((*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_13, y_2))
    ret_0 = (*)(x_, y_0)
    ret_023 = (+)((*)(x_02, y_3), (*)(x_23, y_0), (*)(-1, x_03, y_2))
    ret_013 = (+)((*)(x_01, y_3), (*)(x_13, y_0), (*)(-1, x_03, y_1))
    ret_012 = (+)((*)(x_01, y_2), (*)(x_12, y_0), (*)(-1, x_02, y_1))
    return MultiVectorAll(; e3 = ret_3, e2 = ret_2, e1 = ret_1, e123 = ret_123, e0 = ret_0, e023 = ret_023, e013 = ret_013, e012 = ret_012)
end
function wedge(x::MultiVectorEven, y::MultiVector2)
    x_ = x.e
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    x_0123 = x.e0123
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    ret_23 = (*)(x_, y_23)
    ret_13 = (*)(x_, y_13)
    ret_12 = (*)(x_, y_12)
    ret_03 = (*)(x_, y_03)
    ret_02 = (*)(x_, y_02)
    ret_01 = (*)(x_, y_01)
    ret_0123 = (+)((*)(x_01, y_23), (*)(x_03, y_12), (*)(x_12, y_03), (*)(x_23, y_01), (*)(-1, x_02, y_13), (*)(-1, x_13, y_02))
    return MultiVectorEven(; e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01, e0123 = ret_0123)
end
function wedge(x::MultiVectorEven, y::MultiVector3)
    x_ = x.e
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    x_0123 = x.e0123
    y_123 = y.e123
    y_023 = y.e023
    y_013 = y.e013
    y_012 = y.e012
    ret_123 = (*)(x_, y_123)
    ret_023 = (*)(x_, y_023)
    ret_013 = (*)(x_, y_013)
    ret_012 = (*)(x_, y_012)
    return MultiVector3(; e123 = ret_123, e023 = ret_023, e013 = ret_013, e012 = ret_012)
end
function wedge(x::MultiVectorEven, y::MultiVector4)
    x_ = x.e
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    x_0123 = x.e0123
    y_0123 = y.e0123
    ret_0123 = (*)(x_, y_0123)
    return MultiVector4(; e0123 = ret_0123)
end
function wedge(x::MultiVectorEven, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function wedge(x::MultiVector0, y::MultiVectorAll)
    x_ = x.e
    y_ = y.e
    y_3 = y.e3
    y_2 = y.e2
    y_23 = y.e23
    y_1 = y.e1
    y_13 = y.e13
    y_12 = y.e12
    y_123 = y.e123
    y_0 = y.e0
    y_03 = y.e03
    y_02 = y.e02
    y_023 = y.e023
    y_01 = y.e01
    y_013 = y.e013
    y_012 = y.e012
    y_0123 = y.e0123
    ret_ = (*)(x_, y_)
    ret_3 = (*)(x_, y_3)
    ret_2 = (*)(x_, y_2)
    ret_23 = (*)(x_, y_23)
    ret_1 = (*)(x_, y_1)
    ret_13 = (*)(x_, y_13)
    ret_12 = (*)(x_, y_12)
    ret_123 = (*)(x_, y_123)
    ret_0 = (*)(x_, y_0)
    ret_03 = (*)(x_, y_03)
    ret_02 = (*)(x_, y_02)
    ret_023 = (*)(x_, y_023)
    ret_01 = (*)(x_, y_01)
    ret_013 = (*)(x_, y_013)
    ret_012 = (*)(x_, y_012)
    ret_0123 = (*)(x_, y_0123)
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function wedge(x::MultiVector0, y::MultiVectorEven)
    x_ = x.e
    y_ = y.e
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    y_0123 = y.e0123
    ret_ = (*)(x_, y_)
    ret_23 = (*)(x_, y_23)
    ret_13 = (*)(x_, y_13)
    ret_12 = (*)(x_, y_12)
    ret_03 = (*)(x_, y_03)
    ret_02 = (*)(x_, y_02)
    ret_01 = (*)(x_, y_01)
    ret_0123 = (*)(x_, y_0123)
    return MultiVectorEven(; e = ret_, e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01, e0123 = ret_0123)
end
function wedge(x::MultiVector0, y::MultiVector0)
    x_ = x.e
    y_ = y.e
    ret_ = (*)(x_, y_)
    return MultiVector0(; e = ret_)
end
function wedge(x::MultiVector0, y::MultiVector1)
    x_ = x.e
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    y_0 = y.e0
    ret_3 = (*)(x_, y_3)
    ret_2 = (*)(x_, y_2)
    ret_1 = (*)(x_, y_1)
    ret_0 = (*)(x_, y_0)
    return MultiVector1(; e3 = ret_3, e2 = ret_2, e1 = ret_1, e0 = ret_0)
end
function wedge(x::MultiVector0, y::MultiVector2)
    x_ = x.e
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    ret_23 = (*)(x_, y_23)
    ret_13 = (*)(x_, y_13)
    ret_12 = (*)(x_, y_12)
    ret_03 = (*)(x_, y_03)
    ret_02 = (*)(x_, y_02)
    ret_01 = (*)(x_, y_01)
    return MultiVector2(; e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01)
end
function wedge(x::MultiVector0, y::MultiVector3)
    x_ = x.e
    y_123 = y.e123
    y_023 = y.e023
    y_013 = y.e013
    y_012 = y.e012
    ret_123 = (*)(x_, y_123)
    ret_023 = (*)(x_, y_023)
    ret_013 = (*)(x_, y_013)
    ret_012 = (*)(x_, y_012)
    return MultiVector3(; e123 = ret_123, e023 = ret_023, e013 = ret_013, e012 = ret_012)
end
function wedge(x::MultiVector0, y::MultiVector4)
    x_ = x.e
    y_0123 = y.e0123
    ret_0123 = (*)(x_, y_0123)
    return MultiVector4(; e0123 = ret_0123)
end
function wedge(x::MultiVector0, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function wedge(x::MultiVector1, y::MultiVectorAll)
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    x_0 = x.e0
    y_ = y.e
    y_3 = y.e3
    y_2 = y.e2
    y_23 = y.e23
    y_1 = y.e1
    y_13 = y.e13
    y_12 = y.e12
    y_123 = y.e123
    y_0 = y.e0
    y_03 = y.e03
    y_02 = y.e02
    y_023 = y.e023
    y_01 = y.e01
    y_013 = y.e013
    y_012 = y.e012
    y_0123 = y.e0123
    ret_3 = (*)(x_3, y_)
    ret_2 = (*)(x_2, y_)
    ret_23 = (+)((*)(x_2, y_3), (*)(-1, x_3, y_2))
    ret_1 = (*)(x_1, y_)
    ret_13 = (+)((*)(x_1, y_3), (*)(-1, x_3, y_1))
    ret_12 = (+)((*)(x_1, y_2), (*)(-1, x_2, y_1))
    ret_123 = (+)((*)(x_1, y_23), (*)(x_3, y_12), (*)(-1, x_2, y_13))
    ret_0 = (*)(x_0, y_)
    ret_03 = (+)((*)(x_0, y_3), (*)(-1, x_3, y_0))
    ret_02 = (+)((*)(x_0, y_2), (*)(-1, x_2, y_0))
    ret_023 = (+)((*)(x_0, y_23), (*)(x_3, y_02), (*)(-1, x_2, y_03))
    ret_01 = (+)((*)(x_0, y_1), (*)(-1, x_1, y_0))
    ret_013 = (+)((*)(x_0, y_13), (*)(x_3, y_01), (*)(-1, x_1, y_03))
    ret_012 = (+)((*)(x_0, y_12), (*)(x_2, y_01), (*)(-1, x_1, y_02))
    ret_0123 = (+)((*)(x_0, y_123), (*)(x_2, y_013), (*)(-1, x_1, y_023), (*)(-1, x_3, y_012))
    return MultiVectorAll(; e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function wedge(x::MultiVector1, y::MultiVectorEven)
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    x_0 = x.e0
    y_ = y.e
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    y_0123 = y.e0123
    ret_3 = (*)(x_3, y_)
    ret_2 = (*)(x_2, y_)
    ret_1 = (*)(x_1, y_)
    ret_123 = (+)((*)(x_1, y_23), (*)(x_3, y_12), (*)(-1, x_2, y_13))
    ret_0 = (*)(x_0, y_)
    ret_023 = (+)((*)(x_0, y_23), (*)(x_3, y_02), (*)(-1, x_2, y_03))
    ret_013 = (+)((*)(x_0, y_13), (*)(x_3, y_01), (*)(-1, x_1, y_03))
    ret_012 = (+)((*)(x_0, y_12), (*)(x_2, y_01), (*)(-1, x_1, y_02))
    return MultiVectorAll(; e3 = ret_3, e2 = ret_2, e1 = ret_1, e123 = ret_123, e0 = ret_0, e023 = ret_023, e013 = ret_013, e012 = ret_012)
end
function wedge(x::MultiVector1, y::MultiVector0)
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    x_0 = x.e0
    y_ = y.e
    ret_3 = (*)(x_3, y_)
    ret_2 = (*)(x_2, y_)
    ret_1 = (*)(x_1, y_)
    ret_0 = (*)(x_0, y_)
    return MultiVector1(; e3 = ret_3, e2 = ret_2, e1 = ret_1, e0 = ret_0)
end
function wedge(x::MultiVector1, y::MultiVector1)
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    x_0 = x.e0
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    y_0 = y.e0
    ret_23 = (+)((*)(x_2, y_3), (*)(-1, x_3, y_2))
    ret_13 = (+)((*)(x_1, y_3), (*)(-1, x_3, y_1))
    ret_12 = (+)((*)(x_1, y_2), (*)(-1, x_2, y_1))
    ret_03 = (+)((*)(x_0, y_3), (*)(-1, x_3, y_0))
    ret_02 = (+)((*)(x_0, y_2), (*)(-1, x_2, y_0))
    ret_01 = (+)((*)(x_0, y_1), (*)(-1, x_1, y_0))
    return MultiVector2(; e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01)
end
function wedge(x::MultiVector1, y::MultiVector2)
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    x_0 = x.e0
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    ret_123 = (+)((*)(x_1, y_23), (*)(x_3, y_12), (*)(-1, x_2, y_13))
    ret_023 = (+)((*)(x_0, y_23), (*)(x_3, y_02), (*)(-1, x_2, y_03))
    ret_013 = (+)((*)(x_0, y_13), (*)(x_3, y_01), (*)(-1, x_1, y_03))
    ret_012 = (+)((*)(x_0, y_12), (*)(x_2, y_01), (*)(-1, x_1, y_02))
    return MultiVector3(; e123 = ret_123, e023 = ret_023, e013 = ret_013, e012 = ret_012)
end
function wedge(x::MultiVector1, y::MultiVector3)
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    x_0 = x.e0
    y_123 = y.e123
    y_023 = y.e023
    y_013 = y.e013
    y_012 = y.e012
    ret_0123 = (+)((*)(x_0, y_123), (*)(x_2, y_013), (*)(-1, x_1, y_023), (*)(-1, x_3, y_012))
    return MultiVector4(; e0123 = ret_0123)
end
function wedge(x::MultiVector1, y::MultiVector4)
    return MultiVectorZero(; )
end
function wedge(x::MultiVector1, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function wedge(x::MultiVector2, y::MultiVectorAll)
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    y_ = y.e
    y_3 = y.e3
    y_2 = y.e2
    y_23 = y.e23
    y_1 = y.e1
    y_13 = y.e13
    y_12 = y.e12
    y_123 = y.e123
    y_0 = y.e0
    y_03 = y.e03
    y_02 = y.e02
    y_023 = y.e023
    y_01 = y.e01
    y_013 = y.e013
    y_012 = y.e012
    y_0123 = y.e0123
    ret_23 = (*)(x_23, y_)
    ret_13 = (*)(x_13, y_)
    ret_12 = (*)(x_12, y_)
    ret_123 = (+)((*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_13, y_2))
    ret_03 = (*)(x_03, y_)
    ret_02 = (*)(x_02, y_)
    ret_023 = (+)((*)(x_02, y_3), (*)(x_23, y_0), (*)(-1, x_03, y_2))
    ret_01 = (*)(x_01, y_)
    ret_013 = (+)((*)(x_01, y_3), (*)(x_13, y_0), (*)(-1, x_03, y_1))
    ret_012 = (+)((*)(x_01, y_2), (*)(x_12, y_0), (*)(-1, x_02, y_1))
    ret_0123 = (+)((*)(x_01, y_23), (*)(x_03, y_12), (*)(x_12, y_03), (*)(x_23, y_01), (*)(-1, x_02, y_13), (*)(-1, x_13, y_02))
    return MultiVectorAll(; e23 = ret_23, e13 = ret_13, e12 = ret_12, e123 = ret_123, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function wedge(x::MultiVector2, y::MultiVectorEven)
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    y_ = y.e
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    y_0123 = y.e0123
    ret_23 = (*)(x_23, y_)
    ret_13 = (*)(x_13, y_)
    ret_12 = (*)(x_12, y_)
    ret_03 = (*)(x_03, y_)
    ret_02 = (*)(x_02, y_)
    ret_01 = (*)(x_01, y_)
    ret_0123 = (+)((*)(x_01, y_23), (*)(x_03, y_12), (*)(x_12, y_03), (*)(x_23, y_01), (*)(-1, x_02, y_13), (*)(-1, x_13, y_02))
    return MultiVectorEven(; e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01, e0123 = ret_0123)
end
function wedge(x::MultiVector2, y::MultiVector0)
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    y_ = y.e
    ret_23 = (*)(x_23, y_)
    ret_13 = (*)(x_13, y_)
    ret_12 = (*)(x_12, y_)
    ret_03 = (*)(x_03, y_)
    ret_02 = (*)(x_02, y_)
    ret_01 = (*)(x_01, y_)
    return MultiVector2(; e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01)
end
function wedge(x::MultiVector2, y::MultiVector1)
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    y_0 = y.e0
    ret_123 = (+)((*)(x_12, y_3), (*)(x_23, y_1), (*)(-1, x_13, y_2))
    ret_023 = (+)((*)(x_02, y_3), (*)(x_23, y_0), (*)(-1, x_03, y_2))
    ret_013 = (+)((*)(x_01, y_3), (*)(x_13, y_0), (*)(-1, x_03, y_1))
    ret_012 = (+)((*)(x_01, y_2), (*)(x_12, y_0), (*)(-1, x_02, y_1))
    return MultiVector3(; e123 = ret_123, e023 = ret_023, e013 = ret_013, e012 = ret_012)
end
function wedge(x::MultiVector2, y::MultiVector2)
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    ret_0123 = (+)((*)(x_01, y_23), (*)(x_03, y_12), (*)(x_12, y_03), (*)(x_23, y_01), (*)(-1, x_02, y_13), (*)(-1, x_13, y_02))
    return MultiVector4(; e0123 = ret_0123)
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
    x_123 = x.e123
    x_023 = x.e023
    x_013 = x.e013
    x_012 = x.e012
    y_ = y.e
    y_3 = y.e3
    y_2 = y.e2
    y_23 = y.e23
    y_1 = y.e1
    y_13 = y.e13
    y_12 = y.e12
    y_123 = y.e123
    y_0 = y.e0
    y_03 = y.e03
    y_02 = y.e02
    y_023 = y.e023
    y_01 = y.e01
    y_013 = y.e013
    y_012 = y.e012
    y_0123 = y.e0123
    ret_123 = (*)(x_123, y_)
    ret_023 = (*)(x_023, y_)
    ret_013 = (*)(x_013, y_)
    ret_012 = (*)(x_012, y_)
    ret_0123 = (+)((*)(x_012, y_3), (*)(x_023, y_1), (*)(-1, x_013, y_2), (*)(-1, x_123, y_0))
    return MultiVectorAll(; e123 = ret_123, e023 = ret_023, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function wedge(x::MultiVector3, y::MultiVectorEven)
    x_123 = x.e123
    x_023 = x.e023
    x_013 = x.e013
    x_012 = x.e012
    y_ = y.e
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    y_0123 = y.e0123
    ret_123 = (*)(x_123, y_)
    ret_023 = (*)(x_023, y_)
    ret_013 = (*)(x_013, y_)
    ret_012 = (*)(x_012, y_)
    return MultiVector3(; e123 = ret_123, e023 = ret_023, e013 = ret_013, e012 = ret_012)
end
function wedge(x::MultiVector3, y::MultiVector0)
    x_123 = x.e123
    x_023 = x.e023
    x_013 = x.e013
    x_012 = x.e012
    y_ = y.e
    ret_123 = (*)(x_123, y_)
    ret_023 = (*)(x_023, y_)
    ret_013 = (*)(x_013, y_)
    ret_012 = (*)(x_012, y_)
    return MultiVector3(; e123 = ret_123, e023 = ret_023, e013 = ret_013, e012 = ret_012)
end
function wedge(x::MultiVector3, y::MultiVector1)
    x_123 = x.e123
    x_023 = x.e023
    x_013 = x.e013
    x_012 = x.e012
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    y_0 = y.e0
    ret_0123 = (+)((*)(x_012, y_3), (*)(x_023, y_1), (*)(-1, x_013, y_2), (*)(-1, x_123, y_0))
    return MultiVector4(; e0123 = ret_0123)
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
    x_0123 = x.e0123
    y_ = y.e
    y_3 = y.e3
    y_2 = y.e2
    y_23 = y.e23
    y_1 = y.e1
    y_13 = y.e13
    y_12 = y.e12
    y_123 = y.e123
    y_0 = y.e0
    y_03 = y.e03
    y_02 = y.e02
    y_023 = y.e023
    y_01 = y.e01
    y_013 = y.e013
    y_012 = y.e012
    y_0123 = y.e0123
    ret_0123 = (*)(x_0123, y_)
    return MultiVector4(; e0123 = ret_0123)
end
function wedge(x::MultiVector4, y::MultiVectorEven)
    x_0123 = x.e0123
    y_ = y.e
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    y_0123 = y.e0123
    ret_0123 = (*)(x_0123, y_)
    return MultiVector4(; e0123 = ret_0123)
end
function wedge(x::MultiVector4, y::MultiVector0)
    x_0123 = x.e0123
    y_ = y.e
    ret_0123 = (*)(x_0123, y_)
    return MultiVector4(; e0123 = ret_0123)
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
    x_3 = x.e3
    x_2 = x.e2
    x_23 = x.e23
    x_1 = x.e1
    x_13 = x.e13
    x_12 = x.e12
    x_123 = x.e123
    x_0 = x.e0
    x_03 = x.e03
    x_02 = x.e02
    x_023 = x.e023
    x_01 = x.e01
    x_013 = x.e013
    x_012 = x.e012
    x_0123 = x.e0123
    y_ = y.e
    y_3 = y.e3
    y_2 = y.e2
    y_23 = y.e23
    y_1 = y.e1
    y_13 = y.e13
    y_12 = y.e12
    y_123 = y.e123
    y_0 = y.e0
    y_03 = y.e03
    y_02 = y.e02
    y_023 = y.e023
    y_01 = y.e01
    y_013 = y.e013
    y_012 = y.e012
    y_0123 = y.e0123
    ret_ = (+)((*)(x_, (+)((^)(y_, 2), (^)(y_1, 2), (^)(y_12, 2), (^)(y_123, 2), (^)(y_13, 2), (^)(y_2, 2), (^)(y_23, 2), (^)(y_3, 2))), (*)(2, x_1, y_, y_1), (*)(2, x_1, y_12, y_2), (*)(2, x_1, y_123, y_23), (*)(2, x_1, y_13, y_3), (*)(2, x_2, y_, y_2), (*)(-2, x_2, y_1, y_12), (*)(-2, x_2, y_123, y_13), (*)(2, x_2, y_23, y_3), (*)(2, x_3, y_, y_3), (*)(-2, x_3, y_1, y_13), (*)(2, x_3, y_12, y_123), (*)(-2, x_3, y_2, y_23))
    ret_3 = (+)((*)(x_3, (+)((^)(y_, 2), (^)(y_12, 2), (^)(y_123, 2), (^)(y_3, 2), (*)(-1, (^)(y_1, 2)), (*)(-1, (^)(y_13, 2)), (*)(-1, (^)(y_2, 2)), (*)(-1, (^)(y_23, 2)))), (*)(2, x_, y_, y_3), (*)(2, x_, y_1, y_13), (*)(2, x_, y_12, y_123), (*)(2, x_, y_2, y_23), (*)(2, x_1, y_, y_13), (*)(2, x_1, y_1, y_3), (*)(2, x_1, y_12, y_23), (*)(2, x_1, y_123, y_2), (*)(2, x_2, y_, y_23), (*)(-2, x_2, y_1, y_123), (*)(-2, x_2, y_12, y_13), (*)(2, x_2, y_2, y_3))
    ret_2 = (+)((*)(x_2, (+)((^)(y_, 2), (^)(y_123, 2), (^)(y_13, 2), (^)(y_2, 2), (*)(-1, (^)(y_1, 2)), (*)(-1, (^)(y_12, 2)), (*)(-1, (^)(y_23, 2)), (*)(-1, (^)(y_3, 2)))), (*)(2, x_, y_, y_2), (*)(2, x_, y_1, y_12), (*)(-2, x_, y_123, y_13), (*)(-2, x_, y_23, y_3), (*)(2, x_1, y_, y_12), (*)(2, x_1, y_1, y_2), (*)(-2, x_1, y_123, y_3), (*)(-2, x_1, y_13, y_23), (*)(-2, x_3, y_, y_23), (*)(2, x_3, y_1, y_123), (*)(-2, x_3, y_12, y_13), (*)(2, x_3, y_2, y_3))
    ret_23 = (+)((*)(x_23, (+)((^)(y_, 2), (^)(y_1, 2), (^)(y_123, 2), (^)(y_23, 2), (*)(-1, (^)(y_12, 2)), (*)(-1, (^)(y_13, 2)), (*)(-1, (^)(y_2, 2)), (*)(-1, (^)(y_3, 2)))), (*)(-2, x_12, y_, y_13), (*)(2, x_12, y_1, y_3), (*)(2, x_12, y_12, y_23), (*)(-2, x_12, y_123, y_2), (*)(2, x_123, y_, y_1), (*)(-2, x_123, y_12, y_2), (*)(2, x_123, y_123, y_23), (*)(-2, x_123, y_13, y_3), (*)(2, x_13, y_, y_12), (*)(-2, x_13, y_1, y_2), (*)(-2, x_13, y_123, y_3), (*)(2, x_13, y_13, y_23))
    ret_1 = (+)((*)(x_1, (+)((^)(y_, 2), (^)(y_1, 2), (^)(y_123, 2), (^)(y_23, 2), (*)(-1, (^)(y_12, 2)), (*)(-1, (^)(y_13, 2)), (*)(-1, (^)(y_2, 2)), (*)(-1, (^)(y_3, 2)))), (*)(2, x_, y_, y_1), (*)(-2, x_, y_12, y_2), (*)(2, x_, y_123, y_23), (*)(-2, x_, y_13, y_3), (*)(-2, x_2, y_, y_12), (*)(2, x_2, y_1, y_2), (*)(2, x_2, y_123, y_3), (*)(-2, x_2, y_13, y_23), (*)(-2, x_3, y_, y_13), (*)(2, x_3, y_1, y_3), (*)(2, x_3, y_12, y_23), (*)(-2, x_3, y_123, y_2))
    ret_13 = (+)((*)(x_13, (+)((^)(y_, 2), (^)(y_123, 2), (^)(y_13, 2), (^)(y_2, 2), (*)(-1, (^)(y_1, 2)), (*)(-1, (^)(y_12, 2)), (*)(-1, (^)(y_23, 2)), (*)(-1, (^)(y_3, 2)))), (*)(2, x_12, y_, y_23), (*)(-2, x_12, y_1, y_123), (*)(2, x_12, y_12, y_13), (*)(-2, x_12, y_2, y_3), (*)(-2, x_123, y_, y_2), (*)(-2, x_123, y_1, y_12), (*)(2, x_123, y_123, y_13), (*)(2, x_123, y_23, y_3), (*)(-2, x_23, y_, y_12), (*)(-2, x_23, y_1, y_2), (*)(2, x_23, y_123, y_3), (*)(2, x_23, y_13, y_23))
    ret_12 = (+)((*)(x_12, (+)((^)(y_, 2), (^)(y_12, 2), (^)(y_123, 2), (^)(y_3, 2), (*)(-1, (^)(y_1, 2)), (*)(-1, (^)(y_13, 2)), (*)(-1, (^)(y_2, 2)), (*)(-1, (^)(y_23, 2)))), (*)(2, x_123, y_, y_3), (*)(2, x_123, y_1, y_13), (*)(2, x_123, y_12, y_123), (*)(2, x_123, y_2, y_23), (*)(-2, x_13, y_, y_23), (*)(2, x_13, y_1, y_123), (*)(2, x_13, y_12, y_13), (*)(-2, x_13, y_2, y_3), (*)(2, x_23, y_, y_13), (*)(2, x_23, y_1, y_3), (*)(2, x_23, y_12, y_23), (*)(2, x_23, y_123, y_2))
    ret_123 = (+)((*)(x_123, (+)((^)(y_, 2), (^)(y_1, 2), (^)(y_12, 2), (^)(y_123, 2), (^)(y_13, 2), (^)(y_2, 2), (^)(y_23, 2), (^)(y_3, 2))), (*)(2, x_12, y_, y_3), (*)(-2, x_12, y_1, y_13), (*)(2, x_12, y_12, y_123), (*)(-2, x_12, y_2, y_23), (*)(-2, x_13, y_, y_2), (*)(2, x_13, y_1, y_12), (*)(2, x_13, y_123, y_13), (*)(-2, x_13, y_23, y_3), (*)(2, x_23, y_, y_1), (*)(2, x_23, y_12, y_2), (*)(2, x_23, y_123, y_23), (*)(2, x_23, y_13, y_3))
    ret_0 = (+)((*)(x_0, (+)((^)(y_, 2), (^)(y_12, 2), (^)(y_13, 2), (^)(y_23, 2), (*)(-1, (^)(y_1, 2)), (*)(-1, (^)(y_123, 2)), (*)(-1, (^)(y_2, 2)), (*)(-1, (^)(y_3, 2)))), (*)(2, x_, y_, y_0), (*)(-2, x_, y_01, y_1), (*)(2, x_, y_012, y_12), (*)(-2, x_, y_0123, y_123), (*)(2, x_, y_013, y_13), (*)(-2, x_, y_02, y_2), (*)(2, x_, y_023, y_23), (*)(-2, x_, y_03, y_3), (*)(-2, x_0123, y_, y_123), (*)(2, x_0123, y_1, y_23), (*)(2, x_0123, y_12, y_3), (*)(-2, x_0123, y_13, y_2), (*)(-2, x_1, y_, y_01), (*)(2, x_1, y_0, y_1), (*)(2, x_1, y_012, y_2), (*)(-2, x_1, y_0123, y_23), (*)(2, x_1, y_013, y_3), (*)(-2, x_1, y_02, y_12), (*)(2, x_1, y_023, y_123), (*)(-2, x_1, y_03, y_13), (*)(-2, x_2, y_, y_02), (*)(2, x_2, y_0, y_2), (*)(2, x_2, y_01, y_12), (*)(-2, x_2, y_012, y_1), (*)(2, x_2, y_0123, y_13), (*)(-2, x_2, y_013, y_123), (*)(2, x_2, y_023, y_3), (*)(-2, x_2, y_03, y_23), (*)(-2, x_3, y_, y_03), (*)(2, x_3, y_0, y_3), (*)(2, x_3, y_01, y_13), (*)(2, x_3, y_012, y_123), (*)(-2, x_3, y_0123, y_12), (*)(-2, x_3, y_013, y_1), (*)(2, x_3, y_02, y_23), (*)(-2, x_3, y_023, y_2))
    ret_03 = (+)((*)(x_03, (+)((^)(y_, 2), (^)(y_1, 2), (^)(y_12, 2), (^)(y_2, 2), (*)(-1, (^)(y_123, 2)), (*)(-1, (^)(y_13, 2)), (*)(-1, (^)(y_23, 2)), (*)(-1, (^)(y_3, 2)))), (*)(2, x_01, y_, y_13), (*)(-2, x_01, y_1, y_3), (*)(2, x_01, y_12, y_23), (*)(-2, x_01, y_123, y_2), (*)(-2, x_012, y_, y_123), (*)(-2, x_012, y_1, y_23), (*)(2, x_012, y_12, y_3), (*)(2, x_012, y_13, y_2), (*)(-2, x_013, y_, y_1), (*)(-2, x_013, y_12, y_2), (*)(2, x_013, y_123, y_23), (*)(2, x_013, y_13, y_3), (*)(2, x_02, y_, y_23), (*)(2, x_02, y_1, y_123), (*)(-2, x_02, y_12, y_13), (*)(-2, x_02, y_2, y_3), (*)(-2, x_023, y_, y_2), (*)(2, x_023, y_1, y_12), (*)(-2, x_023, y_123, y_13), (*)(2, x_023, y_23, y_3), (*)(-2, x_12, y_, y_0123), (*)(-2, x_12, y_0, y_123), (*)(-2, x_12, y_01, y_23), (*)(2, x_12, y_012, y_3), (*)(2, x_12, y_013, y_2), (*)(2, x_12, y_02, y_13), (*)(-2, x_12, y_023, y_1), (*)(2, x_12, y_03, y_12), (*)(2, x_123, y_, y_012), (*)(-2, x_123, y_0, y_12), (*)(2, x_123, y_01, y_2), (*)(-2, x_123, y_0123, y_3), (*)(-2, x_123, y_013, y_23), (*)(-2, x_123, y_02, y_1), (*)(2, x_123, y_023, y_13), (*)(2, x_123, y_03, y_123), (*)(-2, x_13, y_, y_01), (*)(-2, x_13, y_0, y_1), (*)(-2, x_13, y_012, y_2), (*)(2, x_13, y_0123, y_23), (*)(2, x_13, y_013, y_3), (*)(-2, x_13, y_02, y_12), (*)(2, x_13, y_023, y_123), (*)(2, x_13, y_03, y_13), (*)(-2, x_23, y_, y_02), (*)(-2, x_23, y_0, y_2), (*)(2, x_23, y_01, y_12), (*)(2, x_23, y_012, y_1), (*)(-2, x_23, y_0123, y_13), (*)(-2, x_23, y_013, y_123), (*)(2, x_23, y_023, y_3), (*)(2, x_23, y_03, y_23))
    ret_02 = (+)((*)(x_02, (+)((^)(y_, 2), (^)(y_1, 2), (^)(y_13, 2), (^)(y_3, 2), (*)(-1, (^)(y_12, 2)), (*)(-1, (^)(y_123, 2)), (*)(-1, (^)(y_2, 2)), (*)(-1, (^)(y_23, 2)))), (*)(2, x_01, y_, y_12), (*)(-2, x_01, y_1, y_2), (*)(2, x_01, y_123, y_3), (*)(-2, x_01, y_13, y_23), (*)(-2, x_012, y_, y_1), (*)(2, x_012, y_12, y_2), (*)(2, x_012, y_123, y_23), (*)(-2, x_012, y_13, y_3), (*)(2, x_013, y_, y_123), (*)(2, x_013, y_1, y_23), (*)(2, x_013, y_12, y_3), (*)(2, x_013, y_13, y_2), (*)(2, x_023, y_, y_3), (*)(-2, x_023, y_1, y_13), (*)(-2, x_023, y_12, y_123), (*)(2, x_023, y_2, y_23), (*)(-2, x_03, y_, y_23), (*)(-2, x_03, y_1, y_123), (*)(-2, x_03, y_12, y_13), (*)(-2, x_03, y_2, y_3), (*)(-2, x_12, y_, y_01), (*)(-2, x_12, y_0, y_1), (*)(2, x_12, y_012, y_2), (*)(2, x_12, y_0123, y_23), (*)(-2, x_12, y_013, y_3), (*)(2, x_12, y_02, y_12), (*)(2, x_12, y_023, y_123), (*)(-2, x_12, y_03, y_13), (*)(-2, x_123, y_, y_013), (*)(2, x_123, y_0, y_13), (*)(-2, x_123, y_01, y_3), (*)(-2, x_123, y_012, y_23), (*)(-2, x_123, y_0123, y_2), (*)(2, x_123, y_02, y_123), (*)(2, x_123, y_023, y_12), (*)(2, x_123, y_03, y_1), (*)(2, x_13, y_, y_0123), (*)(2, x_13, y_0, y_123), (*)(2, x_13, y_01, y_23), (*)(2, x_13, y_012, y_3), (*)(2, x_13, y_013, y_2), (*)(2, x_13, y_02, y_13), (*)(2, x_13, y_023, y_1), (*)(2, x_13, y_03, y_12), (*)(2, x_23, y_, y_03), (*)(2, x_23, y_0, y_3), (*)(-2, x_23, y_01, y_13), (*)(-2, x_23, y_012, y_123), (*)(-2, x_23, y_0123, y_12), (*)(-2, x_23, y_013, y_1), (*)(2, x_23, y_02, y_23), (*)(2, x_23, y_023, y_2))
    ret_023 = (+)((*)(x_023, (+)((^)(y_, 2), (^)(y_2, 2), (^)(y_23, 2), (^)(y_3, 2), (*)(-1, (^)(y_1, 2)), (*)(-1, (^)(y_12, 2)), (*)(-1, (^)(y_123, 2)), (*)(-1, (^)(y_13, 2)))), (*)(2, x_01, y_, y_123), (*)(-2, x_01, y_1, y_23), (*)(2, x_01, y_12, y_3), (*)(-2, x_01, y_13, y_2), (*)(-2, x_012, y_, y_13), (*)(-2, x_012, y_1, y_3), (*)(2, x_012, y_12, y_23), (*)(2, x_012, y_123, y_2), (*)(2, x_013, y_, y_12), (*)(2, x_013, y_1, y_2), (*)(2, x_013, y_123, y_3), (*)(2, x_013, y_13, y_23), (*)(2, x_02, y_, y_3), (*)(2, x_02, y_1, y_13), (*)(-2, x_02, y_12, y_123), (*)(-2, x_02, y_2, y_23), (*)(-2, x_03, y_, y_2), (*)(-2, x_03, y_1, y_12), (*)(-2, x_03, y_123, y_13), (*)(-2, x_03, y_23, y_3), (*)(-2, x_12, y_, y_013), (*)(-2, x_12, y_0, y_13), (*)(-2, x_12, y_01, y_3), (*)(2, x_12, y_012, y_23), (*)(2, x_12, y_0123, y_2), (*)(2, x_12, y_02, y_123), (*)(2, x_12, y_023, y_12), (*)(-2, x_12, y_03, y_1), (*)(-2, x_123, y_, y_01), (*)(2, x_123, y_0, y_1), (*)(-2, x_123, y_012, y_2), (*)(-2, x_123, y_0123, y_23), (*)(-2, x_123, y_013, y_3), (*)(2, x_123, y_02, y_12), (*)(2, x_123, y_023, y_123), (*)(2, x_123, y_03, y_13), (*)(2, x_13, y_, y_012), (*)(2, x_13, y_0, y_12), (*)(2, x_13, y_01, y_2), (*)(2, x_13, y_0123, y_3), (*)(2, x_13, y_013, y_23), (*)(2, x_13, y_02, y_1), (*)(2, x_13, y_023, y_13), (*)(2, x_13, y_03, y_123), (*)(2, x_23, y_, y_0), (*)(-2, x_23, y_01, y_1), (*)(-2, x_23, y_012, y_12), (*)(-2, x_23, y_0123, y_123), (*)(-2, x_23, y_013, y_13), (*)(2, x_23, y_02, y_2), (*)(2, x_23, y_023, y_23), (*)(2, x_23, y_03, y_3))
    ret_01 = (+)((*)(x_01, (+)((^)(y_, 2), (^)(y_2, 2), (^)(y_23, 2), (^)(y_3, 2), (*)(-1, (^)(y_1, 2)), (*)(-1, (^)(y_12, 2)), (*)(-1, (^)(y_123, 2)), (*)(-1, (^)(y_13, 2)))), (*)(2, x_012, y_, y_2), (*)(2, x_012, y_1, y_12), (*)(2, x_012, y_123, y_13), (*)(2, x_012, y_23, y_3), (*)(2, x_013, y_, y_3), (*)(2, x_013, y_1, y_13), (*)(-2, x_013, y_12, y_123), (*)(-2, x_013, y_2, y_23), (*)(-2, x_02, y_, y_12), (*)(-2, x_02, y_1, y_2), (*)(-2, x_02, y_123, y_3), (*)(-2, x_02, y_13, y_23), (*)(-2, x_023, y_, y_123), (*)(2, x_023, y_1, y_23), (*)(-2, x_023, y_12, y_3), (*)(2, x_023, y_13, y_2), (*)(-2, x_03, y_, y_13), (*)(-2, x_03, y_1, y_3), (*)(2, x_03, y_12, y_23), (*)(2, x_03, y_123, y_2), (*)(2, x_12, y_, y_02), (*)(2, x_12, y_0, y_2), (*)(2, x_12, y_01, y_12), (*)(2, x_12, y_012, y_1), (*)(2, x_12, y_0123, y_13), (*)(2, x_12, y_013, y_123), (*)(2, x_12, y_023, y_3), (*)(2, x_12, y_03, y_23), (*)(2, x_123, y_, y_023), (*)(-2, x_123, y_0, y_23), (*)(2, x_123, y_01, y_123), (*)(-2, x_123, y_012, y_13), (*)(-2, x_123, y_0123, y_1), (*)(2, x_123, y_013, y_12), (*)(2, x_123, y_02, y_3), (*)(-2, x_123, y_03, y_2), (*)(2, x_13, y_, y_03), (*)(2, x_13, y_0, y_3), (*)(2, x_13, y_01, y_13), (*)(-2, x_13, y_012, y_123), (*)(-2, x_13, y_0123, y_12), (*)(2, x_13, y_013, y_1), (*)(-2, x_13, y_02, y_23), (*)(-2, x_13, y_023, y_2), (*)(-2, x_23, y_, y_0123), (*)(-2, x_23, y_0, y_123), (*)(2, x_23, y_01, y_23), (*)(-2, x_23, y_012, y_3), (*)(2, x_23, y_013, y_2), (*)(2, x_23, y_02, y_13), (*)(2, x_23, y_023, y_1), (*)(-2, x_23, y_03, y_12))
    ret_013 = (+)((*)(x_013, (+)((^)(y_, 2), (^)(y_1, 2), (^)(y_13, 2), (^)(y_3, 2), (*)(-1, (^)(y_12, 2)), (*)(-1, (^)(y_123, 2)), (*)(-1, (^)(y_2, 2)), (*)(-1, (^)(y_23, 2)))), (*)(2, x_01, y_, y_3), (*)(-2, x_01, y_1, y_13), (*)(-2, x_01, y_12, y_123), (*)(2, x_01, y_2, y_23), (*)(2, x_012, y_, y_23), (*)(2, x_012, y_1, y_123), (*)(2, x_012, y_12, y_13), (*)(2, x_012, y_2, y_3), (*)(-2, x_02, y_, y_123), (*)(-2, x_02, y_1, y_23), (*)(-2, x_02, y_12, y_3), (*)(-2, x_02, y_13, y_2), (*)(-2, x_023, y_, y_12), (*)(2, x_023, y_1, y_2), (*)(-2, x_023, y_123, y_3), (*)(2, x_023, y_13, y_23), (*)(-2, x_03, y_, y_1), (*)(2, x_03, y_12, y_2), (*)(2, x_03, y_123, y_23), (*)(-2, x_03, y_13, y_3), (*)(2, x_12, y_, y_023), (*)(2, x_12, y_0, y_23), (*)(2, x_12, y_01, y_123), (*)(2, x_12, y_012, y_13), (*)(2, x_12, y_0123, y_1), (*)(2, x_12, y_013, y_12), (*)(2, x_12, y_02, y_3), (*)(2, x_12, y_03, y_2), (*)(2, x_123, y_, y_02), (*)(-2, x_123, y_0, y_2), (*)(2, x_123, y_01, y_12), (*)(-2, x_123, y_012, y_1), (*)(-2, x_123, y_0123, y_13), (*)(2, x_123, y_013, y_123), (*)(2, x_123, y_023, y_3), (*)(-2, x_123, y_03, y_23), (*)(2, x_13, y_, y_0), (*)(2, x_13, y_01, y_1), (*)(-2, x_13, y_012, y_12), (*)(-2, x_13, y_0123, y_123), (*)(2, x_13, y_013, y_13), (*)(-2, x_13, y_02, y_2), (*)(-2, x_13, y_023, y_23), (*)(2, x_13, y_03, y_3), (*)(-2, x_23, y_, y_012), (*)(-2, x_23, y_0, y_12), (*)(2, x_23, y_01, y_2), (*)(-2, x_23, y_0123, y_3), (*)(2, x_23, y_013, y_23), (*)(2, x_23, y_02, y_1), (*)(2, x_23, y_023, y_13), (*)(-2, x_23, y_03, y_123))
    ret_012 = (+)((*)(x_012, (+)((^)(y_, 2), (^)(y_1, 2), (^)(y_12, 2), (^)(y_2, 2), (*)(-1, (^)(y_123, 2)), (*)(-1, (^)(y_13, 2)), (*)(-1, (^)(y_23, 2)), (*)(-1, (^)(y_3, 2)))), (*)(2, x_01, y_, y_2), (*)(-2, x_01, y_1, y_12), (*)(2, x_01, y_123, y_13), (*)(-2, x_01, y_23, y_3), (*)(-2, x_013, y_, y_23), (*)(-2, x_013, y_1, y_123), (*)(2, x_013, y_12, y_13), (*)(2, x_013, y_2, y_3), (*)(-2, x_02, y_, y_1), (*)(-2, x_02, y_12, y_2), (*)(2, x_02, y_123, y_23), (*)(2, x_02, y_13, y_3), (*)(2, x_023, y_, y_13), (*)(-2, x_023, y_1, y_3), (*)(2, x_023, y_12, y_23), (*)(-2, x_023, y_123, y_2), (*)(2, x_03, y_, y_123), (*)(2, x_03, y_1, y_23), (*)(-2, x_03, y_12, y_3), (*)(-2, x_03, y_13, y_2), (*)(2, x_12, y_, y_0), (*)(2, x_12, y_01, y_1), (*)(2, x_12, y_012, y_12), (*)(-2, x_12, y_0123, y_123), (*)(-2, x_12, y_013, y_13), (*)(2, x_12, y_02, y_2), (*)(-2, x_12, y_023, y_23), (*)(-2, x_12, y_03, y_3), (*)(-2, x_123, y_, y_03), (*)(2, x_123, y_0, y_3), (*)(-2, x_123, y_01, y_13), (*)(2, x_123, y_012, y_123), (*)(-2, x_123, y_0123, y_12), (*)(2, x_123, y_013, y_1), (*)(-2, x_123, y_02, y_23), (*)(2, x_123, y_023, y_2), (*)(-2, x_13, y_, y_023), (*)(-2, x_13, y_0, y_23), (*)(-2, x_13, y_01, y_123), (*)(2, x_13, y_012, y_13), (*)(-2, x_13, y_0123, y_1), (*)(2, x_13, y_013, y_12), (*)(2, x_13, y_02, y_3), (*)(2, x_13, y_03, y_2), (*)(2, x_23, y_, y_013), (*)(2, x_23, y_0, y_13), (*)(-2, x_23, y_01, y_3), (*)(2, x_23, y_012, y_23), (*)(-2, x_23, y_0123, y_2), (*)(-2, x_23, y_02, y_123), (*)(2, x_23, y_023, y_12), (*)(-2, x_23, y_03, y_1))
    ret_0123 = (+)((*)(x_0123, (+)((^)(y_, 2), (^)(y_12, 2), (^)(y_13, 2), (^)(y_23, 2), (*)(-1, (^)(y_1, 2)), (*)(-1, (^)(y_123, 2)), (*)(-1, (^)(y_2, 2)), (*)(-1, (^)(y_3, 2)))), (*)(2, x_, y_, y_0123), (*)(2, x_, y_0, y_123), (*)(-2, x_, y_01, y_23), (*)(-2, x_, y_012, y_3), (*)(2, x_, y_013, y_2), (*)(2, x_, y_02, y_13), (*)(-2, x_, y_023, y_1), (*)(-2, x_, y_03, y_12), (*)(2, x_0, y_, y_123), (*)(-2, x_0, y_1, y_23), (*)(-2, x_0, y_12, y_3), (*)(2, x_0, y_13, y_2), (*)(-2, x_1, y_, y_023), (*)(2, x_1, y_0, y_23), (*)(-2, x_1, y_01, y_123), (*)(-2, x_1, y_012, y_13), (*)(2, x_1, y_0123, y_1), (*)(2, x_1, y_013, y_12), (*)(2, x_1, y_02, y_3), (*)(-2, x_1, y_03, y_2), (*)(2, x_2, y_, y_013), (*)(-2, x_2, y_0, y_13), (*)(-2, x_2, y_01, y_3), (*)(-2, x_2, y_012, y_23), (*)(2, x_2, y_0123, y_2), (*)(-2, x_2, y_02, y_123), (*)(2, x_2, y_023, y_12), (*)(2, x_2, y_03, y_1), (*)(-2, x_3, y_, y_012), (*)(2, x_3, y_0, y_12), (*)(2, x_3, y_01, y_2), (*)(2, x_3, y_0123, y_3), (*)(-2, x_3, y_013, y_23), (*)(-2, x_3, y_02, y_1), (*)(2, x_3, y_023, y_13), (*)(-2, x_3, y_03, y_123))
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function sandwich(x::MultiVectorAll, y::MultiVectorEven)
    x_ = x.e
    x_3 = x.e3
    x_2 = x.e2
    x_23 = x.e23
    x_1 = x.e1
    x_13 = x.e13
    x_12 = x.e12
    x_123 = x.e123
    x_0 = x.e0
    x_03 = x.e03
    x_02 = x.e02
    x_023 = x.e023
    x_01 = x.e01
    x_013 = x.e013
    x_012 = x.e012
    x_0123 = x.e0123
    y_ = y.e
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    y_0123 = y.e0123
    ret_ = (*)(x_, (+)((^)(y_, 2), (^)(y_12, 2), (^)(y_13, 2), (^)(y_23, 2)))
    ret_3 = (+)((*)(x_3, (+)((^)(y_, 2), (^)(y_12, 2), (*)(-1, (^)(y_13, 2)), (*)(-1, (^)(y_23, 2)))), (*)(2, x_1, y_, y_13), (*)(2, x_1, y_12, y_23), (*)(2, x_2, y_, y_23), (*)(-2, x_2, y_12, y_13))
    ret_2 = (+)((*)(x_2, (+)((^)(y_, 2), (^)(y_13, 2), (*)(-1, (^)(y_12, 2)), (*)(-1, (^)(y_23, 2)))), (*)(2, x_1, y_, y_12), (*)(-2, x_1, y_13, y_23), (*)(-2, x_3, y_, y_23), (*)(-2, x_3, y_12, y_13))
    ret_23 = (+)((*)(x_23, (+)((^)(y_, 2), (^)(y_23, 2), (*)(-1, (^)(y_12, 2)), (*)(-1, (^)(y_13, 2)))), (*)(-2, x_12, y_, y_13), (*)(2, x_12, y_12, y_23), (*)(2, x_13, y_, y_12), (*)(2, x_13, y_13, y_23))
    ret_1 = (+)((*)(x_1, (+)((^)(y_, 2), (^)(y_23, 2), (*)(-1, (^)(y_12, 2)), (*)(-1, (^)(y_13, 2)))), (*)(-2, x_2, y_, y_12), (*)(-2, x_2, y_13, y_23), (*)(-2, x_3, y_, y_13), (*)(2, x_3, y_12, y_23))
    ret_13 = (+)((*)(x_13, (+)((^)(y_, 2), (^)(y_13, 2), (*)(-1, (^)(y_12, 2)), (*)(-1, (^)(y_23, 2)))), (*)(2, x_12, y_, y_23), (*)(2, x_12, y_12, y_13), (*)(-2, x_23, y_, y_12), (*)(2, x_23, y_13, y_23))
    ret_12 = (+)((*)(x_12, (+)((^)(y_, 2), (^)(y_12, 2), (*)(-1, (^)(y_13, 2)), (*)(-1, (^)(y_23, 2)))), (*)(-2, x_13, y_, y_23), (*)(2, x_13, y_12, y_13), (*)(2, x_23, y_, y_13), (*)(2, x_23, y_12, y_23))
    ret_123 = (*)(x_123, (+)((^)(y_, 2), (^)(y_12, 2), (^)(y_13, 2), (^)(y_23, 2)))
    ret_0 = (+)((*)(x_0, (+)((^)(y_, 2), (^)(y_12, 2), (^)(y_13, 2), (^)(y_23, 2))), (*)(-2, x_1, y_, y_01), (*)(-2, x_1, y_0123, y_23), (*)(-2, x_1, y_02, y_12), (*)(-2, x_1, y_03, y_13), (*)(-2, x_2, y_, y_02), (*)(2, x_2, y_01, y_12), (*)(2, x_2, y_0123, y_13), (*)(-2, x_2, y_03, y_23), (*)(-2, x_3, y_, y_03), (*)(2, x_3, y_01, y_13), (*)(-2, x_3, y_0123, y_12), (*)(2, x_3, y_02, y_23))
    ret_03 = (+)((*)(x_03, (+)((^)(y_, 2), (^)(y_12, 2), (*)(-1, (^)(y_13, 2)), (*)(-1, (^)(y_23, 2)))), (*)(2, x_01, y_, y_13), (*)(2, x_01, y_12, y_23), (*)(2, x_02, y_, y_23), (*)(-2, x_02, y_12, y_13), (*)(-2, x_12, y_, y_0123), (*)(-2, x_12, y_01, y_23), (*)(2, x_12, y_02, y_13), (*)(2, x_12, y_03, y_12), (*)(-2, x_13, y_, y_01), (*)(2, x_13, y_0123, y_23), (*)(-2, x_13, y_02, y_12), (*)(2, x_13, y_03, y_13), (*)(-2, x_23, y_, y_02), (*)(2, x_23, y_01, y_12), (*)(-2, x_23, y_0123, y_13), (*)(2, x_23, y_03, y_23))
    ret_02 = (+)((*)(x_02, (+)((^)(y_, 2), (^)(y_13, 2), (*)(-1, (^)(y_12, 2)), (*)(-1, (^)(y_23, 2)))), (*)(2, x_01, y_, y_12), (*)(-2, x_01, y_13, y_23), (*)(-2, x_03, y_, y_23), (*)(-2, x_03, y_12, y_13), (*)(-2, x_12, y_, y_01), (*)(2, x_12, y_0123, y_23), (*)(2, x_12, y_02, y_12), (*)(-2, x_12, y_03, y_13), (*)(2, x_13, y_, y_0123), (*)(2, x_13, y_01, y_23), (*)(2, x_13, y_02, y_13), (*)(2, x_13, y_03, y_12), (*)(2, x_23, y_, y_03), (*)(-2, x_23, y_01, y_13), (*)(-2, x_23, y_0123, y_12), (*)(2, x_23, y_02, y_23))
    ret_023 = (+)((*)(x_023, (+)((^)(y_, 2), (^)(y_23, 2), (*)(-1, (^)(y_12, 2)), (*)(-1, (^)(y_13, 2)))), (*)(-2, x_012, y_, y_13), (*)(2, x_012, y_12, y_23), (*)(2, x_013, y_, y_12), (*)(2, x_013, y_13, y_23), (*)(-2, x_123, y_, y_01), (*)(-2, x_123, y_0123, y_23), (*)(2, x_123, y_02, y_12), (*)(2, x_123, y_03, y_13))
    ret_01 = (+)((*)(x_01, (+)((^)(y_, 2), (^)(y_23, 2), (*)(-1, (^)(y_12, 2)), (*)(-1, (^)(y_13, 2)))), (*)(-2, x_02, y_, y_12), (*)(-2, x_02, y_13, y_23), (*)(-2, x_03, y_, y_13), (*)(2, x_03, y_12, y_23), (*)(2, x_12, y_, y_02), (*)(2, x_12, y_01, y_12), (*)(2, x_12, y_0123, y_13), (*)(2, x_12, y_03, y_23), (*)(2, x_13, y_, y_03), (*)(2, x_13, y_01, y_13), (*)(-2, x_13, y_0123, y_12), (*)(-2, x_13, y_02, y_23), (*)(-2, x_23, y_, y_0123), (*)(2, x_23, y_01, y_23), (*)(2, x_23, y_02, y_13), (*)(-2, x_23, y_03, y_12))
    ret_013 = (+)((*)(x_013, (+)((^)(y_, 2), (^)(y_13, 2), (*)(-1, (^)(y_12, 2)), (*)(-1, (^)(y_23, 2)))), (*)(2, x_012, y_, y_23), (*)(2, x_012, y_12, y_13), (*)(-2, x_023, y_, y_12), (*)(2, x_023, y_13, y_23), (*)(2, x_123, y_, y_02), (*)(2, x_123, y_01, y_12), (*)(-2, x_123, y_0123, y_13), (*)(-2, x_123, y_03, y_23))
    ret_012 = (+)((*)(x_012, (+)((^)(y_, 2), (^)(y_12, 2), (*)(-1, (^)(y_13, 2)), (*)(-1, (^)(y_23, 2)))), (*)(-2, x_013, y_, y_23), (*)(2, x_013, y_12, y_13), (*)(2, x_023, y_, y_13), (*)(2, x_023, y_12, y_23), (*)(-2, x_123, y_, y_03), (*)(-2, x_123, y_01, y_13), (*)(-2, x_123, y_0123, y_12), (*)(-2, x_123, y_02, y_23))
    ret_0123 = (+)((*)(x_0123, (+)((^)(y_, 2), (^)(y_12, 2), (^)(y_13, 2), (^)(y_23, 2))), (*)(2, x_, y_, y_0123), (*)(-2, x_, y_01, y_23), (*)(2, x_, y_02, y_13), (*)(-2, x_, y_03, y_12))
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function sandwich(x::MultiVectorAll, y::MultiVector0)
    x_ = x.e
    x_3 = x.e3
    x_2 = x.e2
    x_23 = x.e23
    x_1 = x.e1
    x_13 = x.e13
    x_12 = x.e12
    x_123 = x.e123
    x_0 = x.e0
    x_03 = x.e03
    x_02 = x.e02
    x_023 = x.e023
    x_01 = x.e01
    x_013 = x.e013
    x_012 = x.e012
    x_0123 = x.e0123
    y_ = y.e
    ret_ = (*)(x_, (^)(y_, 2))
    ret_3 = (*)(x_3, (^)(y_, 2))
    ret_2 = (*)(x_2, (^)(y_, 2))
    ret_23 = (*)(x_23, (^)(y_, 2))
    ret_1 = (*)(x_1, (^)(y_, 2))
    ret_13 = (*)(x_13, (^)(y_, 2))
    ret_12 = (*)(x_12, (^)(y_, 2))
    ret_123 = (*)(x_123, (^)(y_, 2))
    ret_0 = (*)(x_0, (^)(y_, 2))
    ret_03 = (*)(x_03, (^)(y_, 2))
    ret_02 = (*)(x_02, (^)(y_, 2))
    ret_023 = (*)(x_023, (^)(y_, 2))
    ret_01 = (*)(x_01, (^)(y_, 2))
    ret_013 = (*)(x_013, (^)(y_, 2))
    ret_012 = (*)(x_012, (^)(y_, 2))
    ret_0123 = (*)(x_0123, (^)(y_, 2))
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function sandwich(x::MultiVectorAll, y::MultiVector1)
    x_ = x.e
    x_3 = x.e3
    x_2 = x.e2
    x_23 = x.e23
    x_1 = x.e1
    x_13 = x.e13
    x_12 = x.e12
    x_123 = x.e123
    x_0 = x.e0
    x_03 = x.e03
    x_02 = x.e02
    x_023 = x.e023
    x_01 = x.e01
    x_013 = x.e013
    x_012 = x.e012
    x_0123 = x.e0123
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    y_0 = y.e0
    ret_ = (*)(x_, (+)((^)(y_1, 2), (^)(y_2, 2), (^)(y_3, 2)))
    ret_3 = (+)((*)(x_3, (+)((^)(y_3, 2), (*)(-1, (^)(y_1, 2)), (*)(-1, (^)(y_2, 2)))), (*)(2, x_1, y_1, y_3), (*)(2, x_2, y_2, y_3))
    ret_2 = (+)((*)(x_2, (+)((^)(y_2, 2), (*)(-1, (^)(y_1, 2)), (*)(-1, (^)(y_3, 2)))), (*)(2, x_1, y_1, y_2), (*)(2, x_3, y_2, y_3))
    ret_23 = (+)((*)(x_23, (+)((^)(y_1, 2), (*)(-1, (^)(y_2, 2)), (*)(-1, (^)(y_3, 2)))), (*)(2, x_12, y_1, y_3), (*)(-2, x_13, y_1, y_2))
    ret_1 = (+)((*)(x_1, (+)((^)(y_1, 2), (*)(-1, (^)(y_2, 2)), (*)(-1, (^)(y_3, 2)))), (*)(2, x_2, y_1, y_2), (*)(2, x_3, y_1, y_3))
    ret_13 = (+)((*)(x_13, (+)((^)(y_2, 2), (*)(-1, (^)(y_1, 2)), (*)(-1, (^)(y_3, 2)))), (*)(-2, x_12, y_2, y_3), (*)(-2, x_23, y_1, y_2))
    ret_12 = (+)((*)(x_12, (+)((^)(y_3, 2), (*)(-1, (^)(y_1, 2)), (*)(-1, (^)(y_2, 2)))), (*)(-2, x_13, y_2, y_3), (*)(2, x_23, y_1, y_3))
    ret_123 = (*)(x_123, (+)((^)(y_1, 2), (^)(y_2, 2), (^)(y_3, 2)))
    ret_0 = (+)((*)(x_0, (+)((*)(-1, (^)(y_1, 2)), (*)(-1, (^)(y_2, 2)))), (*)(-1, x_0, (^)(y_3, 2)), (*)(2, x_1, y_0, y_1), (*)(2, x_2, y_0, y_2), (*)(2, x_3, y_0, y_3))
    ret_03 = (+)((*)(x_03, (+)((^)(y_1, 2), (^)(y_2, 2))), (*)(-1, x_03, (^)(y_3, 2)), (*)(-2, x_01, y_1, y_3), (*)(-2, x_02, y_2, y_3), (*)(-2, x_13, y_0, y_1), (*)(-2, x_23, y_0, y_2))
    ret_02 = (+)((*)(x_02, (+)((^)(y_1, 2), (^)(y_3, 2))), (*)(-1, x_02, (^)(y_2, 2)), (*)(-2, x_01, y_1, y_2), (*)(-2, x_03, y_2, y_3), (*)(-2, x_12, y_0, y_1), (*)(2, x_23, y_0, y_3))
    ret_023 = (+)((*)(x_023, (+)((^)(y_2, 2), (^)(y_3, 2))), (*)(-1, x_023, (^)(y_1, 2)), (*)(-2, x_012, y_1, y_3), (*)(2, x_013, y_1, y_2), (*)(2, x_123, y_0, y_1))
    ret_01 = (+)((*)(x_01, (+)((^)(y_2, 2), (^)(y_3, 2))), (*)(-1, x_01, (^)(y_1, 2)), (*)(-2, x_02, y_1, y_2), (*)(-2, x_03, y_1, y_3), (*)(2, x_12, y_0, y_2), (*)(2, x_13, y_0, y_3))
    ret_013 = (+)((*)(x_013, (+)((^)(y_1, 2), (^)(y_3, 2))), (*)(-1, x_013, (^)(y_2, 2)), (*)(2, x_012, y_2, y_3), (*)(2, x_023, y_1, y_2), (*)(-2, x_123, y_0, y_2))
    ret_012 = (+)((*)(x_012, (+)((^)(y_1, 2), (^)(y_2, 2))), (*)(-1, x_012, (^)(y_3, 2)), (*)(2, x_013, y_2, y_3), (*)(-2, x_023, y_1, y_3), (*)(2, x_123, y_0, y_3))
    ret_0123 = (+)((*)(x_0123, (+)((*)(-1, (^)(y_1, 2)), (*)(-1, (^)(y_2, 2)))), (*)(-1, x_0123, (^)(y_3, 2)))
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function sandwich(x::MultiVectorAll, y::MultiVector2)
    x_ = x.e
    x_3 = x.e3
    x_2 = x.e2
    x_23 = x.e23
    x_1 = x.e1
    x_13 = x.e13
    x_12 = x.e12
    x_123 = x.e123
    x_0 = x.e0
    x_03 = x.e03
    x_02 = x.e02
    x_023 = x.e023
    x_01 = x.e01
    x_013 = x.e013
    x_012 = x.e012
    x_0123 = x.e0123
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    ret_ = (*)(x_, (+)((^)(y_12, 2), (^)(y_13, 2), (^)(y_23, 2)))
    ret_3 = (+)((*)(x_3, (+)((^)(y_12, 2), (*)(-1, (^)(y_13, 2)), (*)(-1, (^)(y_23, 2)))), (*)(2, x_1, y_12, y_23), (*)(-2, x_2, y_12, y_13))
    ret_2 = (+)((*)(x_2, (+)((^)(y_13, 2), (*)(-1, (^)(y_12, 2)), (*)(-1, (^)(y_23, 2)))), (*)(-2, x_1, y_13, y_23), (*)(-2, x_3, y_12, y_13))
    ret_23 = (+)((*)(x_23, (+)((^)(y_23, 2), (*)(-1, (^)(y_12, 2)), (*)(-1, (^)(y_13, 2)))), (*)(2, x_12, y_12, y_23), (*)(2, x_13, y_13, y_23))
    ret_1 = (+)((*)(x_1, (+)((^)(y_23, 2), (*)(-1, (^)(y_12, 2)), (*)(-1, (^)(y_13, 2)))), (*)(-2, x_2, y_13, y_23), (*)(2, x_3, y_12, y_23))
    ret_13 = (+)((*)(x_13, (+)((^)(y_13, 2), (*)(-1, (^)(y_12, 2)), (*)(-1, (^)(y_23, 2)))), (*)(2, x_12, y_12, y_13), (*)(2, x_23, y_13, y_23))
    ret_12 = (+)((*)(x_12, (+)((^)(y_12, 2), (*)(-1, (^)(y_13, 2)), (*)(-1, (^)(y_23, 2)))), (*)(2, x_13, y_12, y_13), (*)(2, x_23, y_12, y_23))
    ret_123 = (*)(x_123, (+)((^)(y_12, 2), (^)(y_13, 2), (^)(y_23, 2)))
    ret_0 = (+)((*)(x_0, (+)((^)(y_12, 2), (^)(y_13, 2), (^)(y_23, 2))), (*)(-2, x_1, y_02, y_12), (*)(-2, x_1, y_03, y_13), (*)(2, x_2, y_01, y_12), (*)(-2, x_2, y_03, y_23), (*)(2, x_3, y_01, y_13), (*)(2, x_3, y_02, y_23))
    ret_03 = (+)((*)(x_03, (+)((^)(y_12, 2), (*)(-1, (^)(y_13, 2)), (*)(-1, (^)(y_23, 2)))), (*)(2, x_01, y_12, y_23), (*)(-2, x_02, y_12, y_13), (*)(-2, x_12, y_01, y_23), (*)(2, x_12, y_02, y_13), (*)(2, x_12, y_03, y_12), (*)(-2, x_13, y_02, y_12), (*)(2, x_13, y_03, y_13), (*)(2, x_23, y_01, y_12), (*)(2, x_23, y_03, y_23))
    ret_02 = (+)((*)(x_02, (+)((^)(y_13, 2), (*)(-1, (^)(y_12, 2)), (*)(-1, (^)(y_23, 2)))), (*)(-2, x_01, y_13, y_23), (*)(-2, x_03, y_12, y_13), (*)(2, x_12, y_02, y_12), (*)(-2, x_12, y_03, y_13), (*)(2, x_13, y_01, y_23), (*)(2, x_13, y_02, y_13), (*)(2, x_13, y_03, y_12), (*)(-2, x_23, y_01, y_13), (*)(2, x_23, y_02, y_23))
    ret_023 = (+)((*)(x_023, (+)((^)(y_23, 2), (*)(-1, (^)(y_12, 2)), (*)(-1, (^)(y_13, 2)))), (*)(2, x_012, y_12, y_23), (*)(2, x_013, y_13, y_23), (*)(2, x_123, y_02, y_12), (*)(2, x_123, y_03, y_13))
    ret_01 = (+)((*)(x_01, (+)((^)(y_23, 2), (*)(-1, (^)(y_12, 2)), (*)(-1, (^)(y_13, 2)))), (*)(-2, x_02, y_13, y_23), (*)(2, x_03, y_12, y_23), (*)(2, x_12, y_01, y_12), (*)(2, x_12, y_03, y_23), (*)(2, x_13, y_01, y_13), (*)(-2, x_13, y_02, y_23), (*)(2, x_23, y_01, y_23), (*)(2, x_23, y_02, y_13), (*)(-2, x_23, y_03, y_12))
    ret_013 = (+)((*)(x_013, (+)((^)(y_13, 2), (*)(-1, (^)(y_12, 2)), (*)(-1, (^)(y_23, 2)))), (*)(2, x_012, y_12, y_13), (*)(2, x_023, y_13, y_23), (*)(2, x_123, y_01, y_12), (*)(-2, x_123, y_03, y_23))
    ret_012 = (+)((*)(x_012, (+)((^)(y_12, 2), (*)(-1, (^)(y_13, 2)), (*)(-1, (^)(y_23, 2)))), (*)(2, x_013, y_12, y_13), (*)(2, x_023, y_12, y_23), (*)(-2, x_123, y_01, y_13), (*)(-2, x_123, y_02, y_23))
    ret_0123 = (+)((*)(x_0123, (+)((^)(y_12, 2), (^)(y_13, 2), (^)(y_23, 2))), (*)(-2, x_, y_01, y_23), (*)(2, x_, y_02, y_13), (*)(-2, x_, y_03, y_12))
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function sandwich(x::MultiVectorAll, y::MultiVector3)
    x_ = x.e
    x_3 = x.e3
    x_2 = x.e2
    x_23 = x.e23
    x_1 = x.e1
    x_13 = x.e13
    x_12 = x.e12
    x_123 = x.e123
    x_0 = x.e0
    x_03 = x.e03
    x_02 = x.e02
    x_023 = x.e023
    x_01 = x.e01
    x_013 = x.e013
    x_012 = x.e012
    x_0123 = x.e0123
    y_123 = y.e123
    y_023 = y.e023
    y_013 = y.e013
    y_012 = y.e012
    ret_ = (*)(x_, (^)(y_123, 2))
    ret_3 = (*)(x_3, (^)(y_123, 2))
    ret_2 = (*)(x_2, (^)(y_123, 2))
    ret_23 = (*)(x_23, (^)(y_123, 2))
    ret_1 = (*)(x_1, (^)(y_123, 2))
    ret_13 = (*)(x_13, (^)(y_123, 2))
    ret_12 = (*)(x_12, (^)(y_123, 2))
    ret_123 = (*)(x_123, (^)(y_123, 2))
    ret_0 = (+)((*)(-1, x_0, (^)(y_123, 2)), (*)(2, x_1, y_023, y_123), (*)(-2, x_2, y_013, y_123), (*)(2, x_3, y_012, y_123))
    ret_03 = (+)((*)(-1, x_03, (^)(y_123, 2)), (*)(2, x_13, y_023, y_123), (*)(-2, x_23, y_013, y_123))
    ret_02 = (+)((*)(-1, x_02, (^)(y_123, 2)), (*)(2, x_12, y_023, y_123), (*)(-2, x_23, y_012, y_123))
    ret_023 = (+)((*)(-1, x_023, (^)(y_123, 2)), (*)(2, x_123, y_023, y_123))
    ret_01 = (+)((*)(-1, x_01, (^)(y_123, 2)), (*)(2, x_12, y_013, y_123), (*)(-2, x_13, y_012, y_123))
    ret_013 = (+)((*)(-1, x_013, (^)(y_123, 2)), (*)(2, x_123, y_013, y_123))
    ret_012 = (+)((*)(-1, x_012, (^)(y_123, 2)), (*)(2, x_123, y_012, y_123))
    ret_0123 = (*)(-1, x_0123, (^)(y_123, 2))
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function sandwich(x::MultiVectorAll, y::MultiVector4)
    return MultiVectorZero(; )
end
function sandwich(x::MultiVectorAll, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function sandwich(x::MultiVectorEven, y::MultiVectorAll)
    x_ = x.e
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    x_0123 = x.e0123
    y_ = y.e
    y_3 = y.e3
    y_2 = y.e2
    y_23 = y.e23
    y_1 = y.e1
    y_13 = y.e13
    y_12 = y.e12
    y_123 = y.e123
    y_0 = y.e0
    y_03 = y.e03
    y_02 = y.e02
    y_023 = y.e023
    y_01 = y.e01
    y_013 = y.e013
    y_012 = y.e012
    y_0123 = y.e0123
    ret_ = (*)(x_, (+)((^)(y_, 2), (^)(y_1, 2), (^)(y_12, 2), (^)(y_123, 2), (^)(y_13, 2), (^)(y_2, 2), (^)(y_23, 2), (^)(y_3, 2)))
    ret_3 = (+)((*)(2, x_, y_, y_3), (*)(2, x_, y_1, y_13), (*)(2, x_, y_12, y_123), (*)(2, x_, y_2, y_23))
    ret_2 = (+)((*)(2, x_, y_, y_2), (*)(2, x_, y_1, y_12), (*)(-2, x_, y_123, y_13), (*)(-2, x_, y_23, y_3))
    ret_23 = (+)((*)(x_23, (+)((^)(y_, 2), (^)(y_1, 2), (^)(y_123, 2), (^)(y_23, 2), (*)(-1, (^)(y_12, 2)), (*)(-1, (^)(y_13, 2)), (*)(-1, (^)(y_2, 2)), (*)(-1, (^)(y_3, 2)))), (*)(-2, x_12, y_, y_13), (*)(2, x_12, y_1, y_3), (*)(2, x_12, y_12, y_23), (*)(-2, x_12, y_123, y_2), (*)(2, x_13, y_, y_12), (*)(-2, x_13, y_1, y_2), (*)(-2, x_13, y_123, y_3), (*)(2, x_13, y_13, y_23))
    ret_1 = (+)((*)(2, x_, y_, y_1), (*)(-2, x_, y_12, y_2), (*)(2, x_, y_123, y_23), (*)(-2, x_, y_13, y_3))
    ret_13 = (+)((*)(x_13, (+)((^)(y_, 2), (^)(y_123, 2), (^)(y_13, 2), (^)(y_2, 2), (*)(-1, (^)(y_1, 2)), (*)(-1, (^)(y_12, 2)), (*)(-1, (^)(y_23, 2)), (*)(-1, (^)(y_3, 2)))), (*)(2, x_12, y_, y_23), (*)(-2, x_12, y_1, y_123), (*)(2, x_12, y_12, y_13), (*)(-2, x_12, y_2, y_3), (*)(-2, x_23, y_, y_12), (*)(-2, x_23, y_1, y_2), (*)(2, x_23, y_123, y_3), (*)(2, x_23, y_13, y_23))
    ret_12 = (+)((*)(x_12, (+)((^)(y_, 2), (^)(y_12, 2), (^)(y_123, 2), (^)(y_3, 2), (*)(-1, (^)(y_1, 2)), (*)(-1, (^)(y_13, 2)), (*)(-1, (^)(y_2, 2)), (*)(-1, (^)(y_23, 2)))), (*)(-2, x_13, y_, y_23), (*)(2, x_13, y_1, y_123), (*)(2, x_13, y_12, y_13), (*)(-2, x_13, y_2, y_3), (*)(2, x_23, y_, y_13), (*)(2, x_23, y_1, y_3), (*)(2, x_23, y_12, y_23), (*)(2, x_23, y_123, y_2))
    ret_123 = (+)((*)(2, x_12, y_, y_3), (*)(-2, x_12, y_1, y_13), (*)(2, x_12, y_12, y_123), (*)(-2, x_12, y_2, y_23), (*)(-2, x_13, y_, y_2), (*)(2, x_13, y_1, y_12), (*)(2, x_13, y_123, y_13), (*)(-2, x_13, y_23, y_3), (*)(2, x_23, y_, y_1), (*)(2, x_23, y_12, y_2), (*)(2, x_23, y_123, y_23), (*)(2, x_23, y_13, y_3))
    ret_0 = (+)((*)(2, x_, y_, y_0), (*)(-2, x_, y_01, y_1), (*)(2, x_, y_012, y_12), (*)(-2, x_, y_0123, y_123), (*)(2, x_, y_013, y_13), (*)(-2, x_, y_02, y_2), (*)(2, x_, y_023, y_23), (*)(-2, x_, y_03, y_3), (*)(-2, x_0123, y_, y_123), (*)(2, x_0123, y_1, y_23), (*)(2, x_0123, y_12, y_3), (*)(-2, x_0123, y_13, y_2))
    ret_03 = (+)((*)(x_03, (+)((^)(y_, 2), (^)(y_1, 2), (^)(y_12, 2), (^)(y_2, 2), (*)(-1, (^)(y_123, 2)), (*)(-1, (^)(y_13, 2)), (*)(-1, (^)(y_23, 2)), (*)(-1, (^)(y_3, 2)))), (*)(2, x_01, y_, y_13), (*)(-2, x_01, y_1, y_3), (*)(2, x_01, y_12, y_23), (*)(-2, x_01, y_123, y_2), (*)(2, x_02, y_, y_23), (*)(2, x_02, y_1, y_123), (*)(-2, x_02, y_12, y_13), (*)(-2, x_02, y_2, y_3), (*)(-2, x_12, y_, y_0123), (*)(-2, x_12, y_0, y_123), (*)(-2, x_12, y_01, y_23), (*)(2, x_12, y_012, y_3), (*)(2, x_12, y_013, y_2), (*)(2, x_12, y_02, y_13), (*)(-2, x_12, y_023, y_1), (*)(2, x_12, y_03, y_12), (*)(-2, x_13, y_, y_01), (*)(-2, x_13, y_0, y_1), (*)(-2, x_13, y_012, y_2), (*)(2, x_13, y_0123, y_23), (*)(2, x_13, y_013, y_3), (*)(-2, x_13, y_02, y_12), (*)(2, x_13, y_023, y_123), (*)(2, x_13, y_03, y_13), (*)(-2, x_23, y_, y_02), (*)(-2, x_23, y_0, y_2), (*)(2, x_23, y_01, y_12), (*)(2, x_23, y_012, y_1), (*)(-2, x_23, y_0123, y_13), (*)(-2, x_23, y_013, y_123), (*)(2, x_23, y_023, y_3), (*)(2, x_23, y_03, y_23))
    ret_02 = (+)((*)(x_02, (+)((^)(y_, 2), (^)(y_1, 2), (^)(y_13, 2), (^)(y_3, 2), (*)(-1, (^)(y_12, 2)), (*)(-1, (^)(y_123, 2)), (*)(-1, (^)(y_2, 2)), (*)(-1, (^)(y_23, 2)))), (*)(2, x_01, y_, y_12), (*)(-2, x_01, y_1, y_2), (*)(2, x_01, y_123, y_3), (*)(-2, x_01, y_13, y_23), (*)(-2, x_03, y_, y_23), (*)(-2, x_03, y_1, y_123), (*)(-2, x_03, y_12, y_13), (*)(-2, x_03, y_2, y_3), (*)(-2, x_12, y_, y_01), (*)(-2, x_12, y_0, y_1), (*)(2, x_12, y_012, y_2), (*)(2, x_12, y_0123, y_23), (*)(-2, x_12, y_013, y_3), (*)(2, x_12, y_02, y_12), (*)(2, x_12, y_023, y_123), (*)(-2, x_12, y_03, y_13), (*)(2, x_13, y_, y_0123), (*)(2, x_13, y_0, y_123), (*)(2, x_13, y_01, y_23), (*)(2, x_13, y_012, y_3), (*)(2, x_13, y_013, y_2), (*)(2, x_13, y_02, y_13), (*)(2, x_13, y_023, y_1), (*)(2, x_13, y_03, y_12), (*)(2, x_23, y_, y_03), (*)(2, x_23, y_0, y_3), (*)(-2, x_23, y_01, y_13), (*)(-2, x_23, y_012, y_123), (*)(-2, x_23, y_0123, y_12), (*)(-2, x_23, y_013, y_1), (*)(2, x_23, y_02, y_23), (*)(2, x_23, y_023, y_2))
    ret_023 = (+)((*)(2, x_01, y_, y_123), (*)(-2, x_01, y_1, y_23), (*)(2, x_01, y_12, y_3), (*)(-2, x_01, y_13, y_2), (*)(2, x_02, y_, y_3), (*)(2, x_02, y_1, y_13), (*)(-2, x_02, y_12, y_123), (*)(-2, x_02, y_2, y_23), (*)(-2, x_03, y_, y_2), (*)(-2, x_03, y_1, y_12), (*)(-2, x_03, y_123, y_13), (*)(-2, x_03, y_23, y_3), (*)(-2, x_12, y_, y_013), (*)(-2, x_12, y_0, y_13), (*)(-2, x_12, y_01, y_3), (*)(2, x_12, y_012, y_23), (*)(2, x_12, y_0123, y_2), (*)(2, x_12, y_02, y_123), (*)(2, x_12, y_023, y_12), (*)(-2, x_12, y_03, y_1), (*)(2, x_13, y_, y_012), (*)(2, x_13, y_0, y_12), (*)(2, x_13, y_01, y_2), (*)(2, x_13, y_0123, y_3), (*)(2, x_13, y_013, y_23), (*)(2, x_13, y_02, y_1), (*)(2, x_13, y_023, y_13), (*)(2, x_13, y_03, y_123), (*)(2, x_23, y_, y_0), (*)(-2, x_23, y_01, y_1), (*)(-2, x_23, y_012, y_12), (*)(-2, x_23, y_0123, y_123), (*)(-2, x_23, y_013, y_13), (*)(2, x_23, y_02, y_2), (*)(2, x_23, y_023, y_23), (*)(2, x_23, y_03, y_3))
    ret_01 = (+)((*)(x_01, (+)((^)(y_, 2), (^)(y_2, 2), (^)(y_23, 2), (^)(y_3, 2), (*)(-1, (^)(y_1, 2)), (*)(-1, (^)(y_12, 2)), (*)(-1, (^)(y_123, 2)), (*)(-1, (^)(y_13, 2)))), (*)(-2, x_02, y_, y_12), (*)(-2, x_02, y_1, y_2), (*)(-2, x_02, y_123, y_3), (*)(-2, x_02, y_13, y_23), (*)(-2, x_03, y_, y_13), (*)(-2, x_03, y_1, y_3), (*)(2, x_03, y_12, y_23), (*)(2, x_03, y_123, y_2), (*)(2, x_12, y_, y_02), (*)(2, x_12, y_0, y_2), (*)(2, x_12, y_01, y_12), (*)(2, x_12, y_012, y_1), (*)(2, x_12, y_0123, y_13), (*)(2, x_12, y_013, y_123), (*)(2, x_12, y_023, y_3), (*)(2, x_12, y_03, y_23), (*)(2, x_13, y_, y_03), (*)(2, x_13, y_0, y_3), (*)(2, x_13, y_01, y_13), (*)(-2, x_13, y_012, y_123), (*)(-2, x_13, y_0123, y_12), (*)(2, x_13, y_013, y_1), (*)(-2, x_13, y_02, y_23), (*)(-2, x_13, y_023, y_2), (*)(-2, x_23, y_, y_0123), (*)(-2, x_23, y_0, y_123), (*)(2, x_23, y_01, y_23), (*)(-2, x_23, y_012, y_3), (*)(2, x_23, y_013, y_2), (*)(2, x_23, y_02, y_13), (*)(2, x_23, y_023, y_1), (*)(-2, x_23, y_03, y_12))
    ret_013 = (+)((*)(2, x_01, y_, y_3), (*)(-2, x_01, y_1, y_13), (*)(-2, x_01, y_12, y_123), (*)(2, x_01, y_2, y_23), (*)(-2, x_02, y_, y_123), (*)(-2, x_02, y_1, y_23), (*)(-2, x_02, y_12, y_3), (*)(-2, x_02, y_13, y_2), (*)(-2, x_03, y_, y_1), (*)(2, x_03, y_12, y_2), (*)(2, x_03, y_123, y_23), (*)(-2, x_03, y_13, y_3), (*)(2, x_12, y_, y_023), (*)(2, x_12, y_0, y_23), (*)(2, x_12, y_01, y_123), (*)(2, x_12, y_012, y_13), (*)(2, x_12, y_0123, y_1), (*)(2, x_12, y_013, y_12), (*)(2, x_12, y_02, y_3), (*)(2, x_12, y_03, y_2), (*)(2, x_13, y_, y_0), (*)(2, x_13, y_01, y_1), (*)(-2, x_13, y_012, y_12), (*)(-2, x_13, y_0123, y_123), (*)(2, x_13, y_013, y_13), (*)(-2, x_13, y_02, y_2), (*)(-2, x_13, y_023, y_23), (*)(2, x_13, y_03, y_3), (*)(-2, x_23, y_, y_012), (*)(-2, x_23, y_0, y_12), (*)(2, x_23, y_01, y_2), (*)(-2, x_23, y_0123, y_3), (*)(2, x_23, y_013, y_23), (*)(2, x_23, y_02, y_1), (*)(2, x_23, y_023, y_13), (*)(-2, x_23, y_03, y_123))
    ret_012 = (+)((*)(2, x_01, y_, y_2), (*)(-2, x_01, y_1, y_12), (*)(2, x_01, y_123, y_13), (*)(-2, x_01, y_23, y_3), (*)(-2, x_02, y_, y_1), (*)(-2, x_02, y_12, y_2), (*)(2, x_02, y_123, y_23), (*)(2, x_02, y_13, y_3), (*)(2, x_03, y_, y_123), (*)(2, x_03, y_1, y_23), (*)(-2, x_03, y_12, y_3), (*)(-2, x_03, y_13, y_2), (*)(2, x_12, y_, y_0), (*)(2, x_12, y_01, y_1), (*)(2, x_12, y_012, y_12), (*)(-2, x_12, y_0123, y_123), (*)(-2, x_12, y_013, y_13), (*)(2, x_12, y_02, y_2), (*)(-2, x_12, y_023, y_23), (*)(-2, x_12, y_03, y_3), (*)(-2, x_13, y_, y_023), (*)(-2, x_13, y_0, y_23), (*)(-2, x_13, y_01, y_123), (*)(2, x_13, y_012, y_13), (*)(-2, x_13, y_0123, y_1), (*)(2, x_13, y_013, y_12), (*)(2, x_13, y_02, y_3), (*)(2, x_13, y_03, y_2), (*)(2, x_23, y_, y_013), (*)(2, x_23, y_0, y_13), (*)(-2, x_23, y_01, y_3), (*)(2, x_23, y_012, y_23), (*)(-2, x_23, y_0123, y_2), (*)(-2, x_23, y_02, y_123), (*)(2, x_23, y_023, y_12), (*)(-2, x_23, y_03, y_1))
    ret_0123 = (+)((*)(x_0123, (+)((^)(y_, 2), (^)(y_12, 2), (^)(y_13, 2), (^)(y_23, 2), (*)(-1, (^)(y_1, 2)), (*)(-1, (^)(y_123, 2)), (*)(-1, (^)(y_2, 2)), (*)(-1, (^)(y_3, 2)))), (*)(2, x_, y_, y_0123), (*)(2, x_, y_0, y_123), (*)(-2, x_, y_01, y_23), (*)(-2, x_, y_012, y_3), (*)(2, x_, y_013, y_2), (*)(2, x_, y_02, y_13), (*)(-2, x_, y_023, y_1), (*)(-2, x_, y_03, y_12))
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function sandwich(x::MultiVectorEven, y::MultiVectorEven)
    x_ = x.e
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    x_0123 = x.e0123
    y_ = y.e
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    y_0123 = y.e0123
    ret_ = (*)(x_, (+)((^)(y_, 2), (^)(y_12, 2), (^)(y_13, 2), (^)(y_23, 2)))
    ret_23 = (+)((*)(x_23, (+)((^)(y_, 2), (^)(y_23, 2), (*)(-1, (^)(y_12, 2)), (*)(-1, (^)(y_13, 2)))), (*)(-2, x_12, y_, y_13), (*)(2, x_12, y_12, y_23), (*)(2, x_13, y_, y_12), (*)(2, x_13, y_13, y_23))
    ret_13 = (+)((*)(x_13, (+)((^)(y_, 2), (^)(y_13, 2), (*)(-1, (^)(y_12, 2)), (*)(-1, (^)(y_23, 2)))), (*)(2, x_12, y_, y_23), (*)(2, x_12, y_12, y_13), (*)(-2, x_23, y_, y_12), (*)(2, x_23, y_13, y_23))
    ret_12 = (+)((*)(x_12, (+)((^)(y_, 2), (^)(y_12, 2), (*)(-1, (^)(y_13, 2)), (*)(-1, (^)(y_23, 2)))), (*)(-2, x_13, y_, y_23), (*)(2, x_13, y_12, y_13), (*)(2, x_23, y_, y_13), (*)(2, x_23, y_12, y_23))
    ret_03 = (+)((*)(x_03, (+)((^)(y_, 2), (^)(y_12, 2), (*)(-1, (^)(y_13, 2)), (*)(-1, (^)(y_23, 2)))), (*)(2, x_01, y_, y_13), (*)(2, x_01, y_12, y_23), (*)(2, x_02, y_, y_23), (*)(-2, x_02, y_12, y_13), (*)(-2, x_12, y_, y_0123), (*)(-2, x_12, y_01, y_23), (*)(2, x_12, y_02, y_13), (*)(2, x_12, y_03, y_12), (*)(-2, x_13, y_, y_01), (*)(2, x_13, y_0123, y_23), (*)(-2, x_13, y_02, y_12), (*)(2, x_13, y_03, y_13), (*)(-2, x_23, y_, y_02), (*)(2, x_23, y_01, y_12), (*)(-2, x_23, y_0123, y_13), (*)(2, x_23, y_03, y_23))
    ret_02 = (+)((*)(x_02, (+)((^)(y_, 2), (^)(y_13, 2), (*)(-1, (^)(y_12, 2)), (*)(-1, (^)(y_23, 2)))), (*)(2, x_01, y_, y_12), (*)(-2, x_01, y_13, y_23), (*)(-2, x_03, y_, y_23), (*)(-2, x_03, y_12, y_13), (*)(-2, x_12, y_, y_01), (*)(2, x_12, y_0123, y_23), (*)(2, x_12, y_02, y_12), (*)(-2, x_12, y_03, y_13), (*)(2, x_13, y_, y_0123), (*)(2, x_13, y_01, y_23), (*)(2, x_13, y_02, y_13), (*)(2, x_13, y_03, y_12), (*)(2, x_23, y_, y_03), (*)(-2, x_23, y_01, y_13), (*)(-2, x_23, y_0123, y_12), (*)(2, x_23, y_02, y_23))
    ret_01 = (+)((*)(x_01, (+)((^)(y_, 2), (^)(y_23, 2), (*)(-1, (^)(y_12, 2)), (*)(-1, (^)(y_13, 2)))), (*)(-2, x_02, y_, y_12), (*)(-2, x_02, y_13, y_23), (*)(-2, x_03, y_, y_13), (*)(2, x_03, y_12, y_23), (*)(2, x_12, y_, y_02), (*)(2, x_12, y_01, y_12), (*)(2, x_12, y_0123, y_13), (*)(2, x_12, y_03, y_23), (*)(2, x_13, y_, y_03), (*)(2, x_13, y_01, y_13), (*)(-2, x_13, y_0123, y_12), (*)(-2, x_13, y_02, y_23), (*)(-2, x_23, y_, y_0123), (*)(2, x_23, y_01, y_23), (*)(2, x_23, y_02, y_13), (*)(-2, x_23, y_03, y_12))
    ret_0123 = (+)((*)(x_0123, (+)((^)(y_, 2), (^)(y_12, 2), (^)(y_13, 2), (^)(y_23, 2))), (*)(2, x_, y_, y_0123), (*)(-2, x_, y_01, y_23), (*)(2, x_, y_02, y_13), (*)(-2, x_, y_03, y_12))
    return MultiVectorEven(; e = ret_, e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01, e0123 = ret_0123)
end
function sandwich(x::MultiVectorEven, y::MultiVector0)
    x_ = x.e
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    x_0123 = x.e0123
    y_ = y.e
    ret_ = (*)(x_, (^)(y_, 2))
    ret_23 = (*)(x_23, (^)(y_, 2))
    ret_13 = (*)(x_13, (^)(y_, 2))
    ret_12 = (*)(x_12, (^)(y_, 2))
    ret_03 = (*)(x_03, (^)(y_, 2))
    ret_02 = (*)(x_02, (^)(y_, 2))
    ret_01 = (*)(x_01, (^)(y_, 2))
    ret_0123 = (*)(x_0123, (^)(y_, 2))
    return MultiVectorEven(; e = ret_, e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01, e0123 = ret_0123)
end
function sandwich(x::MultiVectorEven, y::MultiVector1)
    x_ = x.e
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    x_0123 = x.e0123
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    y_0 = y.e0
    ret_ = (*)(x_, (+)((^)(y_1, 2), (^)(y_2, 2), (^)(y_3, 2)))
    ret_23 = (+)((*)(x_23, (+)((^)(y_1, 2), (*)(-1, (^)(y_2, 2)), (*)(-1, (^)(y_3, 2)))), (*)(2, x_12, y_1, y_3), (*)(-2, x_13, y_1, y_2))
    ret_13 = (+)((*)(x_13, (+)((^)(y_2, 2), (*)(-1, (^)(y_1, 2)), (*)(-1, (^)(y_3, 2)))), (*)(-2, x_12, y_2, y_3), (*)(-2, x_23, y_1, y_2))
    ret_12 = (+)((*)(x_12, (+)((^)(y_3, 2), (*)(-1, (^)(y_1, 2)), (*)(-1, (^)(y_2, 2)))), (*)(-2, x_13, y_2, y_3), (*)(2, x_23, y_1, y_3))
    ret_03 = (+)((*)(x_03, (+)((^)(y_1, 2), (^)(y_2, 2))), (*)(-1, x_03, (^)(y_3, 2)), (*)(-2, x_01, y_1, y_3), (*)(-2, x_02, y_2, y_3), (*)(-2, x_13, y_0, y_1), (*)(-2, x_23, y_0, y_2))
    ret_02 = (+)((*)(x_02, (+)((^)(y_1, 2), (^)(y_3, 2))), (*)(-1, x_02, (^)(y_2, 2)), (*)(-2, x_01, y_1, y_2), (*)(-2, x_03, y_2, y_3), (*)(-2, x_12, y_0, y_1), (*)(2, x_23, y_0, y_3))
    ret_01 = (+)((*)(x_01, (+)((^)(y_2, 2), (^)(y_3, 2))), (*)(-1, x_01, (^)(y_1, 2)), (*)(-2, x_02, y_1, y_2), (*)(-2, x_03, y_1, y_3), (*)(2, x_12, y_0, y_2), (*)(2, x_13, y_0, y_3))
    ret_0123 = (+)((*)(x_0123, (+)((*)(-1, (^)(y_1, 2)), (*)(-1, (^)(y_2, 2)))), (*)(-1, x_0123, (^)(y_3, 2)))
    return MultiVectorEven(; e = ret_, e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01, e0123 = ret_0123)
end
function sandwich(x::MultiVectorEven, y::MultiVector2)
    x_ = x.e
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    x_0123 = x.e0123
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    ret_ = (*)(x_, (+)((^)(y_12, 2), (^)(y_13, 2), (^)(y_23, 2)))
    ret_23 = (+)((*)(x_23, (+)((^)(y_23, 2), (*)(-1, (^)(y_12, 2)), (*)(-1, (^)(y_13, 2)))), (*)(2, x_12, y_12, y_23), (*)(2, x_13, y_13, y_23))
    ret_13 = (+)((*)(x_13, (+)((^)(y_13, 2), (*)(-1, (^)(y_12, 2)), (*)(-1, (^)(y_23, 2)))), (*)(2, x_12, y_12, y_13), (*)(2, x_23, y_13, y_23))
    ret_12 = (+)((*)(x_12, (+)((^)(y_12, 2), (*)(-1, (^)(y_13, 2)), (*)(-1, (^)(y_23, 2)))), (*)(2, x_13, y_12, y_13), (*)(2, x_23, y_12, y_23))
    ret_03 = (+)((*)(x_03, (+)((^)(y_12, 2), (*)(-1, (^)(y_13, 2)), (*)(-1, (^)(y_23, 2)))), (*)(2, x_01, y_12, y_23), (*)(-2, x_02, y_12, y_13), (*)(-2, x_12, y_01, y_23), (*)(2, x_12, y_02, y_13), (*)(2, x_12, y_03, y_12), (*)(-2, x_13, y_02, y_12), (*)(2, x_13, y_03, y_13), (*)(2, x_23, y_01, y_12), (*)(2, x_23, y_03, y_23))
    ret_02 = (+)((*)(x_02, (+)((^)(y_13, 2), (*)(-1, (^)(y_12, 2)), (*)(-1, (^)(y_23, 2)))), (*)(-2, x_01, y_13, y_23), (*)(-2, x_03, y_12, y_13), (*)(2, x_12, y_02, y_12), (*)(-2, x_12, y_03, y_13), (*)(2, x_13, y_01, y_23), (*)(2, x_13, y_02, y_13), (*)(2, x_13, y_03, y_12), (*)(-2, x_23, y_01, y_13), (*)(2, x_23, y_02, y_23))
    ret_01 = (+)((*)(x_01, (+)((^)(y_23, 2), (*)(-1, (^)(y_12, 2)), (*)(-1, (^)(y_13, 2)))), (*)(-2, x_02, y_13, y_23), (*)(2, x_03, y_12, y_23), (*)(2, x_12, y_01, y_12), (*)(2, x_12, y_03, y_23), (*)(2, x_13, y_01, y_13), (*)(-2, x_13, y_02, y_23), (*)(2, x_23, y_01, y_23), (*)(2, x_23, y_02, y_13), (*)(-2, x_23, y_03, y_12))
    ret_0123 = (+)((*)(x_0123, (+)((^)(y_12, 2), (^)(y_13, 2), (^)(y_23, 2))), (*)(-2, x_, y_01, y_23), (*)(2, x_, y_02, y_13), (*)(-2, x_, y_03, y_12))
    return MultiVectorEven(; e = ret_, e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01, e0123 = ret_0123)
end
function sandwich(x::MultiVectorEven, y::MultiVector3)
    x_ = x.e
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    x_0123 = x.e0123
    y_123 = y.e123
    y_023 = y.e023
    y_013 = y.e013
    y_012 = y.e012
    ret_ = (*)(x_, (^)(y_123, 2))
    ret_23 = (*)(x_23, (^)(y_123, 2))
    ret_13 = (*)(x_13, (^)(y_123, 2))
    ret_12 = (*)(x_12, (^)(y_123, 2))
    ret_03 = (+)((*)(-1, x_03, (^)(y_123, 2)), (*)(2, x_13, y_023, y_123), (*)(-2, x_23, y_013, y_123))
    ret_02 = (+)((*)(-1, x_02, (^)(y_123, 2)), (*)(2, x_12, y_023, y_123), (*)(-2, x_23, y_012, y_123))
    ret_01 = (+)((*)(-1, x_01, (^)(y_123, 2)), (*)(2, x_12, y_013, y_123), (*)(-2, x_13, y_012, y_123))
    ret_0123 = (*)(-1, x_0123, (^)(y_123, 2))
    return MultiVectorEven(; e = ret_, e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01, e0123 = ret_0123)
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
    y_3 = y.e3
    y_2 = y.e2
    y_23 = y.e23
    y_1 = y.e1
    y_13 = y.e13
    y_12 = y.e12
    y_123 = y.e123
    y_0 = y.e0
    y_03 = y.e03
    y_02 = y.e02
    y_023 = y.e023
    y_01 = y.e01
    y_013 = y.e013
    y_012 = y.e012
    y_0123 = y.e0123
    ret_ = (*)(x_, (+)((^)(y_, 2), (^)(y_1, 2), (^)(y_12, 2), (^)(y_123, 2), (^)(y_13, 2), (^)(y_2, 2), (^)(y_23, 2), (^)(y_3, 2)))
    ret_3 = (+)((*)(2, x_, y_, y_3), (*)(2, x_, y_1, y_13), (*)(2, x_, y_12, y_123), (*)(2, x_, y_2, y_23))
    ret_2 = (+)((*)(2, x_, y_, y_2), (*)(2, x_, y_1, y_12), (*)(-2, x_, y_123, y_13), (*)(-2, x_, y_23, y_3))
    ret_1 = (+)((*)(2, x_, y_, y_1), (*)(-2, x_, y_12, y_2), (*)(2, x_, y_123, y_23), (*)(-2, x_, y_13, y_3))
    ret_0 = (+)((*)(2, x_, y_, y_0), (*)(-2, x_, y_01, y_1), (*)(2, x_, y_012, y_12), (*)(-2, x_, y_0123, y_123), (*)(2, x_, y_013, y_13), (*)(-2, x_, y_02, y_2), (*)(2, x_, y_023, y_23), (*)(-2, x_, y_03, y_3))
    ret_0123 = (+)((*)(2, x_, y_, y_0123), (*)(2, x_, y_0, y_123), (*)(-2, x_, y_01, y_23), (*)(-2, x_, y_012, y_3), (*)(2, x_, y_013, y_2), (*)(2, x_, y_02, y_13), (*)(-2, x_, y_023, y_1), (*)(-2, x_, y_03, y_12))
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e1 = ret_1, e0 = ret_0, e0123 = ret_0123)
end
function sandwich(x::MultiVector0, y::MultiVectorEven)
    x_ = x.e
    y_ = y.e
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    y_0123 = y.e0123
    ret_ = (*)(x_, (+)((^)(y_, 2), (^)(y_12, 2), (^)(y_13, 2), (^)(y_23, 2)))
    ret_0123 = (+)((*)(2, x_, y_, y_0123), (*)(-2, x_, y_01, y_23), (*)(2, x_, y_02, y_13), (*)(-2, x_, y_03, y_12))
    return MultiVectorEven(; e = ret_, e0123 = ret_0123)
end
function sandwich(x::MultiVector0, y::MultiVector0)
    x_ = x.e
    y_ = y.e
    ret_ = (*)(x_, (^)(y_, 2))
    return MultiVector0(; e = ret_)
end
function sandwich(x::MultiVector0, y::MultiVector1)
    x_ = x.e
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    y_0 = y.e0
    ret_ = (*)(x_, (+)((^)(y_1, 2), (^)(y_2, 2), (^)(y_3, 2)))
    return MultiVector0(; e = ret_)
end
function sandwich(x::MultiVector0, y::MultiVector2)
    x_ = x.e
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    ret_ = (*)(x_, (+)((^)(y_12, 2), (^)(y_13, 2), (^)(y_23, 2)))
    ret_0123 = (+)((*)(-2, x_, y_01, y_23), (*)(2, x_, y_02, y_13), (*)(-2, x_, y_03, y_12))
    return MultiVectorEven(; e = ret_, e0123 = ret_0123)
end
function sandwich(x::MultiVector0, y::MultiVector3)
    x_ = x.e
    y_123 = y.e123
    y_023 = y.e023
    y_013 = y.e013
    y_012 = y.e012
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
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    x_0 = x.e0
    y_ = y.e
    y_3 = y.e3
    y_2 = y.e2
    y_23 = y.e23
    y_1 = y.e1
    y_13 = y.e13
    y_12 = y.e12
    y_123 = y.e123
    y_0 = y.e0
    y_03 = y.e03
    y_02 = y.e02
    y_023 = y.e023
    y_01 = y.e01
    y_013 = y.e013
    y_012 = y.e012
    y_0123 = y.e0123
    ret_ = (+)((*)(2, x_1, y_, y_1), (*)(2, x_1, y_12, y_2), (*)(2, x_1, y_123, y_23), (*)(2, x_1, y_13, y_3), (*)(2, x_2, y_, y_2), (*)(-2, x_2, y_1, y_12), (*)(-2, x_2, y_123, y_13), (*)(2, x_2, y_23, y_3), (*)(2, x_3, y_, y_3), (*)(-2, x_3, y_1, y_13), (*)(2, x_3, y_12, y_123), (*)(-2, x_3, y_2, y_23))
    ret_3 = (+)((*)(x_3, (+)((^)(y_, 2), (^)(y_12, 2), (^)(y_123, 2), (^)(y_3, 2), (*)(-1, (^)(y_1, 2)), (*)(-1, (^)(y_13, 2)), (*)(-1, (^)(y_2, 2)), (*)(-1, (^)(y_23, 2)))), (*)(2, x_1, y_, y_13), (*)(2, x_1, y_1, y_3), (*)(2, x_1, y_12, y_23), (*)(2, x_1, y_123, y_2), (*)(2, x_2, y_, y_23), (*)(-2, x_2, y_1, y_123), (*)(-2, x_2, y_12, y_13), (*)(2, x_2, y_2, y_3))
    ret_2 = (+)((*)(x_2, (+)((^)(y_, 2), (^)(y_123, 2), (^)(y_13, 2), (^)(y_2, 2), (*)(-1, (^)(y_1, 2)), (*)(-1, (^)(y_12, 2)), (*)(-1, (^)(y_23, 2)), (*)(-1, (^)(y_3, 2)))), (*)(2, x_1, y_, y_12), (*)(2, x_1, y_1, y_2), (*)(-2, x_1, y_123, y_3), (*)(-2, x_1, y_13, y_23), (*)(-2, x_3, y_, y_23), (*)(2, x_3, y_1, y_123), (*)(-2, x_3, y_12, y_13), (*)(2, x_3, y_2, y_3))
    ret_1 = (+)((*)(x_1, (+)((^)(y_, 2), (^)(y_1, 2), (^)(y_123, 2), (^)(y_23, 2), (*)(-1, (^)(y_12, 2)), (*)(-1, (^)(y_13, 2)), (*)(-1, (^)(y_2, 2)), (*)(-1, (^)(y_3, 2)))), (*)(-2, x_2, y_, y_12), (*)(2, x_2, y_1, y_2), (*)(2, x_2, y_123, y_3), (*)(-2, x_2, y_13, y_23), (*)(-2, x_3, y_, y_13), (*)(2, x_3, y_1, y_3), (*)(2, x_3, y_12, y_23), (*)(-2, x_3, y_123, y_2))
    ret_0 = (+)((*)(x_0, (+)((^)(y_, 2), (^)(y_12, 2), (^)(y_13, 2), (^)(y_23, 2), (*)(-1, (^)(y_1, 2)), (*)(-1, (^)(y_123, 2)), (*)(-1, (^)(y_2, 2)), (*)(-1, (^)(y_3, 2)))), (*)(-2, x_1, y_, y_01), (*)(2, x_1, y_0, y_1), (*)(2, x_1, y_012, y_2), (*)(-2, x_1, y_0123, y_23), (*)(2, x_1, y_013, y_3), (*)(-2, x_1, y_02, y_12), (*)(2, x_1, y_023, y_123), (*)(-2, x_1, y_03, y_13), (*)(-2, x_2, y_, y_02), (*)(2, x_2, y_0, y_2), (*)(2, x_2, y_01, y_12), (*)(-2, x_2, y_012, y_1), (*)(2, x_2, y_0123, y_13), (*)(-2, x_2, y_013, y_123), (*)(2, x_2, y_023, y_3), (*)(-2, x_2, y_03, y_23), (*)(-2, x_3, y_, y_03), (*)(2, x_3, y_0, y_3), (*)(2, x_3, y_01, y_13), (*)(2, x_3, y_012, y_123), (*)(-2, x_3, y_0123, y_12), (*)(-2, x_3, y_013, y_1), (*)(2, x_3, y_02, y_23), (*)(-2, x_3, y_023, y_2))
    ret_0123 = (+)((*)(2, x_0, y_, y_123), (*)(-2, x_0, y_1, y_23), (*)(-2, x_0, y_12, y_3), (*)(2, x_0, y_13, y_2), (*)(-2, x_1, y_, y_023), (*)(2, x_1, y_0, y_23), (*)(-2, x_1, y_01, y_123), (*)(-2, x_1, y_012, y_13), (*)(2, x_1, y_0123, y_1), (*)(2, x_1, y_013, y_12), (*)(2, x_1, y_02, y_3), (*)(-2, x_1, y_03, y_2), (*)(2, x_2, y_, y_013), (*)(-2, x_2, y_0, y_13), (*)(-2, x_2, y_01, y_3), (*)(-2, x_2, y_012, y_23), (*)(2, x_2, y_0123, y_2), (*)(-2, x_2, y_02, y_123), (*)(2, x_2, y_023, y_12), (*)(2, x_2, y_03, y_1), (*)(-2, x_3, y_, y_012), (*)(2, x_3, y_0, y_12), (*)(2, x_3, y_01, y_2), (*)(2, x_3, y_0123, y_3), (*)(-2, x_3, y_013, y_23), (*)(-2, x_3, y_02, y_1), (*)(2, x_3, y_023, y_13), (*)(-2, x_3, y_03, y_123))
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e1 = ret_1, e0 = ret_0, e0123 = ret_0123)
end
function sandwich(x::MultiVector1, y::MultiVectorEven)
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    x_0 = x.e0
    y_ = y.e
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    y_0123 = y.e0123
    ret_3 = (+)((*)(x_3, (+)((^)(y_, 2), (^)(y_12, 2), (*)(-1, (^)(y_13, 2)), (*)(-1, (^)(y_23, 2)))), (*)(2, x_1, y_, y_13), (*)(2, x_1, y_12, y_23), (*)(2, x_2, y_, y_23), (*)(-2, x_2, y_12, y_13))
    ret_2 = (+)((*)(x_2, (+)((^)(y_, 2), (^)(y_13, 2), (*)(-1, (^)(y_12, 2)), (*)(-1, (^)(y_23, 2)))), (*)(2, x_1, y_, y_12), (*)(-2, x_1, y_13, y_23), (*)(-2, x_3, y_, y_23), (*)(-2, x_3, y_12, y_13))
    ret_1 = (+)((*)(x_1, (+)((^)(y_, 2), (^)(y_23, 2), (*)(-1, (^)(y_12, 2)), (*)(-1, (^)(y_13, 2)))), (*)(-2, x_2, y_, y_12), (*)(-2, x_2, y_13, y_23), (*)(-2, x_3, y_, y_13), (*)(2, x_3, y_12, y_23))
    ret_0 = (+)((*)(x_0, (+)((^)(y_, 2), (^)(y_12, 2), (^)(y_13, 2), (^)(y_23, 2))), (*)(-2, x_1, y_, y_01), (*)(-2, x_1, y_0123, y_23), (*)(-2, x_1, y_02, y_12), (*)(-2, x_1, y_03, y_13), (*)(-2, x_2, y_, y_02), (*)(2, x_2, y_01, y_12), (*)(2, x_2, y_0123, y_13), (*)(-2, x_2, y_03, y_23), (*)(-2, x_3, y_, y_03), (*)(2, x_3, y_01, y_13), (*)(-2, x_3, y_0123, y_12), (*)(2, x_3, y_02, y_23))
    return MultiVector1(; e3 = ret_3, e2 = ret_2, e1 = ret_1, e0 = ret_0)
end
function sandwich(x::MultiVector1, y::MultiVector0)
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    x_0 = x.e0
    y_ = y.e
    ret_3 = (*)(x_3, (^)(y_, 2))
    ret_2 = (*)(x_2, (^)(y_, 2))
    ret_1 = (*)(x_1, (^)(y_, 2))
    ret_0 = (*)(x_0, (^)(y_, 2))
    return MultiVector1(; e3 = ret_3, e2 = ret_2, e1 = ret_1, e0 = ret_0)
end
function sandwich(x::MultiVector1, y::MultiVector1)
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    x_0 = x.e0
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    y_0 = y.e0
    ret_3 = (+)((*)(x_3, (+)((^)(y_3, 2), (*)(-1, (^)(y_1, 2)), (*)(-1, (^)(y_2, 2)))), (*)(2, x_1, y_1, y_3), (*)(2, x_2, y_2, y_3))
    ret_2 = (+)((*)(x_2, (+)((^)(y_2, 2), (*)(-1, (^)(y_1, 2)), (*)(-1, (^)(y_3, 2)))), (*)(2, x_1, y_1, y_2), (*)(2, x_3, y_2, y_3))
    ret_1 = (+)((*)(x_1, (+)((^)(y_1, 2), (*)(-1, (^)(y_2, 2)), (*)(-1, (^)(y_3, 2)))), (*)(2, x_2, y_1, y_2), (*)(2, x_3, y_1, y_3))
    ret_0 = (+)((*)(x_0, (+)((*)(-1, (^)(y_1, 2)), (*)(-1, (^)(y_2, 2)))), (*)(-1, x_0, (^)(y_3, 2)), (*)(2, x_1, y_0, y_1), (*)(2, x_2, y_0, y_2), (*)(2, x_3, y_0, y_3))
    return MultiVector1(; e3 = ret_3, e2 = ret_2, e1 = ret_1, e0 = ret_0)
end
function sandwich(x::MultiVector1, y::MultiVector2)
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    x_0 = x.e0
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    ret_3 = (+)((*)(x_3, (+)((^)(y_12, 2), (*)(-1, (^)(y_13, 2)), (*)(-1, (^)(y_23, 2)))), (*)(2, x_1, y_12, y_23), (*)(-2, x_2, y_12, y_13))
    ret_2 = (+)((*)(x_2, (+)((^)(y_13, 2), (*)(-1, (^)(y_12, 2)), (*)(-1, (^)(y_23, 2)))), (*)(-2, x_1, y_13, y_23), (*)(-2, x_3, y_12, y_13))
    ret_1 = (+)((*)(x_1, (+)((^)(y_23, 2), (*)(-1, (^)(y_12, 2)), (*)(-1, (^)(y_13, 2)))), (*)(-2, x_2, y_13, y_23), (*)(2, x_3, y_12, y_23))
    ret_0 = (+)((*)(x_0, (+)((^)(y_12, 2), (^)(y_13, 2), (^)(y_23, 2))), (*)(-2, x_1, y_02, y_12), (*)(-2, x_1, y_03, y_13), (*)(2, x_2, y_01, y_12), (*)(-2, x_2, y_03, y_23), (*)(2, x_3, y_01, y_13), (*)(2, x_3, y_02, y_23))
    return MultiVector1(; e3 = ret_3, e2 = ret_2, e1 = ret_1, e0 = ret_0)
end
function sandwich(x::MultiVector1, y::MultiVector3)
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    x_0 = x.e0
    y_123 = y.e123
    y_023 = y.e023
    y_013 = y.e013
    y_012 = y.e012
    ret_3 = (*)(x_3, (^)(y_123, 2))
    ret_2 = (*)(x_2, (^)(y_123, 2))
    ret_1 = (*)(x_1, (^)(y_123, 2))
    ret_0 = (+)((*)(-1, x_0, (^)(y_123, 2)), (*)(2, x_1, y_023, y_123), (*)(-2, x_2, y_013, y_123), (*)(2, x_3, y_012, y_123))
    return MultiVector1(; e3 = ret_3, e2 = ret_2, e1 = ret_1, e0 = ret_0)
end
function sandwich(x::MultiVector1, y::MultiVector4)
    return MultiVectorZero(; )
end
function sandwich(x::MultiVector1, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function sandwich(x::MultiVector2, y::MultiVectorAll)
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    y_ = y.e
    y_3 = y.e3
    y_2 = y.e2
    y_23 = y.e23
    y_1 = y.e1
    y_13 = y.e13
    y_12 = y.e12
    y_123 = y.e123
    y_0 = y.e0
    y_03 = y.e03
    y_02 = y.e02
    y_023 = y.e023
    y_01 = y.e01
    y_013 = y.e013
    y_012 = y.e012
    y_0123 = y.e0123
    ret_23 = (+)((*)(x_23, (+)((^)(y_, 2), (^)(y_1, 2), (^)(y_123, 2), (^)(y_23, 2), (*)(-1, (^)(y_12, 2)), (*)(-1, (^)(y_13, 2)), (*)(-1, (^)(y_2, 2)), (*)(-1, (^)(y_3, 2)))), (*)(-2, x_12, y_, y_13), (*)(2, x_12, y_1, y_3), (*)(2, x_12, y_12, y_23), (*)(-2, x_12, y_123, y_2), (*)(2, x_13, y_, y_12), (*)(-2, x_13, y_1, y_2), (*)(-2, x_13, y_123, y_3), (*)(2, x_13, y_13, y_23))
    ret_13 = (+)((*)(x_13, (+)((^)(y_, 2), (^)(y_123, 2), (^)(y_13, 2), (^)(y_2, 2), (*)(-1, (^)(y_1, 2)), (*)(-1, (^)(y_12, 2)), (*)(-1, (^)(y_23, 2)), (*)(-1, (^)(y_3, 2)))), (*)(2, x_12, y_, y_23), (*)(-2, x_12, y_1, y_123), (*)(2, x_12, y_12, y_13), (*)(-2, x_12, y_2, y_3), (*)(-2, x_23, y_, y_12), (*)(-2, x_23, y_1, y_2), (*)(2, x_23, y_123, y_3), (*)(2, x_23, y_13, y_23))
    ret_12 = (+)((*)(x_12, (+)((^)(y_, 2), (^)(y_12, 2), (^)(y_123, 2), (^)(y_3, 2), (*)(-1, (^)(y_1, 2)), (*)(-1, (^)(y_13, 2)), (*)(-1, (^)(y_2, 2)), (*)(-1, (^)(y_23, 2)))), (*)(-2, x_13, y_, y_23), (*)(2, x_13, y_1, y_123), (*)(2, x_13, y_12, y_13), (*)(-2, x_13, y_2, y_3), (*)(2, x_23, y_, y_13), (*)(2, x_23, y_1, y_3), (*)(2, x_23, y_12, y_23), (*)(2, x_23, y_123, y_2))
    ret_123 = (+)((*)(2, x_12, y_, y_3), (*)(-2, x_12, y_1, y_13), (*)(2, x_12, y_12, y_123), (*)(-2, x_12, y_2, y_23), (*)(-2, x_13, y_, y_2), (*)(2, x_13, y_1, y_12), (*)(2, x_13, y_123, y_13), (*)(-2, x_13, y_23, y_3), (*)(2, x_23, y_, y_1), (*)(2, x_23, y_12, y_2), (*)(2, x_23, y_123, y_23), (*)(2, x_23, y_13, y_3))
    ret_03 = (+)((*)(x_03, (+)((^)(y_, 2), (^)(y_1, 2), (^)(y_12, 2), (^)(y_2, 2), (*)(-1, (^)(y_123, 2)), (*)(-1, (^)(y_13, 2)), (*)(-1, (^)(y_23, 2)), (*)(-1, (^)(y_3, 2)))), (*)(2, x_01, y_, y_13), (*)(-2, x_01, y_1, y_3), (*)(2, x_01, y_12, y_23), (*)(-2, x_01, y_123, y_2), (*)(2, x_02, y_, y_23), (*)(2, x_02, y_1, y_123), (*)(-2, x_02, y_12, y_13), (*)(-2, x_02, y_2, y_3), (*)(-2, x_12, y_, y_0123), (*)(-2, x_12, y_0, y_123), (*)(-2, x_12, y_01, y_23), (*)(2, x_12, y_012, y_3), (*)(2, x_12, y_013, y_2), (*)(2, x_12, y_02, y_13), (*)(-2, x_12, y_023, y_1), (*)(2, x_12, y_03, y_12), (*)(-2, x_13, y_, y_01), (*)(-2, x_13, y_0, y_1), (*)(-2, x_13, y_012, y_2), (*)(2, x_13, y_0123, y_23), (*)(2, x_13, y_013, y_3), (*)(-2, x_13, y_02, y_12), (*)(2, x_13, y_023, y_123), (*)(2, x_13, y_03, y_13), (*)(-2, x_23, y_, y_02), (*)(-2, x_23, y_0, y_2), (*)(2, x_23, y_01, y_12), (*)(2, x_23, y_012, y_1), (*)(-2, x_23, y_0123, y_13), (*)(-2, x_23, y_013, y_123), (*)(2, x_23, y_023, y_3), (*)(2, x_23, y_03, y_23))
    ret_02 = (+)((*)(x_02, (+)((^)(y_, 2), (^)(y_1, 2), (^)(y_13, 2), (^)(y_3, 2), (*)(-1, (^)(y_12, 2)), (*)(-1, (^)(y_123, 2)), (*)(-1, (^)(y_2, 2)), (*)(-1, (^)(y_23, 2)))), (*)(2, x_01, y_, y_12), (*)(-2, x_01, y_1, y_2), (*)(2, x_01, y_123, y_3), (*)(-2, x_01, y_13, y_23), (*)(-2, x_03, y_, y_23), (*)(-2, x_03, y_1, y_123), (*)(-2, x_03, y_12, y_13), (*)(-2, x_03, y_2, y_3), (*)(-2, x_12, y_, y_01), (*)(-2, x_12, y_0, y_1), (*)(2, x_12, y_012, y_2), (*)(2, x_12, y_0123, y_23), (*)(-2, x_12, y_013, y_3), (*)(2, x_12, y_02, y_12), (*)(2, x_12, y_023, y_123), (*)(-2, x_12, y_03, y_13), (*)(2, x_13, y_, y_0123), (*)(2, x_13, y_0, y_123), (*)(2, x_13, y_01, y_23), (*)(2, x_13, y_012, y_3), (*)(2, x_13, y_013, y_2), (*)(2, x_13, y_02, y_13), (*)(2, x_13, y_023, y_1), (*)(2, x_13, y_03, y_12), (*)(2, x_23, y_, y_03), (*)(2, x_23, y_0, y_3), (*)(-2, x_23, y_01, y_13), (*)(-2, x_23, y_012, y_123), (*)(-2, x_23, y_0123, y_12), (*)(-2, x_23, y_013, y_1), (*)(2, x_23, y_02, y_23), (*)(2, x_23, y_023, y_2))
    ret_023 = (+)((*)(2, x_01, y_, y_123), (*)(-2, x_01, y_1, y_23), (*)(2, x_01, y_12, y_3), (*)(-2, x_01, y_13, y_2), (*)(2, x_02, y_, y_3), (*)(2, x_02, y_1, y_13), (*)(-2, x_02, y_12, y_123), (*)(-2, x_02, y_2, y_23), (*)(-2, x_03, y_, y_2), (*)(-2, x_03, y_1, y_12), (*)(-2, x_03, y_123, y_13), (*)(-2, x_03, y_23, y_3), (*)(-2, x_12, y_, y_013), (*)(-2, x_12, y_0, y_13), (*)(-2, x_12, y_01, y_3), (*)(2, x_12, y_012, y_23), (*)(2, x_12, y_0123, y_2), (*)(2, x_12, y_02, y_123), (*)(2, x_12, y_023, y_12), (*)(-2, x_12, y_03, y_1), (*)(2, x_13, y_, y_012), (*)(2, x_13, y_0, y_12), (*)(2, x_13, y_01, y_2), (*)(2, x_13, y_0123, y_3), (*)(2, x_13, y_013, y_23), (*)(2, x_13, y_02, y_1), (*)(2, x_13, y_023, y_13), (*)(2, x_13, y_03, y_123), (*)(2, x_23, y_, y_0), (*)(-2, x_23, y_01, y_1), (*)(-2, x_23, y_012, y_12), (*)(-2, x_23, y_0123, y_123), (*)(-2, x_23, y_013, y_13), (*)(2, x_23, y_02, y_2), (*)(2, x_23, y_023, y_23), (*)(2, x_23, y_03, y_3))
    ret_01 = (+)((*)(x_01, (+)((^)(y_, 2), (^)(y_2, 2), (^)(y_23, 2), (^)(y_3, 2), (*)(-1, (^)(y_1, 2)), (*)(-1, (^)(y_12, 2)), (*)(-1, (^)(y_123, 2)), (*)(-1, (^)(y_13, 2)))), (*)(-2, x_02, y_, y_12), (*)(-2, x_02, y_1, y_2), (*)(-2, x_02, y_123, y_3), (*)(-2, x_02, y_13, y_23), (*)(-2, x_03, y_, y_13), (*)(-2, x_03, y_1, y_3), (*)(2, x_03, y_12, y_23), (*)(2, x_03, y_123, y_2), (*)(2, x_12, y_, y_02), (*)(2, x_12, y_0, y_2), (*)(2, x_12, y_01, y_12), (*)(2, x_12, y_012, y_1), (*)(2, x_12, y_0123, y_13), (*)(2, x_12, y_013, y_123), (*)(2, x_12, y_023, y_3), (*)(2, x_12, y_03, y_23), (*)(2, x_13, y_, y_03), (*)(2, x_13, y_0, y_3), (*)(2, x_13, y_01, y_13), (*)(-2, x_13, y_012, y_123), (*)(-2, x_13, y_0123, y_12), (*)(2, x_13, y_013, y_1), (*)(-2, x_13, y_02, y_23), (*)(-2, x_13, y_023, y_2), (*)(-2, x_23, y_, y_0123), (*)(-2, x_23, y_0, y_123), (*)(2, x_23, y_01, y_23), (*)(-2, x_23, y_012, y_3), (*)(2, x_23, y_013, y_2), (*)(2, x_23, y_02, y_13), (*)(2, x_23, y_023, y_1), (*)(-2, x_23, y_03, y_12))
    ret_013 = (+)((*)(2, x_01, y_, y_3), (*)(-2, x_01, y_1, y_13), (*)(-2, x_01, y_12, y_123), (*)(2, x_01, y_2, y_23), (*)(-2, x_02, y_, y_123), (*)(-2, x_02, y_1, y_23), (*)(-2, x_02, y_12, y_3), (*)(-2, x_02, y_13, y_2), (*)(-2, x_03, y_, y_1), (*)(2, x_03, y_12, y_2), (*)(2, x_03, y_123, y_23), (*)(-2, x_03, y_13, y_3), (*)(2, x_12, y_, y_023), (*)(2, x_12, y_0, y_23), (*)(2, x_12, y_01, y_123), (*)(2, x_12, y_012, y_13), (*)(2, x_12, y_0123, y_1), (*)(2, x_12, y_013, y_12), (*)(2, x_12, y_02, y_3), (*)(2, x_12, y_03, y_2), (*)(2, x_13, y_, y_0), (*)(2, x_13, y_01, y_1), (*)(-2, x_13, y_012, y_12), (*)(-2, x_13, y_0123, y_123), (*)(2, x_13, y_013, y_13), (*)(-2, x_13, y_02, y_2), (*)(-2, x_13, y_023, y_23), (*)(2, x_13, y_03, y_3), (*)(-2, x_23, y_, y_012), (*)(-2, x_23, y_0, y_12), (*)(2, x_23, y_01, y_2), (*)(-2, x_23, y_0123, y_3), (*)(2, x_23, y_013, y_23), (*)(2, x_23, y_02, y_1), (*)(2, x_23, y_023, y_13), (*)(-2, x_23, y_03, y_123))
    ret_012 = (+)((*)(2, x_01, y_, y_2), (*)(-2, x_01, y_1, y_12), (*)(2, x_01, y_123, y_13), (*)(-2, x_01, y_23, y_3), (*)(-2, x_02, y_, y_1), (*)(-2, x_02, y_12, y_2), (*)(2, x_02, y_123, y_23), (*)(2, x_02, y_13, y_3), (*)(2, x_03, y_, y_123), (*)(2, x_03, y_1, y_23), (*)(-2, x_03, y_12, y_3), (*)(-2, x_03, y_13, y_2), (*)(2, x_12, y_, y_0), (*)(2, x_12, y_01, y_1), (*)(2, x_12, y_012, y_12), (*)(-2, x_12, y_0123, y_123), (*)(-2, x_12, y_013, y_13), (*)(2, x_12, y_02, y_2), (*)(-2, x_12, y_023, y_23), (*)(-2, x_12, y_03, y_3), (*)(-2, x_13, y_, y_023), (*)(-2, x_13, y_0, y_23), (*)(-2, x_13, y_01, y_123), (*)(2, x_13, y_012, y_13), (*)(-2, x_13, y_0123, y_1), (*)(2, x_13, y_013, y_12), (*)(2, x_13, y_02, y_3), (*)(2, x_13, y_03, y_2), (*)(2, x_23, y_, y_013), (*)(2, x_23, y_0, y_13), (*)(-2, x_23, y_01, y_3), (*)(2, x_23, y_012, y_23), (*)(-2, x_23, y_0123, y_2), (*)(-2, x_23, y_02, y_123), (*)(2, x_23, y_023, y_12), (*)(-2, x_23, y_03, y_1))
    return MultiVectorAll(; e23 = ret_23, e13 = ret_13, e12 = ret_12, e123 = ret_123, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012)
end
function sandwich(x::MultiVector2, y::MultiVectorEven)
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    y_ = y.e
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    y_0123 = y.e0123
    ret_23 = (+)((*)(x_23, (+)((^)(y_, 2), (^)(y_23, 2), (*)(-1, (^)(y_12, 2)), (*)(-1, (^)(y_13, 2)))), (*)(-2, x_12, y_, y_13), (*)(2, x_12, y_12, y_23), (*)(2, x_13, y_, y_12), (*)(2, x_13, y_13, y_23))
    ret_13 = (+)((*)(x_13, (+)((^)(y_, 2), (^)(y_13, 2), (*)(-1, (^)(y_12, 2)), (*)(-1, (^)(y_23, 2)))), (*)(2, x_12, y_, y_23), (*)(2, x_12, y_12, y_13), (*)(-2, x_23, y_, y_12), (*)(2, x_23, y_13, y_23))
    ret_12 = (+)((*)(x_12, (+)((^)(y_, 2), (^)(y_12, 2), (*)(-1, (^)(y_13, 2)), (*)(-1, (^)(y_23, 2)))), (*)(-2, x_13, y_, y_23), (*)(2, x_13, y_12, y_13), (*)(2, x_23, y_, y_13), (*)(2, x_23, y_12, y_23))
    ret_03 = (+)((*)(x_03, (+)((^)(y_, 2), (^)(y_12, 2), (*)(-1, (^)(y_13, 2)), (*)(-1, (^)(y_23, 2)))), (*)(2, x_01, y_, y_13), (*)(2, x_01, y_12, y_23), (*)(2, x_02, y_, y_23), (*)(-2, x_02, y_12, y_13), (*)(-2, x_12, y_, y_0123), (*)(-2, x_12, y_01, y_23), (*)(2, x_12, y_02, y_13), (*)(2, x_12, y_03, y_12), (*)(-2, x_13, y_, y_01), (*)(2, x_13, y_0123, y_23), (*)(-2, x_13, y_02, y_12), (*)(2, x_13, y_03, y_13), (*)(-2, x_23, y_, y_02), (*)(2, x_23, y_01, y_12), (*)(-2, x_23, y_0123, y_13), (*)(2, x_23, y_03, y_23))
    ret_02 = (+)((*)(x_02, (+)((^)(y_, 2), (^)(y_13, 2), (*)(-1, (^)(y_12, 2)), (*)(-1, (^)(y_23, 2)))), (*)(2, x_01, y_, y_12), (*)(-2, x_01, y_13, y_23), (*)(-2, x_03, y_, y_23), (*)(-2, x_03, y_12, y_13), (*)(-2, x_12, y_, y_01), (*)(2, x_12, y_0123, y_23), (*)(2, x_12, y_02, y_12), (*)(-2, x_12, y_03, y_13), (*)(2, x_13, y_, y_0123), (*)(2, x_13, y_01, y_23), (*)(2, x_13, y_02, y_13), (*)(2, x_13, y_03, y_12), (*)(2, x_23, y_, y_03), (*)(-2, x_23, y_01, y_13), (*)(-2, x_23, y_0123, y_12), (*)(2, x_23, y_02, y_23))
    ret_01 = (+)((*)(x_01, (+)((^)(y_, 2), (^)(y_23, 2), (*)(-1, (^)(y_12, 2)), (*)(-1, (^)(y_13, 2)))), (*)(-2, x_02, y_, y_12), (*)(-2, x_02, y_13, y_23), (*)(-2, x_03, y_, y_13), (*)(2, x_03, y_12, y_23), (*)(2, x_12, y_, y_02), (*)(2, x_12, y_01, y_12), (*)(2, x_12, y_0123, y_13), (*)(2, x_12, y_03, y_23), (*)(2, x_13, y_, y_03), (*)(2, x_13, y_01, y_13), (*)(-2, x_13, y_0123, y_12), (*)(-2, x_13, y_02, y_23), (*)(-2, x_23, y_, y_0123), (*)(2, x_23, y_01, y_23), (*)(2, x_23, y_02, y_13), (*)(-2, x_23, y_03, y_12))
    return MultiVector2(; e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01)
end
function sandwich(x::MultiVector2, y::MultiVector0)
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    y_ = y.e
    ret_23 = (*)(x_23, (^)(y_, 2))
    ret_13 = (*)(x_13, (^)(y_, 2))
    ret_12 = (*)(x_12, (^)(y_, 2))
    ret_03 = (*)(x_03, (^)(y_, 2))
    ret_02 = (*)(x_02, (^)(y_, 2))
    ret_01 = (*)(x_01, (^)(y_, 2))
    return MultiVector2(; e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01)
end
function sandwich(x::MultiVector2, y::MultiVector1)
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    y_0 = y.e0
    ret_23 = (+)((*)(x_23, (+)((^)(y_1, 2), (*)(-1, (^)(y_2, 2)), (*)(-1, (^)(y_3, 2)))), (*)(2, x_12, y_1, y_3), (*)(-2, x_13, y_1, y_2))
    ret_13 = (+)((*)(x_13, (+)((^)(y_2, 2), (*)(-1, (^)(y_1, 2)), (*)(-1, (^)(y_3, 2)))), (*)(-2, x_12, y_2, y_3), (*)(-2, x_23, y_1, y_2))
    ret_12 = (+)((*)(x_12, (+)((^)(y_3, 2), (*)(-1, (^)(y_1, 2)), (*)(-1, (^)(y_2, 2)))), (*)(-2, x_13, y_2, y_3), (*)(2, x_23, y_1, y_3))
    ret_03 = (+)((*)(x_03, (+)((^)(y_1, 2), (^)(y_2, 2))), (*)(-1, x_03, (^)(y_3, 2)), (*)(-2, x_01, y_1, y_3), (*)(-2, x_02, y_2, y_3), (*)(-2, x_13, y_0, y_1), (*)(-2, x_23, y_0, y_2))
    ret_02 = (+)((*)(x_02, (+)((^)(y_1, 2), (^)(y_3, 2))), (*)(-1, x_02, (^)(y_2, 2)), (*)(-2, x_01, y_1, y_2), (*)(-2, x_03, y_2, y_3), (*)(-2, x_12, y_0, y_1), (*)(2, x_23, y_0, y_3))
    ret_01 = (+)((*)(x_01, (+)((^)(y_2, 2), (^)(y_3, 2))), (*)(-1, x_01, (^)(y_1, 2)), (*)(-2, x_02, y_1, y_2), (*)(-2, x_03, y_1, y_3), (*)(2, x_12, y_0, y_2), (*)(2, x_13, y_0, y_3))
    return MultiVector2(; e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01)
end
function sandwich(x::MultiVector2, y::MultiVector2)
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    ret_23 = (+)((*)(x_23, (+)((^)(y_23, 2), (*)(-1, (^)(y_12, 2)), (*)(-1, (^)(y_13, 2)))), (*)(2, x_12, y_12, y_23), (*)(2, x_13, y_13, y_23))
    ret_13 = (+)((*)(x_13, (+)((^)(y_13, 2), (*)(-1, (^)(y_12, 2)), (*)(-1, (^)(y_23, 2)))), (*)(2, x_12, y_12, y_13), (*)(2, x_23, y_13, y_23))
    ret_12 = (+)((*)(x_12, (+)((^)(y_12, 2), (*)(-1, (^)(y_13, 2)), (*)(-1, (^)(y_23, 2)))), (*)(2, x_13, y_12, y_13), (*)(2, x_23, y_12, y_23))
    ret_03 = (+)((*)(x_03, (+)((^)(y_12, 2), (*)(-1, (^)(y_13, 2)), (*)(-1, (^)(y_23, 2)))), (*)(2, x_01, y_12, y_23), (*)(-2, x_02, y_12, y_13), (*)(-2, x_12, y_01, y_23), (*)(2, x_12, y_02, y_13), (*)(2, x_12, y_03, y_12), (*)(-2, x_13, y_02, y_12), (*)(2, x_13, y_03, y_13), (*)(2, x_23, y_01, y_12), (*)(2, x_23, y_03, y_23))
    ret_02 = (+)((*)(x_02, (+)((^)(y_13, 2), (*)(-1, (^)(y_12, 2)), (*)(-1, (^)(y_23, 2)))), (*)(-2, x_01, y_13, y_23), (*)(-2, x_03, y_12, y_13), (*)(2, x_12, y_02, y_12), (*)(-2, x_12, y_03, y_13), (*)(2, x_13, y_01, y_23), (*)(2, x_13, y_02, y_13), (*)(2, x_13, y_03, y_12), (*)(-2, x_23, y_01, y_13), (*)(2, x_23, y_02, y_23))
    ret_01 = (+)((*)(x_01, (+)((^)(y_23, 2), (*)(-1, (^)(y_12, 2)), (*)(-1, (^)(y_13, 2)))), (*)(-2, x_02, y_13, y_23), (*)(2, x_03, y_12, y_23), (*)(2, x_12, y_01, y_12), (*)(2, x_12, y_03, y_23), (*)(2, x_13, y_01, y_13), (*)(-2, x_13, y_02, y_23), (*)(2, x_23, y_01, y_23), (*)(2, x_23, y_02, y_13), (*)(-2, x_23, y_03, y_12))
    return MultiVector2(; e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01)
end
function sandwich(x::MultiVector2, y::MultiVector3)
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    y_123 = y.e123
    y_023 = y.e023
    y_013 = y.e013
    y_012 = y.e012
    ret_23 = (*)(x_23, (^)(y_123, 2))
    ret_13 = (*)(x_13, (^)(y_123, 2))
    ret_12 = (*)(x_12, (^)(y_123, 2))
    ret_03 = (+)((*)(-1, x_03, (^)(y_123, 2)), (*)(2, x_13, y_023, y_123), (*)(-2, x_23, y_013, y_123))
    ret_02 = (+)((*)(-1, x_02, (^)(y_123, 2)), (*)(2, x_12, y_023, y_123), (*)(-2, x_23, y_012, y_123))
    ret_01 = (+)((*)(-1, x_01, (^)(y_123, 2)), (*)(2, x_12, y_013, y_123), (*)(-2, x_13, y_012, y_123))
    return MultiVector2(; e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01)
end
function sandwich(x::MultiVector2, y::MultiVector4)
    return MultiVectorZero(; )
end
function sandwich(x::MultiVector2, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function sandwich(x::MultiVector3, y::MultiVectorAll)
    x_123 = x.e123
    x_023 = x.e023
    x_013 = x.e013
    x_012 = x.e012
    y_ = y.e
    y_3 = y.e3
    y_2 = y.e2
    y_23 = y.e23
    y_1 = y.e1
    y_13 = y.e13
    y_12 = y.e12
    y_123 = y.e123
    y_0 = y.e0
    y_03 = y.e03
    y_02 = y.e02
    y_023 = y.e023
    y_01 = y.e01
    y_013 = y.e013
    y_012 = y.e012
    y_0123 = y.e0123
    ret_23 = (+)((*)(2, x_123, y_, y_1), (*)(-2, x_123, y_12, y_2), (*)(2, x_123, y_123, y_23), (*)(-2, x_123, y_13, y_3))
    ret_13 = (+)((*)(-2, x_123, y_, y_2), (*)(-2, x_123, y_1, y_12), (*)(2, x_123, y_123, y_13), (*)(2, x_123, y_23, y_3))
    ret_12 = (+)((*)(2, x_123, y_, y_3), (*)(2, x_123, y_1, y_13), (*)(2, x_123, y_12, y_123), (*)(2, x_123, y_2, y_23))
    ret_123 = (*)(x_123, (+)((^)(y_, 2), (^)(y_1, 2), (^)(y_12, 2), (^)(y_123, 2), (^)(y_13, 2), (^)(y_2, 2), (^)(y_23, 2), (^)(y_3, 2)))
    ret_03 = (+)((*)(-2, x_012, y_, y_123), (*)(-2, x_012, y_1, y_23), (*)(2, x_012, y_12, y_3), (*)(2, x_012, y_13, y_2), (*)(-2, x_013, y_, y_1), (*)(-2, x_013, y_12, y_2), (*)(2, x_013, y_123, y_23), (*)(2, x_013, y_13, y_3), (*)(-2, x_023, y_, y_2), (*)(2, x_023, y_1, y_12), (*)(-2, x_023, y_123, y_13), (*)(2, x_023, y_23, y_3), (*)(2, x_123, y_, y_012), (*)(-2, x_123, y_0, y_12), (*)(2, x_123, y_01, y_2), (*)(-2, x_123, y_0123, y_3), (*)(-2, x_123, y_013, y_23), (*)(-2, x_123, y_02, y_1), (*)(2, x_123, y_023, y_13), (*)(2, x_123, y_03, y_123))
    ret_02 = (+)((*)(-2, x_012, y_, y_1), (*)(2, x_012, y_12, y_2), (*)(2, x_012, y_123, y_23), (*)(-2, x_012, y_13, y_3), (*)(2, x_013, y_, y_123), (*)(2, x_013, y_1, y_23), (*)(2, x_013, y_12, y_3), (*)(2, x_013, y_13, y_2), (*)(2, x_023, y_, y_3), (*)(-2, x_023, y_1, y_13), (*)(-2, x_023, y_12, y_123), (*)(2, x_023, y_2, y_23), (*)(-2, x_123, y_, y_013), (*)(2, x_123, y_0, y_13), (*)(-2, x_123, y_01, y_3), (*)(-2, x_123, y_012, y_23), (*)(-2, x_123, y_0123, y_2), (*)(2, x_123, y_02, y_123), (*)(2, x_123, y_023, y_12), (*)(2, x_123, y_03, y_1))
    ret_023 = (+)((*)(x_023, (+)((^)(y_, 2), (^)(y_2, 2), (^)(y_23, 2), (^)(y_3, 2), (*)(-1, (^)(y_1, 2)), (*)(-1, (^)(y_12, 2)), (*)(-1, (^)(y_123, 2)), (*)(-1, (^)(y_13, 2)))), (*)(-2, x_012, y_, y_13), (*)(-2, x_012, y_1, y_3), (*)(2, x_012, y_12, y_23), (*)(2, x_012, y_123, y_2), (*)(2, x_013, y_, y_12), (*)(2, x_013, y_1, y_2), (*)(2, x_013, y_123, y_3), (*)(2, x_013, y_13, y_23), (*)(-2, x_123, y_, y_01), (*)(2, x_123, y_0, y_1), (*)(-2, x_123, y_012, y_2), (*)(-2, x_123, y_0123, y_23), (*)(-2, x_123, y_013, y_3), (*)(2, x_123, y_02, y_12), (*)(2, x_123, y_023, y_123), (*)(2, x_123, y_03, y_13))
    ret_01 = (+)((*)(2, x_012, y_, y_2), (*)(2, x_012, y_1, y_12), (*)(2, x_012, y_123, y_13), (*)(2, x_012, y_23, y_3), (*)(2, x_013, y_, y_3), (*)(2, x_013, y_1, y_13), (*)(-2, x_013, y_12, y_123), (*)(-2, x_013, y_2, y_23), (*)(-2, x_023, y_, y_123), (*)(2, x_023, y_1, y_23), (*)(-2, x_023, y_12, y_3), (*)(2, x_023, y_13, y_2), (*)(2, x_123, y_, y_023), (*)(-2, x_123, y_0, y_23), (*)(2, x_123, y_01, y_123), (*)(-2, x_123, y_012, y_13), (*)(-2, x_123, y_0123, y_1), (*)(2, x_123, y_013, y_12), (*)(2, x_123, y_02, y_3), (*)(-2, x_123, y_03, y_2))
    ret_013 = (+)((*)(x_013, (+)((^)(y_, 2), (^)(y_1, 2), (^)(y_13, 2), (^)(y_3, 2), (*)(-1, (^)(y_12, 2)), (*)(-1, (^)(y_123, 2)), (*)(-1, (^)(y_2, 2)), (*)(-1, (^)(y_23, 2)))), (*)(2, x_012, y_, y_23), (*)(2, x_012, y_1, y_123), (*)(2, x_012, y_12, y_13), (*)(2, x_012, y_2, y_3), (*)(-2, x_023, y_, y_12), (*)(2, x_023, y_1, y_2), (*)(-2, x_023, y_123, y_3), (*)(2, x_023, y_13, y_23), (*)(2, x_123, y_, y_02), (*)(-2, x_123, y_0, y_2), (*)(2, x_123, y_01, y_12), (*)(-2, x_123, y_012, y_1), (*)(-2, x_123, y_0123, y_13), (*)(2, x_123, y_013, y_123), (*)(2, x_123, y_023, y_3), (*)(-2, x_123, y_03, y_23))
    ret_012 = (+)((*)(x_012, (+)((^)(y_, 2), (^)(y_1, 2), (^)(y_12, 2), (^)(y_2, 2), (*)(-1, (^)(y_123, 2)), (*)(-1, (^)(y_13, 2)), (*)(-1, (^)(y_23, 2)), (*)(-1, (^)(y_3, 2)))), (*)(-2, x_013, y_, y_23), (*)(-2, x_013, y_1, y_123), (*)(2, x_013, y_12, y_13), (*)(2, x_013, y_2, y_3), (*)(2, x_023, y_, y_13), (*)(-2, x_023, y_1, y_3), (*)(2, x_023, y_12, y_23), (*)(-2, x_023, y_123, y_2), (*)(-2, x_123, y_, y_03), (*)(2, x_123, y_0, y_3), (*)(-2, x_123, y_01, y_13), (*)(2, x_123, y_012, y_123), (*)(-2, x_123, y_0123, y_12), (*)(2, x_123, y_013, y_1), (*)(-2, x_123, y_02, y_23), (*)(2, x_123, y_023, y_2))
    return MultiVectorAll(; e23 = ret_23, e13 = ret_13, e12 = ret_12, e123 = ret_123, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012)
end
function sandwich(x::MultiVector3, y::MultiVectorEven)
    x_123 = x.e123
    x_023 = x.e023
    x_013 = x.e013
    x_012 = x.e012
    y_ = y.e
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    y_0123 = y.e0123
    ret_123 = (*)(x_123, (+)((^)(y_, 2), (^)(y_12, 2), (^)(y_13, 2), (^)(y_23, 2)))
    ret_023 = (+)((*)(x_023, (+)((^)(y_, 2), (^)(y_23, 2), (*)(-1, (^)(y_12, 2)), (*)(-1, (^)(y_13, 2)))), (*)(-2, x_012, y_, y_13), (*)(2, x_012, y_12, y_23), (*)(2, x_013, y_, y_12), (*)(2, x_013, y_13, y_23), (*)(-2, x_123, y_, y_01), (*)(-2, x_123, y_0123, y_23), (*)(2, x_123, y_02, y_12), (*)(2, x_123, y_03, y_13))
    ret_013 = (+)((*)(x_013, (+)((^)(y_, 2), (^)(y_13, 2), (*)(-1, (^)(y_12, 2)), (*)(-1, (^)(y_23, 2)))), (*)(2, x_012, y_, y_23), (*)(2, x_012, y_12, y_13), (*)(-2, x_023, y_, y_12), (*)(2, x_023, y_13, y_23), (*)(2, x_123, y_, y_02), (*)(2, x_123, y_01, y_12), (*)(-2, x_123, y_0123, y_13), (*)(-2, x_123, y_03, y_23))
    ret_012 = (+)((*)(x_012, (+)((^)(y_, 2), (^)(y_12, 2), (*)(-1, (^)(y_13, 2)), (*)(-1, (^)(y_23, 2)))), (*)(-2, x_013, y_, y_23), (*)(2, x_013, y_12, y_13), (*)(2, x_023, y_, y_13), (*)(2, x_023, y_12, y_23), (*)(-2, x_123, y_, y_03), (*)(-2, x_123, y_01, y_13), (*)(-2, x_123, y_0123, y_12), (*)(-2, x_123, y_02, y_23))
    return MultiVector3(; e123 = ret_123, e023 = ret_023, e013 = ret_013, e012 = ret_012)
end
function sandwich(x::MultiVector3, y::MultiVector0)
    x_123 = x.e123
    x_023 = x.e023
    x_013 = x.e013
    x_012 = x.e012
    y_ = y.e
    ret_123 = (*)(x_123, (^)(y_, 2))
    ret_023 = (*)(x_023, (^)(y_, 2))
    ret_013 = (*)(x_013, (^)(y_, 2))
    ret_012 = (*)(x_012, (^)(y_, 2))
    return MultiVector3(; e123 = ret_123, e023 = ret_023, e013 = ret_013, e012 = ret_012)
end
function sandwich(x::MultiVector3, y::MultiVector1)
    x_123 = x.e123
    x_023 = x.e023
    x_013 = x.e013
    x_012 = x.e012
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    y_0 = y.e0
    ret_123 = (*)(x_123, (+)((^)(y_1, 2), (^)(y_2, 2), (^)(y_3, 2)))
    ret_023 = (+)((*)(x_023, (+)((^)(y_2, 2), (^)(y_3, 2))), (*)(-1, x_023, (^)(y_1, 2)), (*)(-2, x_012, y_1, y_3), (*)(2, x_013, y_1, y_2), (*)(2, x_123, y_0, y_1))
    ret_013 = (+)((*)(x_013, (+)((^)(y_1, 2), (^)(y_3, 2))), (*)(-1, x_013, (^)(y_2, 2)), (*)(2, x_012, y_2, y_3), (*)(2, x_023, y_1, y_2), (*)(-2, x_123, y_0, y_2))
    ret_012 = (+)((*)(x_012, (+)((^)(y_1, 2), (^)(y_2, 2))), (*)(-1, x_012, (^)(y_3, 2)), (*)(2, x_013, y_2, y_3), (*)(-2, x_023, y_1, y_3), (*)(2, x_123, y_0, y_3))
    return MultiVector3(; e123 = ret_123, e023 = ret_023, e013 = ret_013, e012 = ret_012)
end
function sandwich(x::MultiVector3, y::MultiVector2)
    x_123 = x.e123
    x_023 = x.e023
    x_013 = x.e013
    x_012 = x.e012
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    ret_123 = (*)(x_123, (+)((^)(y_12, 2), (^)(y_13, 2), (^)(y_23, 2)))
    ret_023 = (+)((*)(x_023, (+)((^)(y_23, 2), (*)(-1, (^)(y_12, 2)), (*)(-1, (^)(y_13, 2)))), (*)(2, x_012, y_12, y_23), (*)(2, x_013, y_13, y_23), (*)(2, x_123, y_02, y_12), (*)(2, x_123, y_03, y_13))
    ret_013 = (+)((*)(x_013, (+)((^)(y_13, 2), (*)(-1, (^)(y_12, 2)), (*)(-1, (^)(y_23, 2)))), (*)(2, x_012, y_12, y_13), (*)(2, x_023, y_13, y_23), (*)(2, x_123, y_01, y_12), (*)(-2, x_123, y_03, y_23))
    ret_012 = (+)((*)(x_012, (+)((^)(y_12, 2), (*)(-1, (^)(y_13, 2)), (*)(-1, (^)(y_23, 2)))), (*)(2, x_013, y_12, y_13), (*)(2, x_023, y_12, y_23), (*)(-2, x_123, y_01, y_13), (*)(-2, x_123, y_02, y_23))
    return MultiVector3(; e123 = ret_123, e023 = ret_023, e013 = ret_013, e012 = ret_012)
end
function sandwich(x::MultiVector3, y::MultiVector3)
    x_123 = x.e123
    x_023 = x.e023
    x_013 = x.e013
    x_012 = x.e012
    y_123 = y.e123
    y_023 = y.e023
    y_013 = y.e013
    y_012 = y.e012
    ret_123 = (*)(x_123, (^)(y_123, 2))
    ret_023 = (+)((*)(-1, x_023, (^)(y_123, 2)), (*)(2, x_123, y_023, y_123))
    ret_013 = (+)((*)(-1, x_013, (^)(y_123, 2)), (*)(2, x_123, y_013, y_123))
    ret_012 = (+)((*)(-1, x_012, (^)(y_123, 2)), (*)(2, x_123, y_012, y_123))
    return MultiVector3(; e123 = ret_123, e023 = ret_023, e013 = ret_013, e012 = ret_012)
end
function sandwich(x::MultiVector3, y::MultiVector4)
    return MultiVectorZero(; )
end
function sandwich(x::MultiVector3, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function sandwich(x::MultiVector4, y::MultiVectorAll)
    x_0123 = x.e0123
    y_ = y.e
    y_3 = y.e3
    y_2 = y.e2
    y_23 = y.e23
    y_1 = y.e1
    y_13 = y.e13
    y_12 = y.e12
    y_123 = y.e123
    y_0 = y.e0
    y_03 = y.e03
    y_02 = y.e02
    y_023 = y.e023
    y_01 = y.e01
    y_013 = y.e013
    y_012 = y.e012
    y_0123 = y.e0123
    ret_0 = (+)((*)(-2, x_0123, y_, y_123), (*)(2, x_0123, y_1, y_23), (*)(2, x_0123, y_12, y_3), (*)(-2, x_0123, y_13, y_2))
    ret_0123 = (*)(x_0123, (+)((^)(y_, 2), (^)(y_12, 2), (^)(y_13, 2), (^)(y_23, 2), (*)(-1, (^)(y_1, 2)), (*)(-1, (^)(y_123, 2)), (*)(-1, (^)(y_2, 2)), (*)(-1, (^)(y_3, 2))))
    return MultiVectorAll(; e0 = ret_0, e0123 = ret_0123)
end
function sandwich(x::MultiVector4, y::MultiVectorEven)
    x_0123 = x.e0123
    y_ = y.e
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    y_0123 = y.e0123
    ret_0123 = (*)(x_0123, (+)((^)(y_, 2), (^)(y_12, 2), (^)(y_13, 2), (^)(y_23, 2)))
    return MultiVector4(; e0123 = ret_0123)
end
function sandwich(x::MultiVector4, y::MultiVector0)
    x_0123 = x.e0123
    y_ = y.e
    ret_0123 = (*)(x_0123, (^)(y_, 2))
    return MultiVector4(; e0123 = ret_0123)
end
function sandwich(x::MultiVector4, y::MultiVector1)
    x_0123 = x.e0123
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    y_0 = y.e0
    ret_0123 = (+)((*)(x_0123, (+)((*)(-1, (^)(y_1, 2)), (*)(-1, (^)(y_2, 2)))), (*)(-1, x_0123, (^)(y_3, 2)))
    return MultiVector4(; e0123 = ret_0123)
end
function sandwich(x::MultiVector4, y::MultiVector2)
    x_0123 = x.e0123
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    ret_0123 = (*)(x_0123, (+)((^)(y_12, 2), (^)(y_13, 2), (^)(y_23, 2)))
    return MultiVector4(; e0123 = ret_0123)
end
function sandwich(x::MultiVector4, y::MultiVector3)
    x_0123 = x.e0123
    y_123 = y.e123
    y_023 = y.e023
    y_013 = y.e013
    y_012 = y.e012
    ret_0123 = (*)(-1, x_0123, (^)(y_123, 2))
    return MultiVector4(; e0123 = ret_0123)
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
    x_3 = x.e3
    x_2 = x.e2
    x_23 = x.e23
    x_1 = x.e1
    x_13 = x.e13
    x_12 = x.e12
    x_123 = x.e123
    x_0 = x.e0
    x_03 = x.e03
    x_02 = x.e02
    x_023 = x.e023
    x_01 = x.e01
    x_013 = x.e013
    x_012 = x.e012
    x_0123 = x.e0123
    y_ = y.e
    y_3 = y.e3
    y_2 = y.e2
    y_23 = y.e23
    y_1 = y.e1
    y_13 = y.e13
    y_12 = y.e12
    y_123 = y.e123
    y_0 = y.e0
    y_03 = y.e03
    y_02 = y.e02
    y_023 = y.e023
    y_01 = y.e01
    y_013 = y.e013
    y_012 = y.e012
    y_0123 = y.e0123
    ret_ = (+)((*)(x_, y_0123), (*)(x_01, y_23), (*)(x_0123, y_), (*)(x_013, y_2), (*)(x_03, y_12), (*)(x_1, y_023), (*)(x_12, y_03), (*)(x_123, y_0), (*)(x_23, y_01), (*)(x_3, y_012), (*)(-1, x_0, y_123), (*)(-1, x_012, y_3), (*)(-1, x_02, y_13), (*)(-1, x_023, y_1), (*)(-1, x_13, y_02), (*)(-1, x_2, y_013))
    ret_3 = (+)((*)(x_0123, y_3), (*)(x_023, y_13), (*)(x_13, y_023), (*)(x_3, y_0123), (*)(-1, x_013, y_23), (*)(-1, x_03, y_123), (*)(-1, x_123, y_03), (*)(-1, x_23, y_013))
    ret_2 = (+)((*)(x_0123, y_2), (*)(x_023, y_12), (*)(x_12, y_023), (*)(x_2, y_0123), (*)(-1, x_012, y_23), (*)(-1, x_02, y_123), (*)(-1, x_123, y_02), (*)(-1, x_23, y_012))
    ret_23 = (+)((*)(x_0123, y_23), (*)(x_023, y_123), (*)(x_23, y_0123), (*)(-1, x_123, y_023))
    ret_1 = (+)((*)(x_0123, y_1), (*)(x_013, y_12), (*)(x_1, y_0123), (*)(x_12, y_013), (*)(-1, x_01, y_123), (*)(-1, x_012, y_13), (*)(-1, x_123, y_01), (*)(-1, x_13, y_012))
    ret_13 = (+)((*)(x_0123, y_13), (*)(x_013, y_123), (*)(x_13, y_0123), (*)(-1, x_123, y_013))
    ret_12 = (+)((*)(x_012, y_123), (*)(x_0123, y_12), (*)(x_12, y_0123), (*)(-1, x_123, y_012))
    ret_123 = (+)((*)(x_0123, y_123), (*)(x_123, y_0123))
    ret_0 = (+)((*)(x_0, y_0123), (*)(x_0123, y_0), (*)(x_013, y_02), (*)(x_02, y_013), (*)(-1, x_01, y_023), (*)(-1, x_012, y_03), (*)(-1, x_023, y_01), (*)(-1, x_03, y_012))
    ret_03 = (+)((*)(x_0123, y_03), (*)(x_013, y_023), (*)(x_03, y_0123), (*)(-1, x_023, y_013))
    ret_02 = (+)((*)(x_012, y_023), (*)(x_0123, y_02), (*)(x_02, y_0123), (*)(-1, x_023, y_012))
    ret_023 = (+)((*)(x_0123, y_023), (*)(x_023, y_0123))
    ret_01 = (+)((*)(x_01, y_0123), (*)(x_012, y_013), (*)(x_0123, y_01), (*)(-1, x_013, y_012))
    ret_013 = (+)((*)(x_0123, y_013), (*)(x_013, y_0123))
    ret_012 = (+)((*)(x_012, y_0123), (*)(x_0123, y_012))
    ret_0123 = (*)(x_0123, y_0123)
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function anti_wedge(x::MultiVectorAll, y::MultiVectorEven)
    x_ = x.e
    x_3 = x.e3
    x_2 = x.e2
    x_23 = x.e23
    x_1 = x.e1
    x_13 = x.e13
    x_12 = x.e12
    x_123 = x.e123
    x_0 = x.e0
    x_03 = x.e03
    x_02 = x.e02
    x_023 = x.e023
    x_01 = x.e01
    x_013 = x.e013
    x_012 = x.e012
    x_0123 = x.e0123
    y_ = y.e
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    y_0123 = y.e0123
    ret_ = (+)((*)(x_, y_0123), (*)(x_01, y_23), (*)(x_0123, y_), (*)(x_03, y_12), (*)(x_12, y_03), (*)(x_23, y_01), (*)(-1, x_02, y_13), (*)(-1, x_13, y_02))
    ret_3 = (+)((*)(x_023, y_13), (*)(x_3, y_0123), (*)(-1, x_013, y_23), (*)(-1, x_123, y_03))
    ret_2 = (+)((*)(x_023, y_12), (*)(x_2, y_0123), (*)(-1, x_012, y_23), (*)(-1, x_123, y_02))
    ret_23 = (+)((*)(x_0123, y_23), (*)(x_23, y_0123))
    ret_1 = (+)((*)(x_013, y_12), (*)(x_1, y_0123), (*)(-1, x_012, y_13), (*)(-1, x_123, y_01))
    ret_13 = (+)((*)(x_0123, y_13), (*)(x_13, y_0123))
    ret_12 = (+)((*)(x_0123, y_12), (*)(x_12, y_0123))
    ret_123 = (*)(x_123, y_0123)
    ret_0 = (+)((*)(x_0, y_0123), (*)(x_013, y_02), (*)(-1, x_012, y_03), (*)(-1, x_023, y_01))
    ret_03 = (+)((*)(x_0123, y_03), (*)(x_03, y_0123))
    ret_02 = (+)((*)(x_0123, y_02), (*)(x_02, y_0123))
    ret_023 = (*)(x_023, y_0123)
    ret_01 = (+)((*)(x_01, y_0123), (*)(x_0123, y_01))
    ret_013 = (*)(x_013, y_0123)
    ret_012 = (*)(x_012, y_0123)
    ret_0123 = (*)(x_0123, y_0123)
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function anti_wedge(x::MultiVectorAll, y::MultiVector0)
    x_ = x.e
    x_3 = x.e3
    x_2 = x.e2
    x_23 = x.e23
    x_1 = x.e1
    x_13 = x.e13
    x_12 = x.e12
    x_123 = x.e123
    x_0 = x.e0
    x_03 = x.e03
    x_02 = x.e02
    x_023 = x.e023
    x_01 = x.e01
    x_013 = x.e013
    x_012 = x.e012
    x_0123 = x.e0123
    y_ = y.e
    ret_ = (*)(x_0123, y_)
    return MultiVector0(; e = ret_)
end
function anti_wedge(x::MultiVectorAll, y::MultiVector1)
    x_ = x.e
    x_3 = x.e3
    x_2 = x.e2
    x_23 = x.e23
    x_1 = x.e1
    x_13 = x.e13
    x_12 = x.e12
    x_123 = x.e123
    x_0 = x.e0
    x_03 = x.e03
    x_02 = x.e02
    x_023 = x.e023
    x_01 = x.e01
    x_013 = x.e013
    x_012 = x.e012
    x_0123 = x.e0123
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    y_0 = y.e0
    ret_ = (+)((*)(x_013, y_2), (*)(x_123, y_0), (*)(-1, x_012, y_3), (*)(-1, x_023, y_1))
    ret_3 = (*)(x_0123, y_3)
    ret_2 = (*)(x_0123, y_2)
    ret_1 = (*)(x_0123, y_1)
    ret_0 = (*)(x_0123, y_0)
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e1 = ret_1, e0 = ret_0)
end
function anti_wedge(x::MultiVectorAll, y::MultiVector2)
    x_ = x.e
    x_3 = x.e3
    x_2 = x.e2
    x_23 = x.e23
    x_1 = x.e1
    x_13 = x.e13
    x_12 = x.e12
    x_123 = x.e123
    x_0 = x.e0
    x_03 = x.e03
    x_02 = x.e02
    x_023 = x.e023
    x_01 = x.e01
    x_013 = x.e013
    x_012 = x.e012
    x_0123 = x.e0123
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    ret_ = (+)((*)(x_01, y_23), (*)(x_03, y_12), (*)(x_12, y_03), (*)(x_23, y_01), (*)(-1, x_02, y_13), (*)(-1, x_13, y_02))
    ret_3 = (+)((*)(x_023, y_13), (*)(-1, x_013, y_23), (*)(-1, x_123, y_03))
    ret_2 = (+)((*)(x_023, y_12), (*)(-1, x_012, y_23), (*)(-1, x_123, y_02))
    ret_23 = (*)(x_0123, y_23)
    ret_1 = (+)((*)(x_013, y_12), (*)(-1, x_012, y_13), (*)(-1, x_123, y_01))
    ret_13 = (*)(x_0123, y_13)
    ret_12 = (*)(x_0123, y_12)
    ret_0 = (+)((*)(x_013, y_02), (*)(-1, x_012, y_03), (*)(-1, x_023, y_01))
    ret_03 = (*)(x_0123, y_03)
    ret_02 = (*)(x_0123, y_02)
    ret_01 = (*)(x_0123, y_01)
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e0 = ret_0, e03 = ret_03, e02 = ret_02, e01 = ret_01)
end
function anti_wedge(x::MultiVectorAll, y::MultiVector3)
    x_ = x.e
    x_3 = x.e3
    x_2 = x.e2
    x_23 = x.e23
    x_1 = x.e1
    x_13 = x.e13
    x_12 = x.e12
    x_123 = x.e123
    x_0 = x.e0
    x_03 = x.e03
    x_02 = x.e02
    x_023 = x.e023
    x_01 = x.e01
    x_013 = x.e013
    x_012 = x.e012
    x_0123 = x.e0123
    y_123 = y.e123
    y_023 = y.e023
    y_013 = y.e013
    y_012 = y.e012
    ret_ = (+)((*)(x_1, y_023), (*)(x_3, y_012), (*)(-1, x_0, y_123), (*)(-1, x_2, y_013))
    ret_3 = (+)((*)(x_13, y_023), (*)(-1, x_03, y_123), (*)(-1, x_23, y_013))
    ret_2 = (+)((*)(x_12, y_023), (*)(-1, x_02, y_123), (*)(-1, x_23, y_012))
    ret_23 = (+)((*)(x_023, y_123), (*)(-1, x_123, y_023))
    ret_1 = (+)((*)(x_12, y_013), (*)(-1, x_01, y_123), (*)(-1, x_13, y_012))
    ret_13 = (+)((*)(x_013, y_123), (*)(-1, x_123, y_013))
    ret_12 = (+)((*)(x_012, y_123), (*)(-1, x_123, y_012))
    ret_123 = (*)(x_0123, y_123)
    ret_0 = (+)((*)(x_02, y_013), (*)(-1, x_01, y_023), (*)(-1, x_03, y_012))
    ret_03 = (+)((*)(x_013, y_023), (*)(-1, x_023, y_013))
    ret_02 = (+)((*)(x_012, y_023), (*)(-1, x_023, y_012))
    ret_023 = (*)(x_0123, y_023)
    ret_01 = (+)((*)(x_012, y_013), (*)(-1, x_013, y_012))
    ret_013 = (*)(x_0123, y_013)
    ret_012 = (*)(x_0123, y_012)
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012)
end
function anti_wedge(x::MultiVectorAll, y::MultiVector4)
    x_ = x.e
    x_3 = x.e3
    x_2 = x.e2
    x_23 = x.e23
    x_1 = x.e1
    x_13 = x.e13
    x_12 = x.e12
    x_123 = x.e123
    x_0 = x.e0
    x_03 = x.e03
    x_02 = x.e02
    x_023 = x.e023
    x_01 = x.e01
    x_013 = x.e013
    x_012 = x.e012
    x_0123 = x.e0123
    y_0123 = y.e0123
    ret_ = (*)(x_, y_0123)
    ret_3 = (*)(x_3, y_0123)
    ret_2 = (*)(x_2, y_0123)
    ret_23 = (*)(x_23, y_0123)
    ret_1 = (*)(x_1, y_0123)
    ret_13 = (*)(x_13, y_0123)
    ret_12 = (*)(x_12, y_0123)
    ret_123 = (*)(x_123, y_0123)
    ret_0 = (*)(x_0, y_0123)
    ret_03 = (*)(x_03, y_0123)
    ret_02 = (*)(x_02, y_0123)
    ret_023 = (*)(x_023, y_0123)
    ret_01 = (*)(x_01, y_0123)
    ret_013 = (*)(x_013, y_0123)
    ret_012 = (*)(x_012, y_0123)
    ret_0123 = (*)(x_0123, y_0123)
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function anti_wedge(x::MultiVectorAll, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function anti_wedge(x::MultiVectorEven, y::MultiVectorAll)
    x_ = x.e
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    x_0123 = x.e0123
    y_ = y.e
    y_3 = y.e3
    y_2 = y.e2
    y_23 = y.e23
    y_1 = y.e1
    y_13 = y.e13
    y_12 = y.e12
    y_123 = y.e123
    y_0 = y.e0
    y_03 = y.e03
    y_02 = y.e02
    y_023 = y.e023
    y_01 = y.e01
    y_013 = y.e013
    y_012 = y.e012
    y_0123 = y.e0123
    ret_ = (+)((*)(x_, y_0123), (*)(x_01, y_23), (*)(x_0123, y_), (*)(x_03, y_12), (*)(x_12, y_03), (*)(x_23, y_01), (*)(-1, x_02, y_13), (*)(-1, x_13, y_02))
    ret_3 = (+)((*)(x_0123, y_3), (*)(x_13, y_023), (*)(-1, x_03, y_123), (*)(-1, x_23, y_013))
    ret_2 = (+)((*)(x_0123, y_2), (*)(x_12, y_023), (*)(-1, x_02, y_123), (*)(-1, x_23, y_012))
    ret_23 = (+)((*)(x_0123, y_23), (*)(x_23, y_0123))
    ret_1 = (+)((*)(x_0123, y_1), (*)(x_12, y_013), (*)(-1, x_01, y_123), (*)(-1, x_13, y_012))
    ret_13 = (+)((*)(x_0123, y_13), (*)(x_13, y_0123))
    ret_12 = (+)((*)(x_0123, y_12), (*)(x_12, y_0123))
    ret_123 = (*)(x_0123, y_123)
    ret_0 = (+)((*)(x_0123, y_0), (*)(x_02, y_013), (*)(-1, x_01, y_023), (*)(-1, x_03, y_012))
    ret_03 = (+)((*)(x_0123, y_03), (*)(x_03, y_0123))
    ret_02 = (+)((*)(x_0123, y_02), (*)(x_02, y_0123))
    ret_023 = (*)(x_0123, y_023)
    ret_01 = (+)((*)(x_01, y_0123), (*)(x_0123, y_01))
    ret_013 = (*)(x_0123, y_013)
    ret_012 = (*)(x_0123, y_012)
    ret_0123 = (*)(x_0123, y_0123)
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function anti_wedge(x::MultiVectorEven, y::MultiVectorEven)
    x_ = x.e
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    x_0123 = x.e0123
    y_ = y.e
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    y_0123 = y.e0123
    ret_ = (+)((*)(x_, y_0123), (*)(x_01, y_23), (*)(x_0123, y_), (*)(x_03, y_12), (*)(x_12, y_03), (*)(x_23, y_01), (*)(-1, x_02, y_13), (*)(-1, x_13, y_02))
    ret_23 = (+)((*)(x_0123, y_23), (*)(x_23, y_0123))
    ret_13 = (+)((*)(x_0123, y_13), (*)(x_13, y_0123))
    ret_12 = (+)((*)(x_0123, y_12), (*)(x_12, y_0123))
    ret_03 = (+)((*)(x_0123, y_03), (*)(x_03, y_0123))
    ret_02 = (+)((*)(x_0123, y_02), (*)(x_02, y_0123))
    ret_01 = (+)((*)(x_01, y_0123), (*)(x_0123, y_01))
    ret_0123 = (*)(x_0123, y_0123)
    return MultiVectorEven(; e = ret_, e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01, e0123 = ret_0123)
end
function anti_wedge(x::MultiVectorEven, y::MultiVector0)
    x_ = x.e
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    x_0123 = x.e0123
    y_ = y.e
    ret_ = (*)(x_0123, y_)
    return MultiVector0(; e = ret_)
end
function anti_wedge(x::MultiVectorEven, y::MultiVector1)
    x_ = x.e
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    x_0123 = x.e0123
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    y_0 = y.e0
    ret_3 = (*)(x_0123, y_3)
    ret_2 = (*)(x_0123, y_2)
    ret_1 = (*)(x_0123, y_1)
    ret_0 = (*)(x_0123, y_0)
    return MultiVector1(; e3 = ret_3, e2 = ret_2, e1 = ret_1, e0 = ret_0)
end
function anti_wedge(x::MultiVectorEven, y::MultiVector2)
    x_ = x.e
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    x_0123 = x.e0123
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    ret_ = (+)((*)(x_01, y_23), (*)(x_03, y_12), (*)(x_12, y_03), (*)(x_23, y_01), (*)(-1, x_02, y_13), (*)(-1, x_13, y_02))
    ret_23 = (*)(x_0123, y_23)
    ret_13 = (*)(x_0123, y_13)
    ret_12 = (*)(x_0123, y_12)
    ret_03 = (*)(x_0123, y_03)
    ret_02 = (*)(x_0123, y_02)
    ret_01 = (*)(x_0123, y_01)
    return MultiVectorEven(; e = ret_, e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01)
end
function anti_wedge(x::MultiVectorEven, y::MultiVector3)
    x_ = x.e
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    x_0123 = x.e0123
    y_123 = y.e123
    y_023 = y.e023
    y_013 = y.e013
    y_012 = y.e012
    ret_3 = (+)((*)(x_13, y_023), (*)(-1, x_03, y_123), (*)(-1, x_23, y_013))
    ret_2 = (+)((*)(x_12, y_023), (*)(-1, x_02, y_123), (*)(-1, x_23, y_012))
    ret_1 = (+)((*)(x_12, y_013), (*)(-1, x_01, y_123), (*)(-1, x_13, y_012))
    ret_123 = (*)(x_0123, y_123)
    ret_0 = (+)((*)(x_02, y_013), (*)(-1, x_01, y_023), (*)(-1, x_03, y_012))
    ret_023 = (*)(x_0123, y_023)
    ret_013 = (*)(x_0123, y_013)
    ret_012 = (*)(x_0123, y_012)
    return MultiVectorAll(; e3 = ret_3, e2 = ret_2, e1 = ret_1, e123 = ret_123, e0 = ret_0, e023 = ret_023, e013 = ret_013, e012 = ret_012)
end
function anti_wedge(x::MultiVectorEven, y::MultiVector4)
    x_ = x.e
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    x_0123 = x.e0123
    y_0123 = y.e0123
    ret_ = (*)(x_, y_0123)
    ret_23 = (*)(x_23, y_0123)
    ret_13 = (*)(x_13, y_0123)
    ret_12 = (*)(x_12, y_0123)
    ret_03 = (*)(x_03, y_0123)
    ret_02 = (*)(x_02, y_0123)
    ret_01 = (*)(x_01, y_0123)
    ret_0123 = (*)(x_0123, y_0123)
    return MultiVectorEven(; e = ret_, e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01, e0123 = ret_0123)
end
function anti_wedge(x::MultiVectorEven, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function anti_wedge(x::MultiVector0, y::MultiVectorAll)
    x_ = x.e
    y_ = y.e
    y_3 = y.e3
    y_2 = y.e2
    y_23 = y.e23
    y_1 = y.e1
    y_13 = y.e13
    y_12 = y.e12
    y_123 = y.e123
    y_0 = y.e0
    y_03 = y.e03
    y_02 = y.e02
    y_023 = y.e023
    y_01 = y.e01
    y_013 = y.e013
    y_012 = y.e012
    y_0123 = y.e0123
    ret_ = (*)(x_, y_0123)
    return MultiVector0(; e = ret_)
end
function anti_wedge(x::MultiVector0, y::MultiVectorEven)
    x_ = x.e
    y_ = y.e
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    y_0123 = y.e0123
    ret_ = (*)(x_, y_0123)
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
    y_0123 = y.e0123
    ret_ = (*)(x_, y_0123)
    return MultiVector0(; e = ret_)
end
function anti_wedge(x::MultiVector0, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function anti_wedge(x::MultiVector1, y::MultiVectorAll)
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    x_0 = x.e0
    y_ = y.e
    y_3 = y.e3
    y_2 = y.e2
    y_23 = y.e23
    y_1 = y.e1
    y_13 = y.e13
    y_12 = y.e12
    y_123 = y.e123
    y_0 = y.e0
    y_03 = y.e03
    y_02 = y.e02
    y_023 = y.e023
    y_01 = y.e01
    y_013 = y.e013
    y_012 = y.e012
    y_0123 = y.e0123
    ret_ = (+)((*)(x_1, y_023), (*)(x_3, y_012), (*)(-1, x_0, y_123), (*)(-1, x_2, y_013))
    ret_3 = (*)(x_3, y_0123)
    ret_2 = (*)(x_2, y_0123)
    ret_1 = (*)(x_1, y_0123)
    ret_0 = (*)(x_0, y_0123)
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e1 = ret_1, e0 = ret_0)
end
function anti_wedge(x::MultiVector1, y::MultiVectorEven)
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    x_0 = x.e0
    y_ = y.e
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    y_0123 = y.e0123
    ret_3 = (*)(x_3, y_0123)
    ret_2 = (*)(x_2, y_0123)
    ret_1 = (*)(x_1, y_0123)
    ret_0 = (*)(x_0, y_0123)
    return MultiVector1(; e3 = ret_3, e2 = ret_2, e1 = ret_1, e0 = ret_0)
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
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    x_0 = x.e0
    y_123 = y.e123
    y_023 = y.e023
    y_013 = y.e013
    y_012 = y.e012
    ret_ = (+)((*)(x_1, y_023), (*)(x_3, y_012), (*)(-1, x_0, y_123), (*)(-1, x_2, y_013))
    return MultiVector0(; e = ret_)
end
function anti_wedge(x::MultiVector1, y::MultiVector4)
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    x_0 = x.e0
    y_0123 = y.e0123
    ret_3 = (*)(x_3, y_0123)
    ret_2 = (*)(x_2, y_0123)
    ret_1 = (*)(x_1, y_0123)
    ret_0 = (*)(x_0, y_0123)
    return MultiVector1(; e3 = ret_3, e2 = ret_2, e1 = ret_1, e0 = ret_0)
end
function anti_wedge(x::MultiVector1, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function anti_wedge(x::MultiVector2, y::MultiVectorAll)
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    y_ = y.e
    y_3 = y.e3
    y_2 = y.e2
    y_23 = y.e23
    y_1 = y.e1
    y_13 = y.e13
    y_12 = y.e12
    y_123 = y.e123
    y_0 = y.e0
    y_03 = y.e03
    y_02 = y.e02
    y_023 = y.e023
    y_01 = y.e01
    y_013 = y.e013
    y_012 = y.e012
    y_0123 = y.e0123
    ret_ = (+)((*)(x_01, y_23), (*)(x_03, y_12), (*)(x_12, y_03), (*)(x_23, y_01), (*)(-1, x_02, y_13), (*)(-1, x_13, y_02))
    ret_3 = (+)((*)(x_13, y_023), (*)(-1, x_03, y_123), (*)(-1, x_23, y_013))
    ret_2 = (+)((*)(x_12, y_023), (*)(-1, x_02, y_123), (*)(-1, x_23, y_012))
    ret_23 = (*)(x_23, y_0123)
    ret_1 = (+)((*)(x_12, y_013), (*)(-1, x_01, y_123), (*)(-1, x_13, y_012))
    ret_13 = (*)(x_13, y_0123)
    ret_12 = (*)(x_12, y_0123)
    ret_0 = (+)((*)(x_02, y_013), (*)(-1, x_01, y_023), (*)(-1, x_03, y_012))
    ret_03 = (*)(x_03, y_0123)
    ret_02 = (*)(x_02, y_0123)
    ret_01 = (*)(x_01, y_0123)
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e0 = ret_0, e03 = ret_03, e02 = ret_02, e01 = ret_01)
end
function anti_wedge(x::MultiVector2, y::MultiVectorEven)
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    y_ = y.e
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    y_0123 = y.e0123
    ret_ = (+)((*)(x_01, y_23), (*)(x_03, y_12), (*)(x_12, y_03), (*)(x_23, y_01), (*)(-1, x_02, y_13), (*)(-1, x_13, y_02))
    ret_23 = (*)(x_23, y_0123)
    ret_13 = (*)(x_13, y_0123)
    ret_12 = (*)(x_12, y_0123)
    ret_03 = (*)(x_03, y_0123)
    ret_02 = (*)(x_02, y_0123)
    ret_01 = (*)(x_01, y_0123)
    return MultiVectorEven(; e = ret_, e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01)
end
function anti_wedge(x::MultiVector2, y::MultiVector0)
    return MultiVectorZero(; )
end
function anti_wedge(x::MultiVector2, y::MultiVector1)
    return MultiVectorZero(; )
end
function anti_wedge(x::MultiVector2, y::MultiVector2)
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    ret_ = (+)((*)(x_01, y_23), (*)(x_03, y_12), (*)(x_12, y_03), (*)(x_23, y_01), (*)(-1, x_02, y_13), (*)(-1, x_13, y_02))
    return MultiVector0(; e = ret_)
end
function anti_wedge(x::MultiVector2, y::MultiVector3)
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    y_123 = y.e123
    y_023 = y.e023
    y_013 = y.e013
    y_012 = y.e012
    ret_3 = (+)((*)(x_13, y_023), (*)(-1, x_03, y_123), (*)(-1, x_23, y_013))
    ret_2 = (+)((*)(x_12, y_023), (*)(-1, x_02, y_123), (*)(-1, x_23, y_012))
    ret_1 = (+)((*)(x_12, y_013), (*)(-1, x_01, y_123), (*)(-1, x_13, y_012))
    ret_0 = (+)((*)(x_02, y_013), (*)(-1, x_01, y_023), (*)(-1, x_03, y_012))
    return MultiVector1(; e3 = ret_3, e2 = ret_2, e1 = ret_1, e0 = ret_0)
end
function anti_wedge(x::MultiVector2, y::MultiVector4)
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    y_0123 = y.e0123
    ret_23 = (*)(x_23, y_0123)
    ret_13 = (*)(x_13, y_0123)
    ret_12 = (*)(x_12, y_0123)
    ret_03 = (*)(x_03, y_0123)
    ret_02 = (*)(x_02, y_0123)
    ret_01 = (*)(x_01, y_0123)
    return MultiVector2(; e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01)
end
function anti_wedge(x::MultiVector2, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function anti_wedge(x::MultiVector3, y::MultiVectorAll)
    x_123 = x.e123
    x_023 = x.e023
    x_013 = x.e013
    x_012 = x.e012
    y_ = y.e
    y_3 = y.e3
    y_2 = y.e2
    y_23 = y.e23
    y_1 = y.e1
    y_13 = y.e13
    y_12 = y.e12
    y_123 = y.e123
    y_0 = y.e0
    y_03 = y.e03
    y_02 = y.e02
    y_023 = y.e023
    y_01 = y.e01
    y_013 = y.e013
    y_012 = y.e012
    y_0123 = y.e0123
    ret_ = (+)((*)(x_013, y_2), (*)(x_123, y_0), (*)(-1, x_012, y_3), (*)(-1, x_023, y_1))
    ret_3 = (+)((*)(x_023, y_13), (*)(-1, x_013, y_23), (*)(-1, x_123, y_03))
    ret_2 = (+)((*)(x_023, y_12), (*)(-1, x_012, y_23), (*)(-1, x_123, y_02))
    ret_23 = (+)((*)(x_023, y_123), (*)(-1, x_123, y_023))
    ret_1 = (+)((*)(x_013, y_12), (*)(-1, x_012, y_13), (*)(-1, x_123, y_01))
    ret_13 = (+)((*)(x_013, y_123), (*)(-1, x_123, y_013))
    ret_12 = (+)((*)(x_012, y_123), (*)(-1, x_123, y_012))
    ret_123 = (*)(x_123, y_0123)
    ret_0 = (+)((*)(x_013, y_02), (*)(-1, x_012, y_03), (*)(-1, x_023, y_01))
    ret_03 = (+)((*)(x_013, y_023), (*)(-1, x_023, y_013))
    ret_02 = (+)((*)(x_012, y_023), (*)(-1, x_023, y_012))
    ret_023 = (*)(x_023, y_0123)
    ret_01 = (+)((*)(x_012, y_013), (*)(-1, x_013, y_012))
    ret_013 = (*)(x_013, y_0123)
    ret_012 = (*)(x_012, y_0123)
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012)
end
function anti_wedge(x::MultiVector3, y::MultiVectorEven)
    x_123 = x.e123
    x_023 = x.e023
    x_013 = x.e013
    x_012 = x.e012
    y_ = y.e
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    y_0123 = y.e0123
    ret_3 = (+)((*)(x_023, y_13), (*)(-1, x_013, y_23), (*)(-1, x_123, y_03))
    ret_2 = (+)((*)(x_023, y_12), (*)(-1, x_012, y_23), (*)(-1, x_123, y_02))
    ret_1 = (+)((*)(x_013, y_12), (*)(-1, x_012, y_13), (*)(-1, x_123, y_01))
    ret_123 = (*)(x_123, y_0123)
    ret_0 = (+)((*)(x_013, y_02), (*)(-1, x_012, y_03), (*)(-1, x_023, y_01))
    ret_023 = (*)(x_023, y_0123)
    ret_013 = (*)(x_013, y_0123)
    ret_012 = (*)(x_012, y_0123)
    return MultiVectorAll(; e3 = ret_3, e2 = ret_2, e1 = ret_1, e123 = ret_123, e0 = ret_0, e023 = ret_023, e013 = ret_013, e012 = ret_012)
end
function anti_wedge(x::MultiVector3, y::MultiVector0)
    return MultiVectorZero(; )
end
function anti_wedge(x::MultiVector3, y::MultiVector1)
    x_123 = x.e123
    x_023 = x.e023
    x_013 = x.e013
    x_012 = x.e012
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    y_0 = y.e0
    ret_ = (+)((*)(x_013, y_2), (*)(x_123, y_0), (*)(-1, x_012, y_3), (*)(-1, x_023, y_1))
    return MultiVector0(; e = ret_)
end
function anti_wedge(x::MultiVector3, y::MultiVector2)
    x_123 = x.e123
    x_023 = x.e023
    x_013 = x.e013
    x_012 = x.e012
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    ret_3 = (+)((*)(x_023, y_13), (*)(-1, x_013, y_23), (*)(-1, x_123, y_03))
    ret_2 = (+)((*)(x_023, y_12), (*)(-1, x_012, y_23), (*)(-1, x_123, y_02))
    ret_1 = (+)((*)(x_013, y_12), (*)(-1, x_012, y_13), (*)(-1, x_123, y_01))
    ret_0 = (+)((*)(x_013, y_02), (*)(-1, x_012, y_03), (*)(-1, x_023, y_01))
    return MultiVector1(; e3 = ret_3, e2 = ret_2, e1 = ret_1, e0 = ret_0)
end
function anti_wedge(x::MultiVector3, y::MultiVector3)
    x_123 = x.e123
    x_023 = x.e023
    x_013 = x.e013
    x_012 = x.e012
    y_123 = y.e123
    y_023 = y.e023
    y_013 = y.e013
    y_012 = y.e012
    ret_23 = (+)((*)(x_023, y_123), (*)(-1, x_123, y_023))
    ret_13 = (+)((*)(x_013, y_123), (*)(-1, x_123, y_013))
    ret_12 = (+)((*)(x_012, y_123), (*)(-1, x_123, y_012))
    ret_03 = (+)((*)(x_013, y_023), (*)(-1, x_023, y_013))
    ret_02 = (+)((*)(x_012, y_023), (*)(-1, x_023, y_012))
    ret_01 = (+)((*)(x_012, y_013), (*)(-1, x_013, y_012))
    return MultiVector2(; e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01)
end
function anti_wedge(x::MultiVector3, y::MultiVector4)
    x_123 = x.e123
    x_023 = x.e023
    x_013 = x.e013
    x_012 = x.e012
    y_0123 = y.e0123
    ret_123 = (*)(x_123, y_0123)
    ret_023 = (*)(x_023, y_0123)
    ret_013 = (*)(x_013, y_0123)
    ret_012 = (*)(x_012, y_0123)
    return MultiVector3(; e123 = ret_123, e023 = ret_023, e013 = ret_013, e012 = ret_012)
end
function anti_wedge(x::MultiVector3, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function anti_wedge(x::MultiVector4, y::MultiVectorAll)
    x_0123 = x.e0123
    y_ = y.e
    y_3 = y.e3
    y_2 = y.e2
    y_23 = y.e23
    y_1 = y.e1
    y_13 = y.e13
    y_12 = y.e12
    y_123 = y.e123
    y_0 = y.e0
    y_03 = y.e03
    y_02 = y.e02
    y_023 = y.e023
    y_01 = y.e01
    y_013 = y.e013
    y_012 = y.e012
    y_0123 = y.e0123
    ret_ = (*)(x_0123, y_)
    ret_3 = (*)(x_0123, y_3)
    ret_2 = (*)(x_0123, y_2)
    ret_23 = (*)(x_0123, y_23)
    ret_1 = (*)(x_0123, y_1)
    ret_13 = (*)(x_0123, y_13)
    ret_12 = (*)(x_0123, y_12)
    ret_123 = (*)(x_0123, y_123)
    ret_0 = (*)(x_0123, y_0)
    ret_03 = (*)(x_0123, y_03)
    ret_02 = (*)(x_0123, y_02)
    ret_023 = (*)(x_0123, y_023)
    ret_01 = (*)(x_0123, y_01)
    ret_013 = (*)(x_0123, y_013)
    ret_012 = (*)(x_0123, y_012)
    ret_0123 = (*)(x_0123, y_0123)
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function anti_wedge(x::MultiVector4, y::MultiVectorEven)
    x_0123 = x.e0123
    y_ = y.e
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    y_0123 = y.e0123
    ret_ = (*)(x_0123, y_)
    ret_23 = (*)(x_0123, y_23)
    ret_13 = (*)(x_0123, y_13)
    ret_12 = (*)(x_0123, y_12)
    ret_03 = (*)(x_0123, y_03)
    ret_02 = (*)(x_0123, y_02)
    ret_01 = (*)(x_0123, y_01)
    ret_0123 = (*)(x_0123, y_0123)
    return MultiVectorEven(; e = ret_, e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01, e0123 = ret_0123)
end
function anti_wedge(x::MultiVector4, y::MultiVector0)
    x_0123 = x.e0123
    y_ = y.e
    ret_ = (*)(x_0123, y_)
    return MultiVector0(; e = ret_)
end
function anti_wedge(x::MultiVector4, y::MultiVector1)
    x_0123 = x.e0123
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    y_0 = y.e0
    ret_3 = (*)(x_0123, y_3)
    ret_2 = (*)(x_0123, y_2)
    ret_1 = (*)(x_0123, y_1)
    ret_0 = (*)(x_0123, y_0)
    return MultiVector1(; e3 = ret_3, e2 = ret_2, e1 = ret_1, e0 = ret_0)
end
function anti_wedge(x::MultiVector4, y::MultiVector2)
    x_0123 = x.e0123
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    ret_23 = (*)(x_0123, y_23)
    ret_13 = (*)(x_0123, y_13)
    ret_12 = (*)(x_0123, y_12)
    ret_03 = (*)(x_0123, y_03)
    ret_02 = (*)(x_0123, y_02)
    ret_01 = (*)(x_0123, y_01)
    return MultiVector2(; e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01)
end
function anti_wedge(x::MultiVector4, y::MultiVector3)
    x_0123 = x.e0123
    y_123 = y.e123
    y_023 = y.e023
    y_013 = y.e013
    y_012 = y.e012
    ret_123 = (*)(x_0123, y_123)
    ret_023 = (*)(x_0123, y_023)
    ret_013 = (*)(x_0123, y_013)
    ret_012 = (*)(x_0123, y_012)
    return MultiVector3(; e123 = ret_123, e023 = ret_023, e013 = ret_013, e012 = ret_012)
end
function anti_wedge(x::MultiVector4, y::MultiVector4)
    x_0123 = x.e0123
    y_0123 = y.e0123
    ret_0123 = (*)(x_0123, y_0123)
    return MultiVector4(; e0123 = ret_0123)
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
function inner(x::MultiVectorAll, y::MultiVectorAll)
    x_ = x.e
    x_3 = x.e3
    x_2 = x.e2
    x_23 = x.e23
    x_1 = x.e1
    x_13 = x.e13
    x_12 = x.e12
    x_123 = x.e123
    x_0 = x.e0
    x_03 = x.e03
    x_02 = x.e02
    x_023 = x.e023
    x_01 = x.e01
    x_013 = x.e013
    x_012 = x.e012
    x_0123 = x.e0123
    y_ = y.e
    y_3 = y.e3
    y_2 = y.e2
    y_23 = y.e23
    y_1 = y.e1
    y_13 = y.e13
    y_12 = y.e12
    y_123 = y.e123
    y_0 = y.e0
    y_03 = y.e03
    y_02 = y.e02
    y_023 = y.e023
    y_01 = y.e01
    y_013 = y.e013
    y_012 = y.e012
    y_0123 = y.e0123
    ret_ = (+)((*)(x_, y_), (*)(x_1, y_1), (*)(x_2, y_2), (*)(x_3, y_3), (*)(-1, x_12, y_12), (*)(-1, x_123, y_123), (*)(-1, x_13, y_13), (*)(-1, x_23, y_23))
    ret_3 = (+)((*)(x_, y_3), (*)(x_1, y_13), (*)(x_2, y_23), (*)(x_3, y_), (*)(-1, x_12, y_123), (*)(-1, x_123, y_12), (*)(-1, x_13, y_1), (*)(-1, x_23, y_2))
    ret_2 = (+)((*)(x_, y_2), (*)(x_1, y_12), (*)(x_123, y_13), (*)(x_13, y_123), (*)(x_2, y_), (*)(x_23, y_3), (*)(-1, x_12, y_1), (*)(-1, x_3, y_23))
    ret_23 = (+)((*)(x_, y_23), (*)(x_1, y_123), (*)(x_123, y_1), (*)(x_23, y_))
    ret_1 = (+)((*)(x_, y_1), (*)(x_1, y_), (*)(x_12, y_2), (*)(x_13, y_3), (*)(-1, x_123, y_23), (*)(-1, x_2, y_12), (*)(-1, x_23, y_123), (*)(-1, x_3, y_13))
    ret_13 = (+)((*)(x_, y_13), (*)(x_13, y_), (*)(-1, x_123, y_2), (*)(-1, x_2, y_123))
    ret_12 = (+)((*)(x_, y_12), (*)(x_12, y_), (*)(x_123, y_3), (*)(x_3, y_123))
    ret_123 = (+)((*)(x_, y_123), (*)(x_123, y_))
    ret_0 = (+)((*)(x_, y_0), (*)(x_0, y_), (*)(x_01, y_1), (*)(x_02, y_2), (*)(x_03, y_3), (*)(x_123, y_0123), (*)(-1, x_012, y_12), (*)(-1, x_0123, y_123), (*)(-1, x_013, y_13), (*)(-1, x_023, y_23), (*)(-1, x_1, y_01), (*)(-1, x_12, y_012), (*)(-1, x_13, y_013), (*)(-1, x_2, y_02), (*)(-1, x_23, y_023), (*)(-1, x_3, y_03))
    ret_03 = (+)((*)(x_, y_03), (*)(x_03, y_), (*)(-1, x_0123, y_12), (*)(-1, x_013, y_1), (*)(-1, x_023, y_2), (*)(-1, x_1, y_013), (*)(-1, x_12, y_0123), (*)(-1, x_2, y_023))
    ret_02 = (+)((*)(x_, y_02), (*)(x_0123, y_13), (*)(x_02, y_), (*)(x_023, y_3), (*)(x_13, y_0123), (*)(x_3, y_023), (*)(-1, x_012, y_1), (*)(-1, x_1, y_012))
    ret_023 = (+)((*)(x_, y_023), (*)(x_0123, y_1), (*)(x_023, y_), (*)(-1, x_1, y_0123))
    ret_01 = (+)((*)(x_, y_01), (*)(x_01, y_), (*)(x_012, y_2), (*)(x_013, y_3), (*)(x_2, y_012), (*)(x_3, y_013), (*)(-1, x_0123, y_23), (*)(-1, x_23, y_0123))
    ret_013 = (+)((*)(x_, y_013), (*)(x_013, y_), (*)(x_2, y_0123), (*)(-1, x_0123, y_2))
    ret_012 = (+)((*)(x_, y_012), (*)(x_012, y_), (*)(x_0123, y_3), (*)(-1, x_3, y_0123))
    ret_0123 = (+)((*)(x_, y_0123), (*)(x_0123, y_))
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function inner(x::MultiVectorAll, y::MultiVectorEven)
    x_ = x.e
    x_3 = x.e3
    x_2 = x.e2
    x_23 = x.e23
    x_1 = x.e1
    x_13 = x.e13
    x_12 = x.e12
    x_123 = x.e123
    x_0 = x.e0
    x_03 = x.e03
    x_02 = x.e02
    x_023 = x.e023
    x_01 = x.e01
    x_013 = x.e013
    x_012 = x.e012
    x_0123 = x.e0123
    y_ = y.e
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    y_0123 = y.e0123
    ret_ = (+)((*)(x_, y_), (*)(-1, x_12, y_12), (*)(-1, x_13, y_13), (*)(-1, x_23, y_23))
    ret_3 = (+)((*)(x_1, y_13), (*)(x_2, y_23), (*)(x_3, y_), (*)(-1, x_123, y_12))
    ret_2 = (+)((*)(x_1, y_12), (*)(x_123, y_13), (*)(x_2, y_), (*)(-1, x_3, y_23))
    ret_23 = (+)((*)(x_, y_23), (*)(x_23, y_))
    ret_1 = (+)((*)(x_1, y_), (*)(-1, x_123, y_23), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))
    ret_13 = (+)((*)(x_, y_13), (*)(x_13, y_))
    ret_12 = (+)((*)(x_, y_12), (*)(x_12, y_))
    ret_123 = (*)(x_123, y_)
    ret_0 = (+)((*)(x_0, y_), (*)(x_123, y_0123), (*)(-1, x_012, y_12), (*)(-1, x_013, y_13), (*)(-1, x_023, y_23), (*)(-1, x_1, y_01), (*)(-1, x_2, y_02), (*)(-1, x_3, y_03))
    ret_03 = (+)((*)(x_, y_03), (*)(x_03, y_), (*)(-1, x_0123, y_12), (*)(-1, x_12, y_0123))
    ret_02 = (+)((*)(x_, y_02), (*)(x_0123, y_13), (*)(x_02, y_), (*)(x_13, y_0123))
    ret_023 = (+)((*)(x_023, y_), (*)(-1, x_1, y_0123))
    ret_01 = (+)((*)(x_, y_01), (*)(x_01, y_), (*)(-1, x_0123, y_23), (*)(-1, x_23, y_0123))
    ret_013 = (+)((*)(x_013, y_), (*)(x_2, y_0123))
    ret_012 = (+)((*)(x_012, y_), (*)(-1, x_3, y_0123))
    ret_0123 = (+)((*)(x_, y_0123), (*)(x_0123, y_))
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function inner(x::MultiVectorAll, y::MultiVector0)
    x_ = x.e
    x_3 = x.e3
    x_2 = x.e2
    x_23 = x.e23
    x_1 = x.e1
    x_13 = x.e13
    x_12 = x.e12
    x_123 = x.e123
    x_0 = x.e0
    x_03 = x.e03
    x_02 = x.e02
    x_023 = x.e023
    x_01 = x.e01
    x_013 = x.e013
    x_012 = x.e012
    x_0123 = x.e0123
    y_ = y.e
    ret_ = (*)(x_, y_)
    ret_3 = (*)(x_3, y_)
    ret_2 = (*)(x_2, y_)
    ret_23 = (*)(x_23, y_)
    ret_1 = (*)(x_1, y_)
    ret_13 = (*)(x_13, y_)
    ret_12 = (*)(x_12, y_)
    ret_123 = (*)(x_123, y_)
    ret_0 = (*)(x_0, y_)
    ret_03 = (*)(x_03, y_)
    ret_02 = (*)(x_02, y_)
    ret_023 = (*)(x_023, y_)
    ret_01 = (*)(x_01, y_)
    ret_013 = (*)(x_013, y_)
    ret_012 = (*)(x_012, y_)
    ret_0123 = (*)(x_0123, y_)
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function inner(x::MultiVectorAll, y::MultiVector1)
    x_ = x.e
    x_3 = x.e3
    x_2 = x.e2
    x_23 = x.e23
    x_1 = x.e1
    x_13 = x.e13
    x_12 = x.e12
    x_123 = x.e123
    x_0 = x.e0
    x_03 = x.e03
    x_02 = x.e02
    x_023 = x.e023
    x_01 = x.e01
    x_013 = x.e013
    x_012 = x.e012
    x_0123 = x.e0123
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    y_0 = y.e0
    ret_ = (+)((*)(x_1, y_1), (*)(x_2, y_2), (*)(x_3, y_3))
    ret_3 = (+)((*)(x_, y_3), (*)(-1, x_13, y_1), (*)(-1, x_23, y_2))
    ret_2 = (+)((*)(x_, y_2), (*)(x_23, y_3), (*)(-1, x_12, y_1))
    ret_23 = (*)(x_123, y_1)
    ret_1 = (+)((*)(x_, y_1), (*)(x_12, y_2), (*)(x_13, y_3))
    ret_13 = (*)(-1, x_123, y_2)
    ret_12 = (*)(x_123, y_3)
    ret_0 = (+)((*)(x_, y_0), (*)(x_01, y_1), (*)(x_02, y_2), (*)(x_03, y_3))
    ret_03 = (+)((*)(-1, x_013, y_1), (*)(-1, x_023, y_2))
    ret_02 = (+)((*)(x_023, y_3), (*)(-1, x_012, y_1))
    ret_023 = (*)(x_0123, y_1)
    ret_01 = (+)((*)(x_012, y_2), (*)(x_013, y_3))
    ret_013 = (*)(-1, x_0123, y_2)
    ret_012 = (*)(x_0123, y_3)
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012)
end
function inner(x::MultiVectorAll, y::MultiVector2)
    x_ = x.e
    x_3 = x.e3
    x_2 = x.e2
    x_23 = x.e23
    x_1 = x.e1
    x_13 = x.e13
    x_12 = x.e12
    x_123 = x.e123
    x_0 = x.e0
    x_03 = x.e03
    x_02 = x.e02
    x_023 = x.e023
    x_01 = x.e01
    x_013 = x.e013
    x_012 = x.e012
    x_0123 = x.e0123
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    ret_ = (+)((*)(-1, x_12, y_12), (*)(-1, x_13, y_13), (*)(-1, x_23, y_23))
    ret_3 = (+)((*)(x_1, y_13), (*)(x_2, y_23), (*)(-1, x_123, y_12))
    ret_2 = (+)((*)(x_1, y_12), (*)(x_123, y_13), (*)(-1, x_3, y_23))
    ret_23 = (*)(x_, y_23)
    ret_1 = (+)((*)(-1, x_123, y_23), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))
    ret_13 = (*)(x_, y_13)
    ret_12 = (*)(x_, y_12)
    ret_0 = (+)((*)(-1, x_012, y_12), (*)(-1, x_013, y_13), (*)(-1, x_023, y_23), (*)(-1, x_1, y_01), (*)(-1, x_2, y_02), (*)(-1, x_3, y_03))
    ret_03 = (+)((*)(x_, y_03), (*)(-1, x_0123, y_12))
    ret_02 = (+)((*)(x_, y_02), (*)(x_0123, y_13))
    ret_01 = (+)((*)(x_, y_01), (*)(-1, x_0123, y_23))
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e0 = ret_0, e03 = ret_03, e02 = ret_02, e01 = ret_01)
end
function inner(x::MultiVectorAll, y::MultiVector3)
    x_ = x.e
    x_3 = x.e3
    x_2 = x.e2
    x_23 = x.e23
    x_1 = x.e1
    x_13 = x.e13
    x_12 = x.e12
    x_123 = x.e123
    x_0 = x.e0
    x_03 = x.e03
    x_02 = x.e02
    x_023 = x.e023
    x_01 = x.e01
    x_013 = x.e013
    x_012 = x.e012
    x_0123 = x.e0123
    y_123 = y.e123
    y_023 = y.e023
    y_013 = y.e013
    y_012 = y.e012
    ret_ = (*)(-1, x_123, y_123)
    ret_3 = (*)(-1, x_12, y_123)
    ret_2 = (*)(x_13, y_123)
    ret_23 = (*)(x_1, y_123)
    ret_1 = (*)(-1, x_23, y_123)
    ret_13 = (*)(-1, x_2, y_123)
    ret_12 = (*)(x_3, y_123)
    ret_123 = (*)(x_, y_123)
    ret_0 = (+)((*)(-1, x_0123, y_123), (*)(-1, x_12, y_012), (*)(-1, x_13, y_013), (*)(-1, x_23, y_023))
    ret_03 = (+)((*)(-1, x_1, y_013), (*)(-1, x_2, y_023))
    ret_02 = (+)((*)(x_3, y_023), (*)(-1, x_1, y_012))
    ret_023 = (*)(x_, y_023)
    ret_01 = (+)((*)(x_2, y_012), (*)(x_3, y_013))
    ret_013 = (*)(x_, y_013)
    ret_012 = (*)(x_, y_012)
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012)
end
function inner(x::MultiVectorAll, y::MultiVector4)
    x_ = x.e
    x_3 = x.e3
    x_2 = x.e2
    x_23 = x.e23
    x_1 = x.e1
    x_13 = x.e13
    x_12 = x.e12
    x_123 = x.e123
    x_0 = x.e0
    x_03 = x.e03
    x_02 = x.e02
    x_023 = x.e023
    x_01 = x.e01
    x_013 = x.e013
    x_012 = x.e012
    x_0123 = x.e0123
    y_0123 = y.e0123
    ret_0 = (*)(x_123, y_0123)
    ret_03 = (*)(-1, x_12, y_0123)
    ret_02 = (*)(x_13, y_0123)
    ret_023 = (*)(-1, x_1, y_0123)
    ret_01 = (*)(-1, x_23, y_0123)
    ret_013 = (*)(x_2, y_0123)
    ret_012 = (*)(-1, x_3, y_0123)
    ret_0123 = (*)(x_, y_0123)
    return MultiVectorAll(; e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function inner(x::MultiVectorAll, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function inner(x::MultiVectorEven, y::MultiVectorAll)
    x_ = x.e
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    x_0123 = x.e0123
    y_ = y.e
    y_3 = y.e3
    y_2 = y.e2
    y_23 = y.e23
    y_1 = y.e1
    y_13 = y.e13
    y_12 = y.e12
    y_123 = y.e123
    y_0 = y.e0
    y_03 = y.e03
    y_02 = y.e02
    y_023 = y.e023
    y_01 = y.e01
    y_013 = y.e013
    y_012 = y.e012
    y_0123 = y.e0123
    ret_ = (+)((*)(x_, y_), (*)(-1, x_12, y_12), (*)(-1, x_13, y_13), (*)(-1, x_23, y_23))
    ret_3 = (+)((*)(x_, y_3), (*)(-1, x_12, y_123), (*)(-1, x_13, y_1), (*)(-1, x_23, y_2))
    ret_2 = (+)((*)(x_, y_2), (*)(x_13, y_123), (*)(x_23, y_3), (*)(-1, x_12, y_1))
    ret_23 = (+)((*)(x_, y_23), (*)(x_23, y_))
    ret_1 = (+)((*)(x_, y_1), (*)(x_12, y_2), (*)(x_13, y_3), (*)(-1, x_23, y_123))
    ret_13 = (+)((*)(x_, y_13), (*)(x_13, y_))
    ret_12 = (+)((*)(x_, y_12), (*)(x_12, y_))
    ret_123 = (*)(x_, y_123)
    ret_0 = (+)((*)(x_, y_0), (*)(x_01, y_1), (*)(x_02, y_2), (*)(x_03, y_3), (*)(-1, x_0123, y_123), (*)(-1, x_12, y_012), (*)(-1, x_13, y_013), (*)(-1, x_23, y_023))
    ret_03 = (+)((*)(x_, y_03), (*)(x_03, y_), (*)(-1, x_0123, y_12), (*)(-1, x_12, y_0123))
    ret_02 = (+)((*)(x_, y_02), (*)(x_0123, y_13), (*)(x_02, y_), (*)(x_13, y_0123))
    ret_023 = (+)((*)(x_, y_023), (*)(x_0123, y_1))
    ret_01 = (+)((*)(x_, y_01), (*)(x_01, y_), (*)(-1, x_0123, y_23), (*)(-1, x_23, y_0123))
    ret_013 = (+)((*)(x_, y_013), (*)(-1, x_0123, y_2))
    ret_012 = (+)((*)(x_, y_012), (*)(x_0123, y_3))
    ret_0123 = (+)((*)(x_, y_0123), (*)(x_0123, y_))
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function inner(x::MultiVectorEven, y::MultiVectorEven)
    x_ = x.e
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    x_0123 = x.e0123
    y_ = y.e
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    y_0123 = y.e0123
    ret_ = (+)((*)(x_, y_), (*)(-1, x_12, y_12), (*)(-1, x_13, y_13), (*)(-1, x_23, y_23))
    ret_23 = (+)((*)(x_, y_23), (*)(x_23, y_))
    ret_13 = (+)((*)(x_, y_13), (*)(x_13, y_))
    ret_12 = (+)((*)(x_, y_12), (*)(x_12, y_))
    ret_03 = (+)((*)(x_, y_03), (*)(x_03, y_), (*)(-1, x_0123, y_12), (*)(-1, x_12, y_0123))
    ret_02 = (+)((*)(x_, y_02), (*)(x_0123, y_13), (*)(x_02, y_), (*)(x_13, y_0123))
    ret_01 = (+)((*)(x_, y_01), (*)(x_01, y_), (*)(-1, x_0123, y_23), (*)(-1, x_23, y_0123))
    ret_0123 = (+)((*)(x_, y_0123), (*)(x_0123, y_))
    return MultiVectorEven(; e = ret_, e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01, e0123 = ret_0123)
end
function inner(x::MultiVectorEven, y::MultiVector0)
    x_ = x.e
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    x_0123 = x.e0123
    y_ = y.e
    ret_ = (*)(x_, y_)
    ret_23 = (*)(x_23, y_)
    ret_13 = (*)(x_13, y_)
    ret_12 = (*)(x_12, y_)
    ret_03 = (*)(x_03, y_)
    ret_02 = (*)(x_02, y_)
    ret_01 = (*)(x_01, y_)
    ret_0123 = (*)(x_0123, y_)
    return MultiVectorEven(; e = ret_, e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01, e0123 = ret_0123)
end
function inner(x::MultiVectorEven, y::MultiVector1)
    x_ = x.e
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    x_0123 = x.e0123
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    y_0 = y.e0
    ret_3 = (+)((*)(x_, y_3), (*)(-1, x_13, y_1), (*)(-1, x_23, y_2))
    ret_2 = (+)((*)(x_, y_2), (*)(x_23, y_3), (*)(-1, x_12, y_1))
    ret_1 = (+)((*)(x_, y_1), (*)(x_12, y_2), (*)(x_13, y_3))
    ret_0 = (+)((*)(x_, y_0), (*)(x_01, y_1), (*)(x_02, y_2), (*)(x_03, y_3))
    ret_023 = (*)(x_0123, y_1)
    ret_013 = (*)(-1, x_0123, y_2)
    ret_012 = (*)(x_0123, y_3)
    return MultiVectorAll(; e3 = ret_3, e2 = ret_2, e1 = ret_1, e0 = ret_0, e023 = ret_023, e013 = ret_013, e012 = ret_012)
end
function inner(x::MultiVectorEven, y::MultiVector2)
    x_ = x.e
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    x_0123 = x.e0123
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    ret_ = (+)((*)(-1, x_12, y_12), (*)(-1, x_13, y_13), (*)(-1, x_23, y_23))
    ret_23 = (*)(x_, y_23)
    ret_13 = (*)(x_, y_13)
    ret_12 = (*)(x_, y_12)
    ret_03 = (+)((*)(x_, y_03), (*)(-1, x_0123, y_12))
    ret_02 = (+)((*)(x_, y_02), (*)(x_0123, y_13))
    ret_01 = (+)((*)(x_, y_01), (*)(-1, x_0123, y_23))
    return MultiVectorEven(; e = ret_, e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01)
end
function inner(x::MultiVectorEven, y::MultiVector3)
    x_ = x.e
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    x_0123 = x.e0123
    y_123 = y.e123
    y_023 = y.e023
    y_013 = y.e013
    y_012 = y.e012
    ret_3 = (*)(-1, x_12, y_123)
    ret_2 = (*)(x_13, y_123)
    ret_1 = (*)(-1, x_23, y_123)
    ret_123 = (*)(x_, y_123)
    ret_0 = (+)((*)(-1, x_0123, y_123), (*)(-1, x_12, y_012), (*)(-1, x_13, y_013), (*)(-1, x_23, y_023))
    ret_023 = (*)(x_, y_023)
    ret_013 = (*)(x_, y_013)
    ret_012 = (*)(x_, y_012)
    return MultiVectorAll(; e3 = ret_3, e2 = ret_2, e1 = ret_1, e123 = ret_123, e0 = ret_0, e023 = ret_023, e013 = ret_013, e012 = ret_012)
end
function inner(x::MultiVectorEven, y::MultiVector4)
    x_ = x.e
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    x_0123 = x.e0123
    y_0123 = y.e0123
    ret_03 = (*)(-1, x_12, y_0123)
    ret_02 = (*)(x_13, y_0123)
    ret_01 = (*)(-1, x_23, y_0123)
    ret_0123 = (*)(x_, y_0123)
    return MultiVectorEven(; e03 = ret_03, e02 = ret_02, e01 = ret_01, e0123 = ret_0123)
end
function inner(x::MultiVectorEven, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function inner(x::MultiVector0, y::MultiVectorAll)
    x_ = x.e
    y_ = y.e
    y_3 = y.e3
    y_2 = y.e2
    y_23 = y.e23
    y_1 = y.e1
    y_13 = y.e13
    y_12 = y.e12
    y_123 = y.e123
    y_0 = y.e0
    y_03 = y.e03
    y_02 = y.e02
    y_023 = y.e023
    y_01 = y.e01
    y_013 = y.e013
    y_012 = y.e012
    y_0123 = y.e0123
    ret_ = (*)(x_, y_)
    ret_3 = (*)(x_, y_3)
    ret_2 = (*)(x_, y_2)
    ret_23 = (*)(x_, y_23)
    ret_1 = (*)(x_, y_1)
    ret_13 = (*)(x_, y_13)
    ret_12 = (*)(x_, y_12)
    ret_123 = (*)(x_, y_123)
    ret_0 = (*)(x_, y_0)
    ret_03 = (*)(x_, y_03)
    ret_02 = (*)(x_, y_02)
    ret_023 = (*)(x_, y_023)
    ret_01 = (*)(x_, y_01)
    ret_013 = (*)(x_, y_013)
    ret_012 = (*)(x_, y_012)
    ret_0123 = (*)(x_, y_0123)
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function inner(x::MultiVector0, y::MultiVectorEven)
    x_ = x.e
    y_ = y.e
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    y_0123 = y.e0123
    ret_ = (*)(x_, y_)
    ret_23 = (*)(x_, y_23)
    ret_13 = (*)(x_, y_13)
    ret_12 = (*)(x_, y_12)
    ret_03 = (*)(x_, y_03)
    ret_02 = (*)(x_, y_02)
    ret_01 = (*)(x_, y_01)
    ret_0123 = (*)(x_, y_0123)
    return MultiVectorEven(; e = ret_, e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01, e0123 = ret_0123)
end
function inner(x::MultiVector0, y::MultiVector0)
    x_ = x.e
    y_ = y.e
    ret_ = (*)(x_, y_)
    return MultiVector0(; e = ret_)
end
function inner(x::MultiVector0, y::MultiVector1)
    x_ = x.e
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    y_0 = y.e0
    ret_3 = (*)(x_, y_3)
    ret_2 = (*)(x_, y_2)
    ret_1 = (*)(x_, y_1)
    ret_0 = (*)(x_, y_0)
    return MultiVector1(; e3 = ret_3, e2 = ret_2, e1 = ret_1, e0 = ret_0)
end
function inner(x::MultiVector0, y::MultiVector2)
    x_ = x.e
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    ret_23 = (*)(x_, y_23)
    ret_13 = (*)(x_, y_13)
    ret_12 = (*)(x_, y_12)
    ret_03 = (*)(x_, y_03)
    ret_02 = (*)(x_, y_02)
    ret_01 = (*)(x_, y_01)
    return MultiVector2(; e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01)
end
function inner(x::MultiVector0, y::MultiVector3)
    x_ = x.e
    y_123 = y.e123
    y_023 = y.e023
    y_013 = y.e013
    y_012 = y.e012
    ret_123 = (*)(x_, y_123)
    ret_023 = (*)(x_, y_023)
    ret_013 = (*)(x_, y_013)
    ret_012 = (*)(x_, y_012)
    return MultiVector3(; e123 = ret_123, e023 = ret_023, e013 = ret_013, e012 = ret_012)
end
function inner(x::MultiVector0, y::MultiVector4)
    x_ = x.e
    y_0123 = y.e0123
    ret_0123 = (*)(x_, y_0123)
    return MultiVector4(; e0123 = ret_0123)
end
function inner(x::MultiVector0, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function inner(x::MultiVector1, y::MultiVectorAll)
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    x_0 = x.e0
    y_ = y.e
    y_3 = y.e3
    y_2 = y.e2
    y_23 = y.e23
    y_1 = y.e1
    y_13 = y.e13
    y_12 = y.e12
    y_123 = y.e123
    y_0 = y.e0
    y_03 = y.e03
    y_02 = y.e02
    y_023 = y.e023
    y_01 = y.e01
    y_013 = y.e013
    y_012 = y.e012
    y_0123 = y.e0123
    ret_ = (+)((*)(x_1, y_1), (*)(x_2, y_2), (*)(x_3, y_3))
    ret_3 = (+)((*)(x_1, y_13), (*)(x_2, y_23), (*)(x_3, y_))
    ret_2 = (+)((*)(x_1, y_12), (*)(x_2, y_), (*)(-1, x_3, y_23))
    ret_23 = (*)(x_1, y_123)
    ret_1 = (+)((*)(x_1, y_), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))
    ret_13 = (*)(-1, x_2, y_123)
    ret_12 = (*)(x_3, y_123)
    ret_0 = (+)((*)(x_0, y_), (*)(-1, x_1, y_01), (*)(-1, x_2, y_02), (*)(-1, x_3, y_03))
    ret_03 = (+)((*)(-1, x_1, y_013), (*)(-1, x_2, y_023))
    ret_02 = (+)((*)(x_3, y_023), (*)(-1, x_1, y_012))
    ret_023 = (*)(-1, x_1, y_0123)
    ret_01 = (+)((*)(x_2, y_012), (*)(x_3, y_013))
    ret_013 = (*)(x_2, y_0123)
    ret_012 = (*)(-1, x_3, y_0123)
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012)
end
function inner(x::MultiVector1, y::MultiVectorEven)
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    x_0 = x.e0
    y_ = y.e
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    y_0123 = y.e0123
    ret_3 = (+)((*)(x_1, y_13), (*)(x_2, y_23), (*)(x_3, y_))
    ret_2 = (+)((*)(x_1, y_12), (*)(x_2, y_), (*)(-1, x_3, y_23))
    ret_1 = (+)((*)(x_1, y_), (*)(-1, x_2, y_12), (*)(-1, x_3, y_13))
    ret_0 = (+)((*)(x_0, y_), (*)(-1, x_1, y_01), (*)(-1, x_2, y_02), (*)(-1, x_3, y_03))
    ret_023 = (*)(-1, x_1, y_0123)
    ret_013 = (*)(x_2, y_0123)
    ret_012 = (*)(-1, x_3, y_0123)
    return MultiVectorAll(; e3 = ret_3, e2 = ret_2, e1 = ret_1, e0 = ret_0, e023 = ret_023, e013 = ret_013, e012 = ret_012)
end
function inner(x::MultiVector1, y::MultiVector0)
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    x_0 = x.e0
    y_ = y.e
    ret_3 = (*)(x_3, y_)
    ret_2 = (*)(x_2, y_)
    ret_1 = (*)(x_1, y_)
    ret_0 = (*)(x_0, y_)
    return MultiVector1(; e3 = ret_3, e2 = ret_2, e1 = ret_1, e0 = ret_0)
end
function inner(x::MultiVector1, y::MultiVector1)
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    x_0 = x.e0
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    y_0 = y.e0
    ret_ = (+)((*)(x_1, y_1), (*)(x_2, y_2), (*)(x_3, y_3))
    return MultiVector0(; e = ret_)
end
function inner(x::MultiVector1, y::MultiVector2)
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    x_0 = x.e0
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    ret_3 = (+)((*)(x_1, y_13), (*)(x_2, y_23))
    ret_2 = (+)((*)(x_1, y_12), (*)(-1, x_3, y_23))
    ret_1 = (+)((*)(-1, x_2, y_12), (*)(-1, x_3, y_13))
    ret_0 = (+)((*)(-1, x_1, y_01), (*)(-1, x_2, y_02), (*)(-1, x_3, y_03))
    return MultiVector1(; e3 = ret_3, e2 = ret_2, e1 = ret_1, e0 = ret_0)
end
function inner(x::MultiVector1, y::MultiVector3)
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    x_0 = x.e0
    y_123 = y.e123
    y_023 = y.e023
    y_013 = y.e013
    y_012 = y.e012
    ret_23 = (*)(x_1, y_123)
    ret_13 = (*)(-1, x_2, y_123)
    ret_12 = (*)(x_3, y_123)
    ret_03 = (+)((*)(-1, x_1, y_013), (*)(-1, x_2, y_023))
    ret_02 = (+)((*)(x_3, y_023), (*)(-1, x_1, y_012))
    ret_01 = (+)((*)(x_2, y_012), (*)(x_3, y_013))
    return MultiVector2(; e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01)
end
function inner(x::MultiVector1, y::MultiVector4)
    x_3 = x.e3
    x_2 = x.e2
    x_1 = x.e1
    x_0 = x.e0
    y_0123 = y.e0123
    ret_023 = (*)(-1, x_1, y_0123)
    ret_013 = (*)(x_2, y_0123)
    ret_012 = (*)(-1, x_3, y_0123)
    return MultiVector3(; e023 = ret_023, e013 = ret_013, e012 = ret_012)
end
function inner(x::MultiVector1, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function inner(x::MultiVector2, y::MultiVectorAll)
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    y_ = y.e
    y_3 = y.e3
    y_2 = y.e2
    y_23 = y.e23
    y_1 = y.e1
    y_13 = y.e13
    y_12 = y.e12
    y_123 = y.e123
    y_0 = y.e0
    y_03 = y.e03
    y_02 = y.e02
    y_023 = y.e023
    y_01 = y.e01
    y_013 = y.e013
    y_012 = y.e012
    y_0123 = y.e0123
    ret_ = (+)((*)(-1, x_12, y_12), (*)(-1, x_13, y_13), (*)(-1, x_23, y_23))
    ret_3 = (+)((*)(-1, x_12, y_123), (*)(-1, x_13, y_1), (*)(-1, x_23, y_2))
    ret_2 = (+)((*)(x_13, y_123), (*)(x_23, y_3), (*)(-1, x_12, y_1))
    ret_23 = (*)(x_23, y_)
    ret_1 = (+)((*)(x_12, y_2), (*)(x_13, y_3), (*)(-1, x_23, y_123))
    ret_13 = (*)(x_13, y_)
    ret_12 = (*)(x_12, y_)
    ret_0 = (+)((*)(x_01, y_1), (*)(x_02, y_2), (*)(x_03, y_3), (*)(-1, x_12, y_012), (*)(-1, x_13, y_013), (*)(-1, x_23, y_023))
    ret_03 = (+)((*)(x_03, y_), (*)(-1, x_12, y_0123))
    ret_02 = (+)((*)(x_02, y_), (*)(x_13, y_0123))
    ret_01 = (+)((*)(x_01, y_), (*)(-1, x_23, y_0123))
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e0 = ret_0, e03 = ret_03, e02 = ret_02, e01 = ret_01)
end
function inner(x::MultiVector2, y::MultiVectorEven)
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    y_ = y.e
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    y_0123 = y.e0123
    ret_ = (+)((*)(-1, x_12, y_12), (*)(-1, x_13, y_13), (*)(-1, x_23, y_23))
    ret_23 = (*)(x_23, y_)
    ret_13 = (*)(x_13, y_)
    ret_12 = (*)(x_12, y_)
    ret_03 = (+)((*)(x_03, y_), (*)(-1, x_12, y_0123))
    ret_02 = (+)((*)(x_02, y_), (*)(x_13, y_0123))
    ret_01 = (+)((*)(x_01, y_), (*)(-1, x_23, y_0123))
    return MultiVectorEven(; e = ret_, e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01)
end
function inner(x::MultiVector2, y::MultiVector0)
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    y_ = y.e
    ret_23 = (*)(x_23, y_)
    ret_13 = (*)(x_13, y_)
    ret_12 = (*)(x_12, y_)
    ret_03 = (*)(x_03, y_)
    ret_02 = (*)(x_02, y_)
    ret_01 = (*)(x_01, y_)
    return MultiVector2(; e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01)
end
function inner(x::MultiVector2, y::MultiVector1)
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    y_0 = y.e0
    ret_3 = (+)((*)(-1, x_13, y_1), (*)(-1, x_23, y_2))
    ret_2 = (+)((*)(x_23, y_3), (*)(-1, x_12, y_1))
    ret_1 = (+)((*)(x_12, y_2), (*)(x_13, y_3))
    ret_0 = (+)((*)(x_01, y_1), (*)(x_02, y_2), (*)(x_03, y_3))
    return MultiVector1(; e3 = ret_3, e2 = ret_2, e1 = ret_1, e0 = ret_0)
end
function inner(x::MultiVector2, y::MultiVector2)
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    ret_ = (+)((*)(-1, x_12, y_12), (*)(-1, x_13, y_13), (*)(-1, x_23, y_23))
    return MultiVector0(; e = ret_)
end
function inner(x::MultiVector2, y::MultiVector3)
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    y_123 = y.e123
    y_023 = y.e023
    y_013 = y.e013
    y_012 = y.e012
    ret_3 = (*)(-1, x_12, y_123)
    ret_2 = (*)(x_13, y_123)
    ret_1 = (*)(-1, x_23, y_123)
    ret_0 = (+)((*)(-1, x_12, y_012), (*)(-1, x_13, y_013), (*)(-1, x_23, y_023))
    return MultiVector1(; e3 = ret_3, e2 = ret_2, e1 = ret_1, e0 = ret_0)
end
function inner(x::MultiVector2, y::MultiVector4)
    x_23 = x.e23
    x_13 = x.e13
    x_12 = x.e12
    x_03 = x.e03
    x_02 = x.e02
    x_01 = x.e01
    y_0123 = y.e0123
    ret_03 = (*)(-1, x_12, y_0123)
    ret_02 = (*)(x_13, y_0123)
    ret_01 = (*)(-1, x_23, y_0123)
    return MultiVector2(; e03 = ret_03, e02 = ret_02, e01 = ret_01)
end
function inner(x::MultiVector2, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function inner(x::MultiVector3, y::MultiVectorAll)
    x_123 = x.e123
    x_023 = x.e023
    x_013 = x.e013
    x_012 = x.e012
    y_ = y.e
    y_3 = y.e3
    y_2 = y.e2
    y_23 = y.e23
    y_1 = y.e1
    y_13 = y.e13
    y_12 = y.e12
    y_123 = y.e123
    y_0 = y.e0
    y_03 = y.e03
    y_02 = y.e02
    y_023 = y.e023
    y_01 = y.e01
    y_013 = y.e013
    y_012 = y.e012
    y_0123 = y.e0123
    ret_ = (*)(-1, x_123, y_123)
    ret_3 = (*)(-1, x_123, y_12)
    ret_2 = (*)(x_123, y_13)
    ret_23 = (*)(x_123, y_1)
    ret_1 = (*)(-1, x_123, y_23)
    ret_13 = (*)(-1, x_123, y_2)
    ret_12 = (*)(x_123, y_3)
    ret_123 = (*)(x_123, y_)
    ret_0 = (+)((*)(x_123, y_0123), (*)(-1, x_012, y_12), (*)(-1, x_013, y_13), (*)(-1, x_023, y_23))
    ret_03 = (+)((*)(-1, x_013, y_1), (*)(-1, x_023, y_2))
    ret_02 = (+)((*)(x_023, y_3), (*)(-1, x_012, y_1))
    ret_023 = (*)(x_023, y_)
    ret_01 = (+)((*)(x_012, y_2), (*)(x_013, y_3))
    ret_013 = (*)(x_013, y_)
    ret_012 = (*)(x_012, y_)
    return MultiVectorAll(; e = ret_, e3 = ret_3, e2 = ret_2, e23 = ret_23, e1 = ret_1, e13 = ret_13, e12 = ret_12, e123 = ret_123, e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012)
end
function inner(x::MultiVector3, y::MultiVectorEven)
    x_123 = x.e123
    x_023 = x.e023
    x_013 = x.e013
    x_012 = x.e012
    y_ = y.e
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    y_0123 = y.e0123
    ret_3 = (*)(-1, x_123, y_12)
    ret_2 = (*)(x_123, y_13)
    ret_1 = (*)(-1, x_123, y_23)
    ret_123 = (*)(x_123, y_)
    ret_0 = (+)((*)(x_123, y_0123), (*)(-1, x_012, y_12), (*)(-1, x_013, y_13), (*)(-1, x_023, y_23))
    ret_023 = (*)(x_023, y_)
    ret_013 = (*)(x_013, y_)
    ret_012 = (*)(x_012, y_)
    return MultiVectorAll(; e3 = ret_3, e2 = ret_2, e1 = ret_1, e123 = ret_123, e0 = ret_0, e023 = ret_023, e013 = ret_013, e012 = ret_012)
end
function inner(x::MultiVector3, y::MultiVector0)
    x_123 = x.e123
    x_023 = x.e023
    x_013 = x.e013
    x_012 = x.e012
    y_ = y.e
    ret_123 = (*)(x_123, y_)
    ret_023 = (*)(x_023, y_)
    ret_013 = (*)(x_013, y_)
    ret_012 = (*)(x_012, y_)
    return MultiVector3(; e123 = ret_123, e023 = ret_023, e013 = ret_013, e012 = ret_012)
end
function inner(x::MultiVector3, y::MultiVector1)
    x_123 = x.e123
    x_023 = x.e023
    x_013 = x.e013
    x_012 = x.e012
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    y_0 = y.e0
    ret_23 = (*)(x_123, y_1)
    ret_13 = (*)(-1, x_123, y_2)
    ret_12 = (*)(x_123, y_3)
    ret_03 = (+)((*)(-1, x_013, y_1), (*)(-1, x_023, y_2))
    ret_02 = (+)((*)(x_023, y_3), (*)(-1, x_012, y_1))
    ret_01 = (+)((*)(x_012, y_2), (*)(x_013, y_3))
    return MultiVector2(; e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01)
end
function inner(x::MultiVector3, y::MultiVector2)
    x_123 = x.e123
    x_023 = x.e023
    x_013 = x.e013
    x_012 = x.e012
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    ret_3 = (*)(-1, x_123, y_12)
    ret_2 = (*)(x_123, y_13)
    ret_1 = (*)(-1, x_123, y_23)
    ret_0 = (+)((*)(-1, x_012, y_12), (*)(-1, x_013, y_13), (*)(-1, x_023, y_23))
    return MultiVector1(; e3 = ret_3, e2 = ret_2, e1 = ret_1, e0 = ret_0)
end
function inner(x::MultiVector3, y::MultiVector3)
    x_123 = x.e123
    x_023 = x.e023
    x_013 = x.e013
    x_012 = x.e012
    y_123 = y.e123
    y_023 = y.e023
    y_013 = y.e013
    y_012 = y.e012
    ret_ = (*)(-1, x_123, y_123)
    return MultiVector0(; e = ret_)
end
function inner(x::MultiVector3, y::MultiVector4)
    x_123 = x.e123
    x_023 = x.e023
    x_013 = x.e013
    x_012 = x.e012
    y_0123 = y.e0123
    ret_0 = (*)(x_123, y_0123)
    return MultiVector1(; e0 = ret_0)
end
function inner(x::MultiVector3, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function inner(x::MultiVector4, y::MultiVectorAll)
    x_0123 = x.e0123
    y_ = y.e
    y_3 = y.e3
    y_2 = y.e2
    y_23 = y.e23
    y_1 = y.e1
    y_13 = y.e13
    y_12 = y.e12
    y_123 = y.e123
    y_0 = y.e0
    y_03 = y.e03
    y_02 = y.e02
    y_023 = y.e023
    y_01 = y.e01
    y_013 = y.e013
    y_012 = y.e012
    y_0123 = y.e0123
    ret_0 = (*)(-1, x_0123, y_123)
    ret_03 = (*)(-1, x_0123, y_12)
    ret_02 = (*)(x_0123, y_13)
    ret_023 = (*)(x_0123, y_1)
    ret_01 = (*)(-1, x_0123, y_23)
    ret_013 = (*)(-1, x_0123, y_2)
    ret_012 = (*)(x_0123, y_3)
    ret_0123 = (*)(x_0123, y_)
    return MultiVectorAll(; e0 = ret_0, e03 = ret_03, e02 = ret_02, e023 = ret_023, e01 = ret_01, e013 = ret_013, e012 = ret_012, e0123 = ret_0123)
end
function inner(x::MultiVector4, y::MultiVectorEven)
    x_0123 = x.e0123
    y_ = y.e
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    y_0123 = y.e0123
    ret_03 = (*)(-1, x_0123, y_12)
    ret_02 = (*)(x_0123, y_13)
    ret_01 = (*)(-1, x_0123, y_23)
    ret_0123 = (*)(x_0123, y_)
    return MultiVectorEven(; e03 = ret_03, e02 = ret_02, e01 = ret_01, e0123 = ret_0123)
end
function inner(x::MultiVector4, y::MultiVector0)
    x_0123 = x.e0123
    y_ = y.e
    ret_0123 = (*)(x_0123, y_)
    return MultiVector4(; e0123 = ret_0123)
end
function inner(x::MultiVector4, y::MultiVector1)
    x_0123 = x.e0123
    y_3 = y.e3
    y_2 = y.e2
    y_1 = y.e1
    y_0 = y.e0
    ret_023 = (*)(x_0123, y_1)
    ret_013 = (*)(-1, x_0123, y_2)
    ret_012 = (*)(x_0123, y_3)
    return MultiVector3(; e023 = ret_023, e013 = ret_013, e012 = ret_012)
end
function inner(x::MultiVector4, y::MultiVector2)
    x_0123 = x.e0123
    y_23 = y.e23
    y_13 = y.e13
    y_12 = y.e12
    y_03 = y.e03
    y_02 = y.e02
    y_01 = y.e01
    ret_03 = (*)(-1, x_0123, y_12)
    ret_02 = (*)(x_0123, y_13)
    ret_01 = (*)(-1, x_0123, y_23)
    return MultiVector2(; e03 = ret_03, e02 = ret_02, e01 = ret_01)
end
function inner(x::MultiVector4, y::MultiVector3)
    x_0123 = x.e0123
    y_123 = y.e123
    y_023 = y.e023
    y_013 = y.e013
    y_012 = y.e012
    ret_0 = (*)(-1, x_0123, y_123)
    return MultiVector1(; e0 = ret_0)
end
function inner(x::MultiVector4, y::MultiVector4)
    return MultiVectorZero(; )
end
function inner(x::MultiVector4, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function inner(x::MultiVectorZero, y::MultiVectorAll)
    return MultiVectorZero(; )
end
function inner(x::MultiVectorZero, y::MultiVectorEven)
    return MultiVectorZero(; )
end
function inner(x::MultiVectorZero, y::MultiVector0)
    return MultiVectorZero(; )
end
function inner(x::MultiVectorZero, y::MultiVector1)
    return MultiVectorZero(; )
end
function inner(x::MultiVectorZero, y::MultiVector2)
    return MultiVectorZero(; )
end
function inner(x::MultiVectorZero, y::MultiVector3)
    return MultiVectorZero(; )
end
function inner(x::MultiVectorZero, y::MultiVector4)
    return MultiVectorZero(; )
end
function inner(x::MultiVectorZero, y::MultiVectorZero)
    return MultiVectorZero(; )
end
function project(onto::MultiVector0, obj::MultiVector0)
    onto_ = onto.e
    obj_ = obj.e
    ret_ = (*)(obj_, (^)(onto_, 2))
    return MultiVector0(; e = ret_)
end
function project(onto::MultiVector0, obj::MultiVector1)
    onto_ = onto.e
    obj_3 = obj.e3
    obj_2 = obj.e2
    obj_1 = obj.e1
    obj_0 = obj.e0
    ret_3 = (*)(obj_3, (^)(onto_, 2))
    ret_2 = (*)(obj_2, (^)(onto_, 2))
    ret_1 = (*)(obj_1, (^)(onto_, 2))
    ret_0 = (*)(obj_0, (^)(onto_, 2))
    return MultiVector1(; e3 = ret_3, e2 = ret_2, e1 = ret_1, e0 = ret_0)
end
function project(onto::MultiVector0, obj::MultiVector2)
    onto_ = onto.e
    obj_23 = obj.e23
    obj_13 = obj.e13
    obj_12 = obj.e12
    obj_03 = obj.e03
    obj_02 = obj.e02
    obj_01 = obj.e01
    ret_23 = (*)(obj_23, (^)(onto_, 2))
    ret_13 = (*)(obj_13, (^)(onto_, 2))
    ret_12 = (*)(obj_12, (^)(onto_, 2))
    ret_03 = (*)(obj_03, (^)(onto_, 2))
    ret_02 = (*)(obj_02, (^)(onto_, 2))
    ret_01 = (*)(obj_01, (^)(onto_, 2))
    return MultiVector2(; e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01)
end
function project(onto::MultiVector0, obj::MultiVector3)
    onto_ = onto.e
    obj_123 = obj.e123
    obj_023 = obj.e023
    obj_013 = obj.e013
    obj_012 = obj.e012
    ret_123 = (*)(obj_123, (^)(onto_, 2))
    ret_023 = (*)(obj_023, (^)(onto_, 2))
    ret_013 = (*)(obj_013, (^)(onto_, 2))
    ret_012 = (*)(obj_012, (^)(onto_, 2))
    return MultiVector3(; e123 = ret_123, e023 = ret_023, e013 = ret_013, e012 = ret_012)
end
function project(onto::MultiVector0, obj::MultiVector4)
    onto_ = onto.e
    obj_0123 = obj.e0123
    ret_0123 = (*)(obj_0123, (^)(onto_, 2))
    return MultiVector4(; e0123 = ret_0123)
end
function project(onto::MultiVector1, obj::MultiVector0)
    onto_3 = onto.e3
    onto_2 = onto.e2
    onto_1 = onto.e1
    onto_0 = onto.e0
    obj_ = obj.e
    ret_ = (*)(obj_, (+)((^)(onto_1, 2), (^)(onto_2, 2), (^)(onto_3, 2)))
    return MultiVector0(; e = ret_)
end
function project(onto::MultiVector1, obj::MultiVector1)
    onto_3 = onto.e3
    onto_2 = onto.e2
    onto_1 = onto.e1
    onto_0 = onto.e0
    obj_3 = obj.e3
    obj_2 = obj.e2
    obj_1 = obj.e1
    obj_0 = obj.e0
    ret_3 = (+)((*)(obj_3, (^)(onto_3, 2)), (*)(obj_1, onto_1, onto_3), (*)(obj_2, onto_2, onto_3))
    ret_2 = (+)((*)(obj_2, (^)(onto_2, 2)), (*)(obj_1, onto_1, onto_2), (*)(obj_3, onto_2, onto_3))
    ret_1 = (+)((*)(obj_1, (^)(onto_1, 2)), (*)(obj_2, onto_1, onto_2), (*)(obj_3, onto_1, onto_3))
    ret_0 = (+)((*)(obj_1, onto_0, onto_1), (*)(obj_2, onto_0, onto_2), (*)(obj_3, onto_0, onto_3))
    return MultiVector1(; e3 = ret_3, e2 = ret_2, e1 = ret_1, e0 = ret_0)
end
function project(onto::MultiVector1, obj::MultiVector2)
    onto_3 = onto.e3
    onto_2 = onto.e2
    onto_1 = onto.e1
    onto_0 = onto.e0
    obj_23 = obj.e23
    obj_13 = obj.e13
    obj_12 = obj.e12
    obj_03 = obj.e03
    obj_02 = obj.e02
    obj_01 = obj.e01
    ret_23 = (+)((*)(obj_23, (+)((^)(onto_2, 2), (^)(onto_3, 2))), (*)(obj_13, onto_1, onto_2), (*)(-1, obj_12, onto_1, onto_3))
    ret_13 = (+)((*)(obj_13, (+)((^)(onto_1, 2), (^)(onto_3, 2))), (*)(obj_12, onto_2, onto_3), (*)(obj_23, onto_1, onto_2))
    ret_12 = (+)((*)(obj_12, (+)((^)(onto_1, 2), (^)(onto_2, 2))), (*)(obj_13, onto_2, onto_3), (*)(-1, obj_23, onto_1, onto_3))
    ret_03 = (+)((*)(obj_03, (^)(onto_3, 2)), (*)(obj_01, onto_1, onto_3), (*)(obj_02, onto_2, onto_3), (*)(obj_13, onto_0, onto_1), (*)(obj_23, onto_0, onto_2))
    ret_02 = (+)((*)(obj_02, (^)(onto_2, 2)), (*)(obj_01, onto_1, onto_2), (*)(obj_03, onto_2, onto_3), (*)(obj_12, onto_0, onto_1), (*)(-1, obj_23, onto_0, onto_3))
    ret_01 = (+)((*)(obj_01, (^)(onto_1, 2)), (*)(obj_02, onto_1, onto_2), (*)(obj_03, onto_1, onto_3), (*)(-1, obj_12, onto_0, onto_2), (*)(-1, obj_13, onto_0, onto_3))
    return MultiVector2(; e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01)
end
function project(onto::MultiVector1, obj::MultiVector3)
    onto_3 = onto.e3
    onto_2 = onto.e2
    onto_1 = onto.e1
    onto_0 = onto.e0
    obj_123 = obj.e123
    obj_023 = obj.e023
    obj_013 = obj.e013
    obj_012 = obj.e012
    ret_123 = (*)(obj_123, (+)((^)(onto_1, 2), (^)(onto_2, 2), (^)(onto_3, 2)))
    ret_023 = (+)((*)(obj_023, (+)((^)(onto_2, 2), (^)(onto_3, 2))), (*)(obj_013, onto_1, onto_2), (*)(obj_123, onto_0, onto_1), (*)(-1, obj_012, onto_1, onto_3))
    ret_013 = (+)((*)(obj_013, (+)((^)(onto_1, 2), (^)(onto_3, 2))), (*)(obj_012, onto_2, onto_3), (*)(obj_023, onto_1, onto_2), (*)(-1, obj_123, onto_0, onto_2))
    ret_012 = (+)((*)(obj_012, (+)((^)(onto_1, 2), (^)(onto_2, 2))), (*)(obj_013, onto_2, onto_3), (*)(obj_123, onto_0, onto_3), (*)(-1, obj_023, onto_1, onto_3))
    return MultiVector3(; e123 = ret_123, e023 = ret_023, e013 = ret_013, e012 = ret_012)
end
function project(onto::MultiVector1, obj::MultiVector4)
    onto_3 = onto.e3
    onto_2 = onto.e2
    onto_1 = onto.e1
    onto_0 = onto.e0
    obj_0123 = obj.e0123
    ret_0123 = (*)(obj_0123, (+)((^)(onto_1, 2), (^)(onto_2, 2), (^)(onto_3, 2)))
    return MultiVector4(; e0123 = ret_0123)
end
function project(onto::MultiVector2, obj::MultiVector0)
    onto_23 = onto.e23
    onto_13 = onto.e13
    onto_12 = onto.e12
    onto_03 = onto.e03
    onto_02 = onto.e02
    onto_01 = onto.e01
    obj_ = obj.e
    ret_ = (+)((*)(obj_, (+)((*)(-1, (^)(onto_12, 2)), (*)(-1, (^)(onto_13, 2)))), (*)(-1, obj_, (^)(onto_23, 2)))
    ret_0123 = (+)((*)(2, obj_, onto_01, onto_23), (*)(-2, obj_, onto_02, onto_13), (*)(2, obj_, onto_03, onto_12))
    return MultiVectorEven(; e = ret_, e0123 = ret_0123)
end
function project(onto::MultiVector2, obj::MultiVector1)
    onto_23 = onto.e23
    onto_13 = onto.e13
    onto_12 = onto.e12
    onto_03 = onto.e03
    onto_02 = onto.e02
    onto_01 = onto.e01
    obj_3 = obj.e3
    obj_2 = obj.e2
    obj_1 = obj.e1
    obj_0 = obj.e0
    ret_3 = (+)((*)(obj_3, (+)((*)(-1, (^)(onto_13, 2)), (*)(-1, (^)(onto_23, 2)))), (*)(obj_1, onto_12, onto_23), (*)(-1, obj_2, onto_12, onto_13))
    ret_2 = (+)((*)(obj_2, (+)((*)(-1, (^)(onto_12, 2)), (*)(-1, (^)(onto_23, 2)))), (*)(-1, obj_1, onto_13, onto_23), (*)(-1, obj_3, onto_12, onto_13))
    ret_1 = (+)((*)(obj_1, (+)((*)(-1, (^)(onto_12, 2)), (*)(-1, (^)(onto_13, 2)))), (*)(obj_3, onto_12, onto_23), (*)(-1, obj_2, onto_13, onto_23))
    ret_0 = (+)((*)(obj_2, onto_01, onto_12), (*)(obj_3, onto_01, onto_13), (*)(obj_3, onto_02, onto_23), (*)(-1, obj_1, onto_02, onto_12), (*)(-1, obj_1, onto_03, onto_13), (*)(-1, obj_2, onto_03, onto_23))
    ret_023 = (+)((*)(obj_1, onto_02, onto_13), (*)(-1, obj_1, onto_01, onto_23), (*)(-1, obj_1, onto_03, onto_12))
    ret_013 = (+)((*)(obj_2, onto_01, onto_23), (*)(obj_2, onto_03, onto_12), (*)(-1, obj_2, onto_02, onto_13))
    ret_012 = (+)((*)(obj_3, onto_02, onto_13), (*)(-1, obj_3, onto_01, onto_23), (*)(-1, obj_3, onto_03, onto_12))
    return MultiVectorAll(; e3 = ret_3, e2 = ret_2, e1 = ret_1, e0 = ret_0, e023 = ret_023, e013 = ret_013, e012 = ret_012)
end
function project(onto::MultiVector2, obj::MultiVector2)
    onto_23 = onto.e23
    onto_13 = onto.e13
    onto_12 = onto.e12
    onto_03 = onto.e03
    onto_02 = onto.e02
    onto_01 = onto.e01
    obj_23 = obj.e23
    obj_13 = obj.e13
    obj_12 = obj.e12
    obj_03 = obj.e03
    obj_02 = obj.e02
    obj_01 = obj.e01
    ret_23 = (+)((*)(-1, obj_23, (^)(onto_23, 2)), (*)(-1, obj_12, onto_12, onto_23), (*)(-1, obj_13, onto_13, onto_23))
    ret_13 = (+)((*)(-1, obj_13, (^)(onto_13, 2)), (*)(-1, obj_12, onto_12, onto_13), (*)(-1, obj_23, onto_13, onto_23))
    ret_12 = (+)((*)(-1, obj_12, (^)(onto_12, 2)), (*)(-1, obj_13, onto_12, onto_13), (*)(-1, obj_23, onto_12, onto_23))
    ret_03 = (+)((*)(-1, obj_12, onto_03, onto_12), (*)(-1, obj_13, onto_03, onto_13), (*)(-1, obj_23, onto_03, onto_23))
    ret_02 = (+)((*)(-1, obj_12, onto_02, onto_12), (*)(-1, obj_13, onto_02, onto_13), (*)(-1, obj_23, onto_02, onto_23))
    ret_01 = (+)((*)(-1, obj_12, onto_01, onto_12), (*)(-1, obj_13, onto_01, onto_13), (*)(-1, obj_23, onto_01, onto_23))
    return MultiVector2(; e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01)
end
function project(onto::MultiVector2, obj::MultiVector3)
    onto_23 = onto.e23
    onto_13 = onto.e13
    onto_12 = onto.e12
    onto_03 = onto.e03
    onto_02 = onto.e02
    onto_01 = onto.e01
    obj_123 = obj.e123
    obj_023 = obj.e023
    obj_013 = obj.e013
    obj_012 = obj.e012
    ret_123 = (+)((*)(obj_123, (+)((*)(-1, (^)(onto_12, 2)), (*)(-1, (^)(onto_13, 2)))), (*)(-1, obj_123, (^)(onto_23, 2)))
    ret_0 = (+)((*)(obj_123, onto_01, onto_23), (*)(obj_123, onto_03, onto_12), (*)(-1, obj_123, onto_02, onto_13))
    ret_023 = (+)((*)(-1, obj_023, (^)(onto_23, 2)), (*)(-1, obj_012, onto_12, onto_23), (*)(-1, obj_013, onto_13, onto_23), (*)(-1, obj_123, onto_02, onto_12), (*)(-1, obj_123, onto_03, onto_13))
    ret_013 = (+)((*)(-1, obj_013, (^)(onto_13, 2)), (*)(obj_123, onto_03, onto_23), (*)(-1, obj_012, onto_12, onto_13), (*)(-1, obj_023, onto_13, onto_23), (*)(-1, obj_123, onto_01, onto_12))
    ret_012 = (+)((*)(-1, obj_012, (^)(onto_12, 2)), (*)(obj_123, onto_01, onto_13), (*)(obj_123, onto_02, onto_23), (*)(-1, obj_013, onto_12, onto_13), (*)(-1, obj_023, onto_12, onto_23))
    return MultiVectorAll(; e123 = ret_123, e0 = ret_0, e023 = ret_023, e013 = ret_013, e012 = ret_012)
end
function project(onto::MultiVector2, obj::MultiVector4)
    onto_23 = onto.e23
    onto_13 = onto.e13
    onto_12 = onto.e12
    onto_03 = onto.e03
    onto_02 = onto.e02
    onto_01 = onto.e01
    obj_0123 = obj.e0123
    ret_0123 = (+)((*)(obj_0123, (+)((*)(-1, (^)(onto_12, 2)), (*)(-1, (^)(onto_13, 2)))), (*)(-1, obj_0123, (^)(onto_23, 2)))
    return MultiVector4(; e0123 = ret_0123)
end
function project(onto::MultiVector3, obj::MultiVector0)
    onto_123 = onto.e123
    onto_023 = onto.e023
    onto_013 = onto.e013
    onto_012 = onto.e012
    obj_ = obj.e
    ret_ = (*)(-1, obj_, (^)(onto_123, 2))
    return MultiVector0(; e = ret_)
end
function project(onto::MultiVector3, obj::MultiVector1)
    onto_123 = onto.e123
    onto_023 = onto.e023
    onto_013 = onto.e013
    onto_012 = onto.e012
    obj_3 = obj.e3
    obj_2 = obj.e2
    obj_1 = obj.e1
    obj_0 = obj.e0
    ret_3 = (*)(-1, obj_3, (^)(onto_123, 2))
    ret_2 = (*)(-1, obj_2, (^)(onto_123, 2))
    ret_1 = (*)(-1, obj_1, (^)(onto_123, 2))
    ret_0 = (+)((*)(obj_2, onto_013, onto_123), (*)(-1, obj_1, onto_023, onto_123), (*)(-1, obj_3, onto_012, onto_123))
    return MultiVector1(; e3 = ret_3, e2 = ret_2, e1 = ret_1, e0 = ret_0)
end
function project(onto::MultiVector3, obj::MultiVector2)
    onto_123 = onto.e123
    onto_023 = onto.e023
    onto_013 = onto.e013
    onto_012 = onto.e012
    obj_23 = obj.e23
    obj_13 = obj.e13
    obj_12 = obj.e12
    obj_03 = obj.e03
    obj_02 = obj.e02
    obj_01 = obj.e01
    ret_23 = (*)(-1, obj_23, (^)(onto_123, 2))
    ret_13 = (*)(-1, obj_13, (^)(onto_123, 2))
    ret_12 = (*)(-1, obj_12, (^)(onto_123, 2))
    ret_03 = (+)((*)(obj_23, onto_013, onto_123), (*)(-1, obj_13, onto_023, onto_123))
    ret_02 = (+)((*)(obj_23, onto_012, onto_123), (*)(-1, obj_12, onto_023, onto_123))
    ret_01 = (+)((*)(obj_13, onto_012, onto_123), (*)(-1, obj_12, onto_013, onto_123))
    return MultiVector2(; e23 = ret_23, e13 = ret_13, e12 = ret_12, e03 = ret_03, e02 = ret_02, e01 = ret_01)
end
function project(onto::MultiVector3, obj::MultiVector3)
    onto_123 = onto.e123
    onto_023 = onto.e023
    onto_013 = onto.e013
    onto_012 = onto.e012
    obj_123 = obj.e123
    obj_023 = obj.e023
    obj_013 = obj.e013
    obj_012 = obj.e012
    ret_123 = (*)(-1, obj_123, (^)(onto_123, 2))
    ret_023 = (*)(-1, obj_123, onto_023, onto_123)
    ret_013 = (*)(-1, obj_123, onto_013, onto_123)
    ret_012 = (*)(-1, obj_123, onto_012, onto_123)
    return MultiVector3(; e123 = ret_123, e023 = ret_023, e013 = ret_013, e012 = ret_012)
end
function project(onto::MultiVector3, obj::MultiVector4)
    onto_123 = onto.e123
    onto_023 = onto.e023
    onto_013 = onto.e013
    onto_012 = onto.e012
    obj_0123 = obj.e0123
    ret_0123 = (*)(-1, obj_0123, (^)(onto_123, 2))
    return MultiVector4(; e0123 = ret_0123)
end
function project(onto::MultiVector4, obj::MultiVector0)
    return MultiVectorZero(; )
end
function project(onto::MultiVector4, obj::MultiVector1)
    return MultiVectorZero(; )
end
function project(onto::MultiVector4, obj::MultiVector2)
    return MultiVectorZero(; )
end
function project(onto::MultiVector4, obj::MultiVector3)
    return MultiVectorZero(; )
end
function project(onto::MultiVector4, obj::MultiVector4)
    return MultiVectorZero(; )
end
function Base.convert(MV::Type{<:MultiVectorAll}, x::MultiVectorAll)
    MV(MultiVectorAll(; e = x.e, e3 = x.e3, e2 = x.e2, e23 = x.e23, e1 = x.e1, e13 = x.e13, e12 = x.e12, e123 = x.e123, e0 = x.e0, e03 = x.e03, e02 = x.e02, e023 = x.e023, e01 = x.e01, e013 = x.e013, e012 = x.e012, e0123 = x.e0123))
end
function Base.convert(MV::Type{<:MultiVectorAll}, x::MultiVectorEven)
    MV(MultiVectorAll(; e = x.e, e23 = x.e23, e13 = x.e13, e12 = x.e12, e03 = x.e03, e02 = x.e02, e01 = x.e01, e0123 = x.e0123))
end
function Base.convert(MV::Type{<:MultiVectorAll}, x::MultiVector0)
    MV(MultiVectorAll(; e = x.e))
end
function Base.convert(MV::Type{<:MultiVectorAll}, x::MultiVector1)
    MV(MultiVectorAll(; e3 = x.e3, e2 = x.e2, e1 = x.e1, e0 = x.e0))
end
function Base.convert(MV::Type{<:MultiVectorAll}, x::MultiVector2)
    MV(MultiVectorAll(; e23 = x.e23, e13 = x.e13, e12 = x.e12, e03 = x.e03, e02 = x.e02, e01 = x.e01))
end
function Base.convert(MV::Type{<:MultiVectorAll}, x::MultiVector3)
    MV(MultiVectorAll(; e123 = x.e123, e023 = x.e023, e013 = x.e013, e012 = x.e012))
end
function Base.convert(MV::Type{<:MultiVectorAll}, x::MultiVector4)
    MV(MultiVectorAll(; e0123 = x.e0123))
end
function Base.convert(MV::Type{<:MultiVectorAll}, x::MultiVectorZero)
    MV(MultiVectorAll(; ))
end
function Base.convert(MV::Type{<:MultiVectorEven}, x::MultiVectorZero)
    MV(MultiVectorEven(; ))
end
function Base.convert(MV::Type{<:MultiVector0}, x::MultiVectorZero)
    MV(MultiVector0(; ))
end
function Base.convert(MV::Type{<:MultiVector1}, x::MultiVectorZero)
    MV(MultiVector1(; ))
end
function Base.convert(MV::Type{<:MultiVector2}, x::MultiVectorZero)
    MV(MultiVector2(; ))
end
function Base.convert(MV::Type{<:MultiVector3}, x::MultiVectorZero)
    MV(MultiVector3(; ))
end
function Base.convert(MV::Type{<:MultiVector4}, x::MultiVectorZero)
    MV(MultiVector4(; ))
end
function Base.convert(MV::Type{<:MultiVectorZero}, x::MultiVectorZero)
    MV(MultiVectorZero(; ))
end
function Base.convert(MV::Type{<:MultiVectorEven}, x::MultiVector0)
    MV(MultiVectorEven(; e = x.e))
end
function Base.convert(MV::Type{<:MultiVectorEven}, x::MultiVector2)
    MV(MultiVectorEven(; e23 = x.e23, e13 = x.e13, e12 = x.e12, e03 = x.e03, e02 = x.e02, e01 = x.e01))
end
function Base.convert(MV::Type{<:MultiVectorEven}, x::MultiVector4)
    MV(MultiVectorEven(; e0123 = x.e0123))
end
