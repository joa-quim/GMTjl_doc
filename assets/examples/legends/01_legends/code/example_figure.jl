# This file was generated, do not modify it. # hide
try     # hide
begin # hide
    using GMT   # hide
    GMT.isFranklin[1] = true    # hide
    using GMT
gmtbegin()
	plot("@Table_5_11.txt", region=[0., 7.2, 3, 7.2], figscale=2, pen=(1.5, :gray),
	     legend="Branch lines", frame=:a)
	plot("@Table_5_11.txt", marker=:circle, markersize=0.35, markercolor="lightgreen",
	     markerline="faint", legend="Apples")
	plot("@Table_5_11.txt", marker=:triangle, ms=0.35, fill="orange", legend="Oranges")
	legend(position=(inside=:TR, width=3, offset=0.25), box=(pen=1, fill="gray95", shaded=true))
gmtend(:show)
end # hide
mv(joinpath(tempdir(), "GMTjl_tmp.png"), joinpath(@OUTPUT, "example_14577980894840960975.png"), force=true);    # hide
catch   # hide
end     # hide
GMT.isFranklin[1] = false    # hide
GMT.IamModern[1]  = false    # hide
 
nothing # hide