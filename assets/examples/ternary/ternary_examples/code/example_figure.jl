# This file was generated, do not modify it. # hide
begin # hide
	using GMT   # hide
	GMT.isFranklin[1] = true    # hide
	getpath4docs(file::String) = joinpath("..", "..", "..", "..", "..", file) # hide
	using GMT
ternary("@ternary.txt", marker=:p, clockwise=true, 
        frame=(annot=:auto, grid=:a, ticks=:a, alabel="Clay", blabel="Silt", clabel="Sand", suffix=" %"),
        contourf=(annot=10, cont=5), show=true)
end # hide
mv(joinpath(tempdir(), "GMTjl_tmp.png"), joinpath(@OUTPUT, "example_17424713944501600615.png"), force=true);    # hide
GMT.isFranklin[1] = false    # hide
GMT.IamModern[1]  = false    # hide
 
nothing # hide