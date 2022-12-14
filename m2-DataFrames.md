+++
title = "m2-DataFrames.md"
hascode = true
tags = ["dataframe", "code", "image"]
+++

# DataFrames

\toc

## manual DataEntry by Arrays

```julia:./m21
using Pkg
Pkg.add("DataFrames")
using DataFrames
A = ["NSHD","SHBS","SBIZ","SST"]
B = [25,14,23,13]
df1 = DataFrame(sch=A,pgms=B)
```

\show{./m21}

## manual DataEntry by CSV

```julia:./m22
using Pkg
Pkg.add("CSV")
using DataFrames, CSV
df2 = CSV.read(IOBuffer("""
sch2, pgms2
SBIZ, 12
NSHD,14
SHBS, 4
SST, 3
"""),DataFrame, delim=",",ignorerepeated=true)
```

\show{./m22}

## import csv files using `CSV.read`

<!-- SchPgms.csv is in the _assets/scripts foldern -->

```julia:./m23
using DataFrames, CSV
df3 = CSV.read("_assets/csv/SchPgms.csv", DataFrame)
```

\show{./m23}

## `sort` df3 by pgms in descending order

```julia:./m24
df4 = sort(df3, :pgms, rev=true)
```

\show{./m24}

## choose rows using `filter`

```julia:./m25
filter(:sch => n->n == "NSHD",df4)
```

\show{./m25}

## choose rows using `subset`

```julia:./m26
subset(df4, :sch => ByRow(==("SST")))
```

\show{./m26}

## choose columns using `select`

```julia:./m27
select(df4, :pgms)
```

\show{./m27}
