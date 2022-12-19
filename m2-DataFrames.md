+++
title = "m2-DataFrames.md"
hascode = true
tags = ["dataframe", "code", "image"]
+++

# DataFrames

\toc

## 1. Data Entry

### 1.1 manual DataEntry by Arrays

```julia:./m21
using Pkg
Pkg.add("DataFrames")
using DataFrames
A = ["NSHD","SHBS","SBIZ","SST"]
B = [25,14,23,13]
df = DataFrame(sch=A,pgms=B)
```

\show{./m21}

### 1.2 manual DataEntry by CSV.read(IOBuffer)

```julia:./m22
using Pkg
Pkg.add("CSV")
using DataFrames, CSV
df1 = CSV.read(IOBuffer("""
sch, pgms
SBIZ, 12
NSHD,14
SHBS, 4
SST, 3
"""),DataFrame, delim=",",ignorerepeated=true)
```

\show{./m22}

## 2. import csv files using `CSV.read`

<!-- SchPgms.csv is in the _assets/scripts foldern -->

```julia:./m23
using DataFrames, CSV
df2 = CSV.read("_assets/csv/SchPgms.csv", DataFrame)
```

\show{./m23}

## 3. Sort df

### 3.1 `sort` df3 by pgms in descending order

```julia:./m24
using DataFrames, CSV
df2 = CSV.read("_assets/csv/SchPgms.csv", DataFrame)
df3 = sort(df2, :pgms, rev=true)
```

\show{./m24}

## 4. Rows and Columns

### 4.1 choose rows using `filter`

(\* special case: the df appears at the end)

```julia:./m25
using DataFrames
filter(:sch => n -> n=="NSHD",df4)
```

\show{./m25}

### 4.2 choose rows using `subset`

(this is better, consistent df, consistent ByRow)

```julia:./m26
subset(df3, :sch => ByRow(==("SST")))
```

\show{./m26}

### 4.3 choose columns using `select`

```julia:./m27
using DataFrames
select(df3, :pgms)
```

\show{./m27}

## 5. Transform

### add new column

```julia:./m28
using DataFrames
transform(df3,:, :pgms => ByRow(x -> x+1)=>:pgmsAdd1)
```

\show{./m28}
