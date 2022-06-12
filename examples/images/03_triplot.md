# Triplot

{{doc triplot}}

## Delaunay triangulation

\begin{examplefig}{}
```julia
using GMT
triplot(rand(5,3), lc=:red, title="Delaunay")
```
\end{examplefig}

## Voronoi cells

Create and plot a Delaunay triangulation from a set of 2-D points.

\begin{examplefig}{}
```julia
using GMT
triplot(rand(5,2), voronoi=true, title="Voronoi")
```
\end{examplefig}