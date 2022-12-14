# This file was generated, do not modify it. # hide
using Pkg
Pkg.add("DataFrames")
using DataFrames
A = ["NSHD","SHBS","SBIZ","SST"]
B = [25,14,23,13]
df1 = DataFrame(sch=A,pgms=B)