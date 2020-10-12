using Pkg
Pkg.activate("..")
using PlayAroundPackage
using Documenter

makedocs(;
    modules=[PlayAroundPackage],
    authors="David Yang",
    repo="https://github.com/yushoteke/PlayAroundPackage.jl/blob/{commit}{path}#L{line}",
    sitename="PlayAroundPackage.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://yushoteke.github.io/PlayAroundPackage.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/yushoteke/PlayAroundPackage.jl",
)
