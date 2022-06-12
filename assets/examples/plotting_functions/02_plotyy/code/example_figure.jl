# This file was generated, do not modify it. # hide
begin # hide
    using GMT
plotyy([x[:] y1[:]], [x[:] y2[:]], title="Vibrating dishes",
       ylabel=:Knifes, xlabel="2000 Forks", seclabel=:Spoons)
end # hide
showfig(show=false)     # hide
fname_ps = joinpath(tempdir(), "GMTjl_tmp.ps")  # hide
gmt("psconvert -A2p -Qg4 -Qt4 " * fname_ps * " -TG *")  # hide
GMT.current_cpt[1] = GMT.GMTcpt()   # hide
mv(joinpath(tempdir(), "GMTjl_tmp.png"), joinpath(@OUTPUT, "example_14641957210659817569.png"), force=true);    # hide
 
nothing # hide