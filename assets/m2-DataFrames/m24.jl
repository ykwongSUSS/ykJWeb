# This file was generated, do not modify it. # hide
using DataFrames, CSV
df2 = CSV.read("_assets/csv/SchPgms.csv", DataFrame)
df3 = sort(df2, :pgms, rev=true)