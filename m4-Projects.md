+++
title = "m4-Projects.md"
+++

# Projects

\toc

## KikoWeights
### Enter KikoWeights
```julia:./m4-1
using DataFrames, CSV, Dates
df1 = CSV.read(IOBuffer("""
date,kg
2020-08-20,4.8
2020-09-20,5.5
2020-10-12,6.8
2020-11-03,7.3
2020-12-26,8.3
2021-01-08,8.5
2021-02-22,9.1
2021-03-28,9.7
2021-04-17,10.1
2021-08-02,10.5
2022-01-21,11.3
2022-12-12,12.1
"""),DataFrame,delim=",")
```

\show{./m4-1}

### Add an Age column



## Grades

## iSGWeb Summaries
