# This file was generated, do not modify it. # hide
begin # hide
    using GMT
coast(region=:g, proj=:VanderGrinten, xaxis=(grid=30,), yaxis=(grid=15,),
      land=:lightgray, water=:cornsilk, area=10000, shore=:thinnest, title="Van der Grinten")
end # hide
showfig(show=false)     # hide
fname_ps = joinpath(tempdir(), "GMTjl_tmp.ps")  # hide
gmt("psconvert -A2p -Qg4 -Qt4 " * fname_ps * " -TG *")  # hide
GMT.current_cpt[1] = GMT.GMTcpt()   # hide
mv(joinpath(tempdir(), "GMTjl_tmp.png"), joinpath(@OUTPUT, "example_2972793157560073227.png"), force=true);    # hide
 
nothing # hide