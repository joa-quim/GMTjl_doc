# Art

## Examples

### Filled flower with pattern

Draw a flower filled from a pattern in a .jpg file.

<!-- -->
\begin{examplefig}{}
```julia
using GMT

t = GMT.linspace(0,2pi,360);
x = cos.(4*t) .* cos.(t);
y = cos.(4*t) .* sin.(t);

lines([-0.7 -0.25 0], [-1.5 -0.8 0], # The flower stem
      limits=(-1,1,-1.5,1),          # Fig limits
      lw=9,                          # Stem's line width in points
      lc=:darkgreen,                 # Stem's line color
      bezier=true,                   # Smooth the stem polyne as a Bezier curve
      figsize=(14,0),                # Fig size. Second arg = 0 means compute the height keeping aspect ratio
      frame=:none)                   # Do not plot the frame
plot!(x, y,
      fill=(pattern=getpath4docs("tiling2.jpg"),  # Fill pattern file
      dpi=200), show=true)           # The pattern DPI
```
\end{examplefig}

### A matchbox car

A imitation of the original car made by @cormullion in this [Julia forum post](https://discourse.julialang.org/t/for-loops-in-luxor/54197/11)

\begin{examplefig}{}
```julia
using GMT, GMT.Drawing

ellipse(300,201,0, 200, 50, units=:points, first=true, fill=:purple, pen=1);
ellipse(340,206, 0,130, 66, fill=:purple, pen=1);
ellipse(318,222,0, 60, 26, fill=:blue);
box(200, 173, 205, 26, fill=:purple, pen=1);
circle(305,185,56, fill=:black);
circle(305,185,36, fill=:gray50);
circle(400,185,56, fill=:black);
circle(400,185,36, fill=:gray50, fmt=:png, show=true);
```
\end{examplefig}
