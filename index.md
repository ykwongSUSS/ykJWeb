@def title = "ykJWeb"
@def tags = ["syntax", "code"]

# Installation and Packages
\toc

## Julia prompt
> julia> ]\
> pkg>

>julia> pwd()\
>julia> mkdir()\
>julia> cd("myPluto")\
>julia> readdir()\

## Using Pluto
>julia> include("jp.jl")\
1. I use Pluto for my Julia code.
1. Start Julia with the Julia terminal icon (three circles)
1. Run the julia script `include("jp.jl")`
1. This script is found in `/Users/ykwong`
1. current directory changes to /myPluto
### jp.jl
> cd("myPluto")\
> using Pkg\
> Pkg.add("Pluto")\
> using Pluto\
> Pluto.run()\

## Using Franklin
> dir: /myJulia
1. For now, we use VSCode and Franklin to generate this website. There is a great tutorial on youTube: [www.youtube.com/watch?v=fVBiLEtZB7A](https://www.youtube.com/watch?v=fVBiLEtZB7A)
1. Once we setup the website (using Franklin theme: `jemdoc`), we reproduce it from VSCode to Github Desktop
1. We then link the github Desktop to github.com for synchronization

### Required:
1. julia extension on VSCode `alt-j`, `alt-o`
2. http live-server on VSCode
3. Franklin addin package to Julia
4. Operate from Terminal

### Starting Julia from Terminal
1. `alt-j`, `alt-o`
1. pwd() to check current directory
1. This readme.md file is here: "/Users/ykwong/myJulia/julia-Franklin"
1. If new: mkdir for website folder ykWeb
1. cd("ykWeb")
1. julia> ]
1. pkg> add Franklin
1. pkg> status
### Create and serve newsite
1. julia> `using Franklin`
1. `newsite("ykJWeb"; template="jemdoc")`
1. current directory is ykJWeb
1. pkg> `activate .` #impt: to activate at this directory
1. julia> `serve()`  # then can use serve() if stopped
### Serving from another web
1. cd("../SandBox")
1. `pwd()` to make sure in the sandbox web directory
1. pkg> `activate .` #impt: to activate at this directory
1. julia> `serve()`
