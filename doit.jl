using Revise
#import ProjectiveGeometricAlgebra3d.CAS
include("src/cas.jl")
using .CAS: sym_multivector, expr_fundef, SubAll, SubDeg, SubEven, wedge, expr_structdef
using .CAS: expr_structdef, exprs_structdef_batteries
using .CAS: exprs_everything, print_everything

#x = sym_multivector(:xx => SubDeg{1}())
#y = sym_multivector(:yy => SubDeg{1}())
#x*y
#y*x
#x*x

expr_fundef(*, :(Base.:*), :x=>SubAll(), :y=>SubAll())
expr_fundef(*, :(Base.:*), :x=>SubDeg{2}(), :y=>SubDeg{2}())
expr_fundef(wedge, :wedge, :x=>SubDeg{2}(), :y=>SubDeg{2}())

exprs_structdef_batteries(SubEven())
#exprs_everything()
print_everything(stdout)
open("src/auto.jl", "w") do io
    print_everything(io)
end
