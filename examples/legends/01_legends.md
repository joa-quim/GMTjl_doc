# Legends

### Apples & Oranges

The `legend` method can automatically create a legend for symbols plotted using \myreflink{plot}.
Legend entries are only created when the `legend` option is used.

\begin{examplefig}{}
```julia
using GMT
gmtbegin()
	plot("@Table_5_11.txt", region=[0., 7.2, 3, 7.2], figscale=2, pen=(1.5, :gray),
	     legend="Branch lines", frame=:a)
	plot("@Table_5_11.txt", marker=:circle, markersize=0.35, markercolor="lightgreen",
	     markerline="faint", legend="Apples")
	plot("@Table_5_11.txt", marker=:triangle, ms=0.35, fill="orange", legend="Oranges")
	legend(position=(inside=:TR, width=3, offset=0.25), box=(pen=1, fill="gray95", shaded=true))
gmtend(:show)
```
\end{examplefig}

