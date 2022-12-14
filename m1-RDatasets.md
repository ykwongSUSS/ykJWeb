+++
title = "m1-RDatasets.md"
hascode = true
date = Date(2022, 12, 12)
tags = ["data", "syntax", "code"]
+++

# Working with RDatasets

\toc

## iris

```julia:./m11
using Pkg
Pkg.add("RDatasets")
using RDatasets
iris = dataset("datasets","iris")
first(iris, 10)
```

\show{./m11}

## diamonds

```julia:./m12
using RDatasets
diamonds = dataset("ggplot2","diamonds")
first(diamonds, 10)
```

\show{./m12}

## mpg

```julia:./m13
using RDatasets
mpg = dataset("ggplot2","mpg")
first(mpg, 10)
```

\show{./m13}
