# Subplots

See \myreflink{subplot} docs

### Geo Tic-Tac-Toe

\begin{examplefig}{}
```julia
using GMT
subplot(grid="3x3", dims=(panels=(5,),divlines=(1,:dashed)), axes=(axes=:lrbt,), margins=0);
    coast(region=:global, proj=(name=:Ortho, center=(30 ,30)), land=:red, B=:g, panel=(1,1));
    coast(region=:global, proj=(name=:Ortho, center=(120,30)), land=:red, B=:g, panel=(2,2));
    coast(region=:global, proj=(name=:Ortho, center=(210,30)), land=:red, B=:g, panel=(3,3));
subplot(:show)
```
\end{examplefig}

### Side histograms

\begin{examplefig}{}
```julia
using GMT
subplot(grid="2x2", dims=(size=(15,15), frac=((10,5),(5,10))),
        col_axes=true, row_axes=true)
n = 200;
x, y, color = randn(n)/2, randn(n), randn(n);
histogram(x, limits=(-4,4,0,40), binmethod="sqrt", panel=(1,1));
scatter(x,y, limits=(-4,4,-4,4), marker=:circ, ms="10p", zcolor=color, panel=(2,1));
histogram(x, limits=(-4,4,0,40), horizontal=true, binmethod="sqrt", panel=(2,2), show=true);
```
\end{examplefig}
