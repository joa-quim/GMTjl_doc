# Stat plots

## Examples of density plots

\begin{examplefig}{}
```julia
using GMT
density(randn(200), fill=true, show=true)
```
\end{examplefig}

\begin{examplefig}{}
```julia
using GMT
density(randn(200), nbins=20, horizontal=true, fill=true, extend=2, show=true)
```
\end{examplefig}

Expand the density profile with 4 x the set bandwidth, such that it decays to zero.
By lowering the bandwidth we forcing the line to be less smoth.

\begin{examplefig}{}
```julia
using GMT
density(randn(200), fill=:orange, lc=:red, lw=1, bandwidth=0.15, extend=4, show=true)
```
\end{examplefig}

## Box plots

An horizontal boxplot with default colors, displaying outliers as 6p black stars. Noches are
also shown but this requires GMT6.5.

\begin{examplefig}{}
```julia
using GMT
boxplot(randn(50,6), notch=true, fill=true, outliers=(size="6p",), hbar=true, show=1)
```
\end{examplefig}

A plot of three groups of two elements each and where we assign the same color to the elements of each group.

\begin{examplefig}{}
```julia
using GMT
boxplot(randn(50,3,2), boxwidth="20p", notch=true, fill=true, ccolor=true, show=1)
```
\end{examplefig}


## Violin plots

Create a plot with 8 violins colored with the default colors.

\begin{examplefig}{}
```julia
using GMT
violin(randn(100,8), fill=true, show=true)
```
\end{examplefig}

Now add boxplot, scatter and outliers to a plot similar to above. The outliers show as black
stars with a fait gray outline.

\begin{examplefig}{}
```julia
using GMT
violin(randn(100,8), fill=true, boxplot=true, scatter=true, outliers=true, show=true)
```
\end{examplefig}

And a group example with red dashed separator lines and variable level of transparency for each
element in the group. Note that this case uses input data as a Vector{Vector{Vector}}, which more
representative of a real case as each violin is allowed to be made of a different number of observations.

\begin{examplefig}{}
```julia
using GMT
vvv = [[randn(50), randn(30)], [randn(40), randn(48), randn(45)], [randn(35), randn(43)]];
violin(vvv, fill=true, fillalpha=[0.5, 0.7, 0.85], boxplot=true, separator=(:red, :dash),
       scatter=true, outliers=true, show=true)
```
\end{examplefig}

Join the left and right halves of each of the two element in the group.

\begin{examplefig}{}
```julia
using GMT
violin(randn(100,3,2), fill=true, scatter=true, split=true, xticks=["First","Second","Third"], show=true)
```
\end{examplefig}

