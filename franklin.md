@def title = "Franklin.md"
@def tags = ["syntax", "code"]

# Franklin (Static Site Generator)

I use Franklin to build this website.

Refer YouTube: [Intro to Franklin, a Julia Static Site Generator](https://www.youtube.com/watch?v=fVBiLEtZB7A)

### Franklin Workflow:

1. Open VSCode. Open julia-Franklin workspace.
1. Activate Julia extension on VSCode `alt-j`, `alt-o`
1. cd("`/Users/ykwong/myJulia/julia-Franklin/ykWeb/ykJWeb`")
1. julia> add Franklin from pkg>
1. julia> using Franklin
1. if newsite then create `ykJWeb` website using a Franklin template
1. if not newsite then `activate .` from directory and `serve()`
1. Edit html files from VSCode
1. http live-server on VSCode

### Create NewSite using Franklin from Terminal

1. `alt-j`, `alt-o` to get julia prompt in VSCode-Terminal

   > julia> pwd()\
   > julia> "/Users/ykwong/myJulia/julia-Franklin

2. make a directory for all the websites files

   > julia> mkdir("ykWeb")\
   > julia> cd("ykWeb")

3. Add the Franklin package
   > julia> ]\
   > pkg> add Franklin\
   > julia> using Franklin

### Create and serve newsite

1. Create a newsite if first-time; use jemdoc template

   > julia> newsite("ykJWeb"; template="jemdoc")

1. Else cd current directory to be ykJWeb
   > pkg>activate . #impt to activate in this directory\
   > julia>serve() #serve() again if localhost stops

### Restart and Edit ykJWeb

1. Restart VSCode-Julia
   > julia> cd("Users/ykwong/myJulia/julia-Franklin/ykWeb/ykJWeb")\
   > pkg> activate . \
   > julia> serve()
