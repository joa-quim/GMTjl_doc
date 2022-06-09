# Contours

## Examples

### Simple contours

Contours are created with grdcontourgrdcontourgrdcontour that takes a grid as input (or a GMTgrid data type).
This example shows uses the peaks function to create a classical example. Note, however, that the memory
consumption in this example, when creating the plot, is much lower than traditional likewise examples because
we will be using only one 2D array instead of 3 3D arrays (ref). In the example cont=1 and annot=2 means draw
contours at every 1 unit of the G grid and annotate at every other contour line. axes="a" means pick a default
automatic annotation and labeling for the axes.

\begin{examplefig}{}
```julia
using GMT
G = GMT.peaks();
grdcontour(G, cont=1, annot=2)
```
\end{examplefig}

### Colored contours

To make colored contours we need to generate a color map and use it. Notice that we must specify a pen attribute
to get the colored contours because pen specifications are always set separately. Here we will create first a
colormap with makecpt that will from -6 to 8 with steps of 1. These values are picked up after the z values of the G grid. 

\begin{examplefig}{}
```julia
using GMT
cpt = makecpt(range=(-6,8,1));      # Create the color map
grdcontour(G, pen=(colored=true,))
```
\end{examplefig}

### Contourf examples

GMT does not actually have a contourf module like Matlab for example, but we can obtain the same result
using grdview, grdcontour and pscontour. However, to make things the Julia wrapper wrapped up a module
called contourf that makes it really easy to use. To show how it works let's start by creating an example
grid and a CPT.

\begin{examplefig}{}
```julia
using GMT
G = GMT.peaks();
C = makecpt(T=(-7,9,2));
contourf(G, C)
```
\end{examplefig}

If we want to just draw some contours and not annotate them, we pass an array with the contours to be drawn.

\begin{examplefig}{}
```julia
using GMT
G = GMT.peaks();
C = makecpt(T=(-7,9,2));
contourf(G, C, contour=[-2, 0, 2, 5])
```
\end{examplefig}

### Contours from x,y,z

This example uses synthetic data.

\begin{examplefig}{}
```julia
using GMT
d = [0 2 5; 1 4 5; 2 0.5 5; 3 3 9; 4 4.5 5; 4.2 1.2 5; 6 3 1; 8 1 5; 9 4.5 5];
contourf(d, limits=(-0.5,9.5,0,5), pen=0.25, labels=(line=(:min,:max),))
```
\end{examplefig}

In the above since we did not specify a CPT the program picked the GMT's default one. But if we want use
another one it's only a question of creating and passed it in.

\begin{examplefig}{}
```julia
using GMT
cpt = makecpt(range=(0,10,1), cmap=:batlow);
contourf(d, contours=cpt, limits=(-0.5,9.5,0,5), pen=0.25, labels=(line=(:min,:max),))
```
\end{examplefig}