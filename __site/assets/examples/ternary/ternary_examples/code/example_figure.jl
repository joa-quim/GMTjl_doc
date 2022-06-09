# This file was generated, do not modify it. # hide
begin # hide
    using GMT
ternary("@ternary.txt", marker=:p, clockwise=true, 
        frame=(annot=:auto, grid=:a, ticks=:a, alabel="Clay", blabel="Silt", clabel="Sand", suffix=" %"),
        contourf=(annot=10, cont=5))
end # hide
showfig(show=false)     # hide
fname_ps = joinpath(tempdir(), "GMTjl_tmp.ps")  # hide
gmt("psconvert -A2p -Qg4 -Qt4 " * fname_ps * " -TG *")  # hide
mv(joinpath(tempdir(), "GMTjl_tmp.png"), joinpath(@OUTPUT, "example_4058625638966842611.png"), force=true);    # hide
 
nothing # hide