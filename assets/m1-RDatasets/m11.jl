# This file was generated, do not modify it. # hide
using Pkg
Pkg.add("RDatasets")
using RDatasets
iris = dataset("datasets","iris")
first(iris, 10)