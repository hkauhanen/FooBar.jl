using FooBar
using Documenter

DocMeta.setdocmeta!(FooBar, :DocTestSetup, :(using FooBar); recursive=true)

makedocs(;
    modules=[FooBar],
    authors="hkauhanen <nenahuak@gmail.com> and contributors",
    repo="https://github.com/hkauhanen/FooBar.jl/blob/{commit}{path}#{line}",
    sitename="FooBar.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://hkauhanen.github.io/FooBar.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/hkauhanen/FooBar.jl",
    devbranch="main",
)
