using ProjectiveGeometricAlgebra3d
using Documenter

DocMeta.setdocmeta!(ProjectiveGeometricAlgebra3d, :DocTestSetup, :(using ProjectiveGeometricAlgebra3d); recursive=true)

makedocs(;
    modules=[ProjectiveGeometricAlgebra3d],
    authors="Jan Weidner <jw3126@gmail.com> and contributors",
    repo="https://github.com/jw3126/ProjectiveGeometricAlgebra3d.jl/blob/{commit}{path}#{line}",
    sitename="ProjectiveGeometricAlgebra3d.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://jw3126.github.io/ProjectiveGeometricAlgebra3d.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/jw3126/ProjectiveGeometricAlgebra3d.jl",
)
