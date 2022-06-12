# This file was generated, do not modify it. # hide
begin # hide
    using GMT
cpt = makecpt(range=(0,10,1), cmap=:batlow);
contourf(d, contours=cpt, limits=(-0.5,9.5,0,5), pen=0.25, labels=(line=(:min,:max),))
end # hide
showfig(show=false)     # hide
fname_ps = joinpath(tempdir(), "GMTjl_tmp.ps")  # hide
gmt("psconvert -A2p -Qg4 -Qt4 " * fname_ps * " -TG *")  # hide
GMT.current_cpt[1] = GMT.GMTcpt()   # hide
mv(joinpath(tempdir(), "GMTjl_tmp.png"), joinpath(@OUTPUT, "example_7259724366370723183.png"), force=true);    # hide
 
nothing # hide