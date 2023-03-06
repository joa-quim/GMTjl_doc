# This file was generated, do not modify it. # hide
begin # hide
	using GMT   # hide
	GMT.isFranklin[1] = true    # hide
	getpath4docs(file::String) = joinpath("..", "..", "..", "..", "..", file) # hide
	using GMT

basemap(region=(0,40,50,56), proj=:Mercator, figsize=13,
        map_scale=(anchor=:ML, scale_at_lat=53, length="1000k", label="Scale at 53@.N", fancy=true),
        box=(fill=:lightcyan, clearance=0, pen=1))

basemap!(map_scale=(anchor=:BR, scale_at_lat=53, length="1000k", label=true, fancy=true),
        box=(fill=:white, clearance=0.25, pen=1, inner=true), show=true)
end # hide
mv(joinpath(tempdir(), "GMTjl_tmp.png"), joinpath(@OUTPUT, "example_15568354827904356565.png"), force=true);    # hide
GMT.isFranklin[1] = false    # hide
GMT.IamModern[1]  = false    # hide
 
nothing # hide