@def title = "Franklin"
@def tags = ["syntax", "code"]

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