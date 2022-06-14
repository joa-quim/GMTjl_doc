## Labeled and non-equidistant color legends

Things become a bit more complicated when we want to label the legend with names for certain
intervals (like geological time periods in the example below). To accomplish that, one should
currently do a hack and add the labels manually in the CGMTcpt fields `label` and `key`, and
add the `equal_size` option to the colorbar command that draws the color legend. This option
also makes all intervals in the legend of equal length, even it the numerical values are not equally spaced.

Normally, the name labels are plotted at the lower end of the intervals. But by adding a gap amount
(even when zero) to the -L option, they are centered. The example below also shows how to annotate
ranges using `equal_size=(range=true,)` (in which case no name labels should appear in the CPT),
and how to switch the color bar around (by using a negative length).


\begin{examplefig}{}
```julia
using GMT

C = makecpt(cmap=((197,0,255),(81,0,255),(0,35,255),(0,151,255),(0,255,244),(0,255,127),(0,255,11),
                  (104,255,0),(220,255,0),(255,174,0),(255,58,0)),
            T=[0,23,66,146,200,251,299,359,416,444,488,542]);
# Add the labels for the periods 
C.label = C.key = ["Neogene", "Paleogene", "Cretaceous", "Jurassic", "Triassic", "Permian",
                   "Carboniferous", "Devonian", "Silurian", "Ordovician", "Cambrian;Precambrian"];

colorbar(pos=(paper=true,  anchor=(0,13),  size=(-8,0.5), justify=:ML, triangles=:f), B=:none)
colorbar!(pos=(paper=true, anchor=(4,13),  size=(-8,0.5), justify=:ML, triangles=:f),
          B=:none, equal_size=true)
colorbar!(pos=(paper=true, anchor=(8,13),  size=(-8,0.5), justify=:ML, triangles=:f),
          B=:none, equal_size=(gap=0,))
colorbar!(pos=(paper=true, anchor=(12,13), size=(-8,0.5), justify=:ML, triangles=:f),
          B=:none, equal_size=(gap=0.1,))
colorbar!(pos=(paper=true, anchor=(16,13), size=(08,0.5), justify=:ML, triangles=:f),
          B=:none, equal_size=true)
colorbar!(pos=(paper=true, anchor=(20,13), size=(08,0.5), justify=:ML, triangles=:f),
          B=:none, equal_size=(gap=0.1,))

# Remove the labels so that we can plot the ages
C.label = C.key = fill("", length(C.label));

colorbar!(pos=(paper=true, anchor=(0,4),  size=(08,0.5), justify=:ML, triangles=:f), B=:none)
colorbar!(pos=(paper=true, anchor=(4,4),  size=(-8,0.5), justify=:ML, triangles=:f),
          B=:none, equal_size=true)
colorbar!(pos=(paper=true, anchor=(8,4),  size=(-8,0.5), justify=:ML, triangles=:f),
          B=:none, equal_size=(gap=0,))
colorbar!(pos=(paper=true, anchor=(12,4), size=(-8,0.5), justify=:ML, triangles=:f),
          B=:none, equal_size=(gap=0.1,))
colorbar!(pos=(paper=true, anchor=(16,4), size=(-8,0.5), justify=:ML, triangles=:f),
          B=:none, equal_size=(range=true,))
colorbar!(pos=(paper=true, anchor=(20,4), size=(-8,0.5), justify=:ML, triangles=:f),
          B=:none, equal_size=(range=true, gap=0.1))
```
\end{examplefig}