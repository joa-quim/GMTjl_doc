# Color map Hinges


The CPTs distributed with GMT are dynamic. This means they have several special properties that modify
the behavior of programs that use them. Dynamic CPTs comes in a few different flavors: Some CPTs were
designed to behave differently across a **hinge** value (e.g., a CPT designed specifically for topographic
relief may include a discontinuity in color across the coastline at z = 0), and when users select these
CPTs they will be stretched to fit the user’s desired data range separately for each side of this *hard*
**hinge**. Basically, a hard hinge CPT is the juxtaposition of two different CPTs joined at the hinge
and these sections are stretched independently.

In the figure bellow the top color bar is a dynamic master CPT (here, globe) with a hard hinge at sea
level and a natural range from -10,000 to +10,000 meters. However, our data range is asymmetrical,
going from -8,000 meter depths up to +3,000 meter elevations. Because of the hinge, the two sides of the
CPT will be stretched separately to honor the desired range while utilizing the full color range.

\begin{examplefig}{}
```julia
using GMT

C = makecpt(cmap=:globe, range=(-8000,3000));
colorbar(pos=(paper=true, anchor=(0,0), size=(11.5, 0.25), horizontal=true))
colorbar!(cmap=:globe, frame=:auto, yshift=1.3,
          pos=(paper=true, anchor=(0,0), size=(11.5, 0.25), horizontal=true))
plot!([5.75 0.25 90 0.5], region=(0,11.5,0,2.5), figscale=1, proj=:linear,
      symbol="v0.25+a80+b", frame=:none, pen=1, fill=:black)
text!(text_record([5.7 0.9],["HINGE"]), font=12, justify=:CB)
```
\end{examplefig}
