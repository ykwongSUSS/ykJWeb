@def title = "pluto"
@def tags = ["syntax", "code"]

## Using Pluto

> julia> include("jp.jl")\

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
