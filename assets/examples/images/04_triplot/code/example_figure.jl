# This file was generated, do not modify it. # hide
begin # hide
    using GMT
triplot(rand(10,3), lc=:red, title="Delaunay")
end # hide
showfig(show=false)     # hide
fname_ps = joinpath(tempdir(), "GMTjl_tmp.ps")  # hide
gmt("psconvert -A2p -Qg4 -Qt4 " * fname_ps * " -TG *")  # hide
GMT.current_cpt[1] = GMT.GMTcpt()   # hide
mv(joinpath(tempdir(), "GMTjl_tmp.png"), joinpath(@OUTPUT, "example_14516604640055573954.png"), force=true);    # hide
 
nothing # hide