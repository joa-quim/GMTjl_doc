# This file was generated, do not modify it. # hide
begin # hide
    using GMT
x = linspace(0,2π,50);
#plot(x, sin.(x), linestyle="Line&I am sinning&", theme=("A2GraphDark"))
#GMT.theme_modern()      # Need this to reset the theme untill a more elegant solution is implemented
plot(x, sin.(x), linestyle="Line&I am sinning&")
end # hide
showfig(show=false)     # hide
fname_ps = joinpath(tempdir(), "GMTjl_tmp.ps")  # hide
gmt("psconvert -A2p -Qg4 -Qt4 " * fname_ps * " -TG *")  # hide
GMT.current_cpt[1] = GMT.GMTcpt()   # hide
mv(joinpath(tempdir(), "GMTjl_tmp.png"), joinpath(@OUTPUT, "example_6784676844636227723.png"), force=true);    # hide
 
nothing # hide