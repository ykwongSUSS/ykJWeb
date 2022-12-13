@def title = "pluto"
@def tags = ["syntax", "code"]
# Using Pluto
1. I use Pluto for my Julia code

## Installing Pluto
1. Start Julia with the Julia terminal icon (three circles)
1. Run the julia script `include("jp.jl")` found in `/Users/ykwong`
> julia> include("jp.jl")\
3. The script shown below changes the current directory to `/myPluto`

### jp.jl

> cd("myPluto")\
> using Pkg\
> Pkg.add("Pluto")\
> using Pluto\
> Pluto.run()\
