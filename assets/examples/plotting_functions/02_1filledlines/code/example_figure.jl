# This file was generated, do not modify it. # hide
begin # hide
	using GMT   # hide
	GMT.gmt_restart()	# hide
	GMT.isFranklin[1] = true    # hide
	getpath4docs(file::String) = joinpath("..", "..", "..", "..", "..", file) # hide
	using GMT
D = gmtread(getpath4docs("1635541200000.dat"));
D.attrib["Timecol"] = "1";         # Inform that first column has Time
fill_between(D, figsize=(16,9), yaxis=(annot=20,), theme="A0XYag", show=true)
end # hide
mv(joinpath(tempdir(), "GMTjl_tmp.png"), joinpath(@OUTPUT, "example_14370248663441072830.png"), force=true);    # hide
GMT.isFranklin[1] = false    # hide
GMT.IamModern[1]  = false    # hide
 
nothing # hide