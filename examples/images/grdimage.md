## Color images

Color images are made with ``grdimage`` which takes the usual common options and a color map.
It operates over grids or images. The next example shows how to create a color appropriate for
the grid's *z* range, plot the image and add a color scale. We use here the ``data`` keyword
to tell the program to load the grid from a file. The ``@`` before the *tut_relief.nc* file
name instructs GMT to download the file from its server on the first usage and save it in a
cache dir. See the [`GMT tuturial`](http://docs.generic-mapping-tools.org/latest/GMT_Tutorial.html#color-images)
for more details about what the arguments mean.

\begin{examplefig}{}
```julia
using GMT
topo = makecpt(color=:rainbow, range=(1000,5000,500), continuous=true);
grdimage("@tut_relief.nc", shade=(azimuth=100, norm="e0.8"), proj=:Mercator, frame=:a, color=topo)
colorbar!(pos=(outside=:TC,length=(12.5,0.6), horizontal=true, offset=(0,1.0)),
          color=topo, frame=(ylabel=:m,))
```
\end{examplefig}


## Perspective view

We will make a perspective, color-coded view of the US Rockies from the southeast.


\begin{examplefig}{}
```julia
using GMT
topo = makecpt(color=:rainbow, range=(1000,5000,500), continuous=true);
grdview("@tut_relief.nc", proj=:Mercator, zsize=1, shade=(azim=100, norm="e0.8"), view=(135,30),
        frame=:a, Q="i100")
```
\end{examplefig}