using Revise
using Pkg
if !isdefined(@__MODULE__, :CAS)
    pkg"""
    activate codegen
    """
end
module M
include("codegen/cas.jl")
using .CAS: sym_multivector, expr_fundef, SubAll, SubDeg, SubEven, wedge, expr_structdef
using .CAS: expr_structdef, exprs_structdef_batteries
using .CAS: exprs_everything, print_everything

#x = sym_multivector(:xx => SubDeg{1}())
#y = sym_multivector(:yy => SubDeg{1}())
#x*y
#y*x
#x*x

#print_everything(stdout)
open("src/auto.jl", "w") do io
    print_everything(io)
end

end
