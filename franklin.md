@def title = "Franklin"
@def tags = ["syntax", "code"]

# Franklin (Static Site Generator)

I use Franklin to build this website.

### Franklin Requirements:

1. Julia extension on VSCode `alt-j`, `alt-o`
1. using Franklin from Julia
1. create `ykJWeb` website from Franklin
1. Edit html files from VSCode
1. http live-server on VSCode

### Create NewSite using Franklin from Terminal

1. `alt-j`, `alt-o` to get julia prompt in VSCode-Terminal
> julia> pwd()\
> julia> "/Users/ykwong/myJulia"

2. make a directory for all the websites files
> julia> mkdir("ykWeb")\
> julia> cd("ykWeb")

3. Add the Franklin package
> julia> ]\
> pkg> add Franklin\
> pkg> status

### Create and serve newsite

> julia> using Franklin\
> julia> newsite("ykJWeb"; template="jemdoc") 

1. current directory is ykJWeb
> pkg>activate . #impt to activate in this directory\
> julia>serve() #serve() again if localhost stops

### Restart and Edit ykJWeb

1. Restart VSCode-Julia
> julia> cd("Users/ykwong/myJulia/ykWeb/ykJWeb")\
> pkg> activate . #impt\
> julia> serve()
