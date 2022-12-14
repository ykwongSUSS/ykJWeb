# This file was generated, do not modify it. # hide
using DataFrames, CSV
df2 = CSV.read(IOBuffer("""
sch2, pgms2
SBIZ, 12
NSHD,14
SHBS, 4
SST, 3
"""),DataFrame, delim=",",ignorerepeated=true)