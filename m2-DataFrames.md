+++
title = "m2-DataFrames.md"
hascode = true
tags = ["dataframe", "code", "image"]
+++

# DataFrames

\toc

## manual DataEntry by Arrays

```julia:./m2_1
using DataFrames
A = ["NSHD","SHBS","SBIZ","SST"]
B = [25,14,23,13]
df1 = DataFrame(sch=A,pgms=B)
```

\show{./m2_1}

## manual DataEntry by CSV

```julia:./m2_2
using DataFrames, CSV
df2 = CSV.read(IOBuffer("""
sch2, pgms2
SBIZ, 12
NSHD,14
SHBS, 4
SST, 3
"""),DataFrame, delim=",",ignorerepeated=true)
```

\show{./m2_2}

## import csv files using `CSV.read`

<!-- SchPgms.csv is in the _assets/scripts foldern -->

```julia:./m2_3
using DataFrames, CSV
df3 = CSV.read("_assets/csv/SchPgms.csv", DataFrame)
```

\show{./m2_3}

## `sort` df3 by pgms in descending order

```julia:./m2_4
df4 = sort(df3, :pgms, rev=true)
```

\show{./m2_4}

## choose rows using `filter` 
```julia:./m2_5
filter(:sch => n->n == "NSHD",df4)
```
\show{./m2_5}

## choose rows using `subset`
```julia:./m2_6
subset(df4, :sch => ByRow(==("SST")))
```
\show{./m2_6}

## choose columns using `select`
```julia:./m2_7
select(df4, :pgms)
```
\show{./m2_7}