# This file was generated, do not modify it. # hide
using DataFrames
transform(df3, :, :pgms => ByRow(x -> x+1)=>:pgmsAdd1)