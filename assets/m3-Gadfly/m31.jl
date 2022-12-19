# This file was generated, do not modify it. # hide
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