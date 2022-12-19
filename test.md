

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

\fig{./output/schPgms.png}

## 3.2 Line plots

## 3.3 Annotations
