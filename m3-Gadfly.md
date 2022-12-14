+++
title = "m3-Gadfly.md"
hascode = true
hasoutput = true
+++

# Gadfly

\toc

## 3.1 Bar plots

```julia:./m31
using Pkg
Pkg.add("CSV")
using DataFrames, CSV
df1 = CSV.read(IOBuffer("""
sch,pgms
SBIZ,12
NSHD,14
SHBS,4
SST,3
"""),DataFrame, delim=",",ignorerepeated=true)
```

\show{./m31}

```julia:./m32
dfs = sort(df1,:pgms, rev=true)
```

\show{./m32}

```julia
using Pkg
Pkg.add("Gadfly")
Pkg.add("Colorschemes")
using Gadfly
using Colorschemes
```

> plot the chart to the img\
> then show img

```julia
schPgms = plot(dfs,
x=:sch, y=:pgms,
color=:sch,
Theme(bar_spacing=1mm),
Geom.bar,
Guide.title("No of programs by schools"),
Guide.xlabel("School"),
Guide.ylabel("No of Pgms"),
img = PNG("schPgms.png",14cm, 8cm)
draw(img,schPgms)
```
