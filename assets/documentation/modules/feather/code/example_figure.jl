# This file was generated, do not modify it. # hide
begin # hide
	using GMT   # hide
	GMT.isFranklin[1] = true    # hide
	getpath4docs(file::String) = joinpath("..", "..", "..", "..", "..", file) # hide
	using GMT
GMT.resetGMT()  # hide
feather(getpath4docs("wind_faro.dat"), xvar=:Time, yvar=[:azimuth, :vmean], rtheta=true, nohead=1, lw=0.1, show=true)
end # hide
mv(joinpath(tempdir(), "GMTjl_tmp.png"), joinpath(@OUTPUT, "example_11054124702853069334.png"), force=true);    # hide
GMT.isFranklin[1] = false    # hide
GMT.IamModern[1]  = false    # hide
GMT.gmt_restart()	# hide
 
nothing # hide