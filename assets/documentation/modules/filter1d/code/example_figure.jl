# This file was generated, do not modify it. # hide
begin # hide
	using GMT   # hide
	GMT.isFranklin[1] = true    # hide
	getpath4docs(file::String) = joinpath("..", "..", "..", "..", "..", file) # hide
	using GMT
D = filter1d("@MaunaLoa_CO2.txt", filter=(type=:gauss, width=5));
plot("@MaunaLoa_CO2.txt", legend="Raw data")
plot!(D, lc=:blue, legend="Filtered", show=1)
end # hide
mv(joinpath(tempdir(), "GMTjl_tmp.png"), joinpath(@OUTPUT, "example_2020691343859715339.png"), force=true);    # hide
GMT.isFranklin[1] = false    # hide
GMT.IamModern[1]  = false    # hide
 
nothing # hide