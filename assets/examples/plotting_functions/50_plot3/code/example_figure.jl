# This file was generated, do not modify it. # hide
begin # hide
	using GMT   # hide
	GMT.gmt_restart()	# hide
	GMT.isFranklin[1] = true    # hide
	getpath4docs(file::String) = joinpath("..", "..", "..", "..", "..", file) # hide
	using GMT
D = gmtread(getpath4docs("track_sample_data.txt"), incols="7,6,3");
plot3d(D, lc=:gradient, lt=[1,5], par=(PS_LINE_CAP="round",), show=true)
end # hide
mv(joinpath(tempdir(), "GMTjl_tmp.png"), joinpath(@OUTPUT, "example_3219841358462090063.png"), force=true);    # hide
GMT.isFranklin[1] = false    # hide
GMT.IamModern[1]  = false    # hide
 
nothing # hide