# This file was generated, do not modify it. # hide
begin # hide
	using GMT   # hide
	GMT.gmt_restart()	# hide
	GMT.isFranklin[1] = true    # hide
	getpath4docs(file::String) = joinpath("..", "..", "..", "..", "..", file) # hide
	using GMT
    basemap(region=(0,360,0,1000), figsize=10, frame=:afg, proj=:polar, show=true)
end # hide
mv(joinpath(tempdir(), "GMTjl_tmp.png"), joinpath(@OUTPUT, "example_8235165079090378507.png"), force=true);    # hide
GMT.isFranklin[1] = false    # hide
GMT.IamModern[1]  = false    # hide
 
nothing # hide