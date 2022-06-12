# This file was generated, do not modify it. # hide
begin # hide
    using GMT
x = linspace(0,2π,50);
plot(x, sin.(x), linestyle="Line&I am sinning&", theme=("A2GraphDark"))
#plot(x, sin.(x), linestyle="Line&I am sinning&")
end # hide
showfig(show=false)     # hide
fname_ps = joinpath(tempdir(), "GMTjl_tmp.ps")  # hide
gmt("psconvert -A2p -Qg4 -Qt4 " * fname_ps * " -TG *")  # hide
mv(joinpath(tempdir(), "GMTjl_tmp.png"), joinpath(@OUTPUT, "example_2759625702993944508.png"), force=true);    # hide
 
nothing # hide