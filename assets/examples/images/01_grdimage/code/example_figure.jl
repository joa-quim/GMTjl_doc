# This file was generated, do not modify it. # hide
begin # hide
    using GMT
topo = makecpt(color=:rainbow, range=(1000,5000,500), continuous=true);
grdimage("@tut_relief.nc", shade=(azimuth=100, norm="e0.8"), proj=:Mercator, frame=:a, color=topo)
colorbar!(pos=(outside=:TC,length=(12.5,0.6), horizontal=true, offset=(0,1.0)),
          color=topo, frame=(ylabel=:m,))
end # hide
showfig(show=false)     # hide
fname_ps = joinpath(tempdir(), "GMTjl_tmp.ps")  # hide
gmt("psconvert -A2p -Qg4 -Qt4 " * fname_ps * " -TG *")  # hide
mv(joinpath(tempdir(), "GMTjl_tmp.png"), joinpath(@OUTPUT, "example_18085740280087455450.png"), force=true);    # hide
 
nothing # hide