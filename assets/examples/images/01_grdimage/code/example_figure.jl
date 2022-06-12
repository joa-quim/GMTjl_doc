# This file was generated, do not modify it. # hide
begin # hide
    using GMT
grdimage("@earth_relief_20m.grd", proj=:Winkel, colorbar=true, coast=true)
end # hide
showfig(show=false)     # hide
fname_ps = joinpath(tempdir(), "GMTjl_tmp.ps")  # hide
gmt("psconvert -A2p -Qg4 -Qt4 " * fname_ps * " -TG *")  # hide
GMT.current_cpt[1] = GMT.GMTcpt()   # hide
mv(joinpath(tempdir(), "GMTjl_tmp.png"), joinpath(@OUTPUT, "example_5563908910683848285.png"), force=true);    # hide
 
nothing # hide