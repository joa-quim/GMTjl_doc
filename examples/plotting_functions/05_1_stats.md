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


## Q-Q plots

Test if *x* and *y* follow the same distribution.

\begin{examplefig}{}
```julia
using GMT
qqplot(randn(100), randn(100), qqline=:identity, show=true)
```
\end{examplefig}

Test if *x* is normally distributed. the :fitrobust default line passes through the 1st and 3rd
quartiles of the distribution

\begin{examplefig}{}
```julia
using GMT
qqnorm(randn(200), qqline=:fitrobust, show=true)
```
\end{examplefig}


## ECDF plot

\begin{examplefig}{}
```julia
using GMT
ecdfplot(randn(100), show=true)
```
\end{examplefig}

## Parallel plots

See docs in \myreflink{parallelplot}

Create a parallel plot using the measurement data in `iris.dat`. Use a different color for each group as
identified in species, and label the horizontal axis using the variable names.

\begin{examplefig}{}
```julia
using GMT
parallelplot(getpath4docs("iris.dat"), groupvar="text", normalize="none", legend=true, show=true)
```
\end{examplefig}

Plot only the median, 25 percent, and 75 percent quartile values for each group identified in species.
Label the horizontal axis using the variable names.

\begin{examplefig}{}
```julia
using GMT
parallelplot(getpath4docs("iris.dat"), groupvar="text", quantile=0.25, legend=true, show=true)
```
\end{examplefig}

Plot bands enveloping the +- 25% percentil arround the median.

\begin{examplefig}{}
```julia
using GMT
parallelplot(getpath4docs("iris.dat"), groupvar="text", band=true, legend=true, show=true)
```
\end{examplefig}