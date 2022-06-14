# This file was generated, do not modify it. # hide
begin # hide
    using GMT
D = gmtread("track_sample_data.txt", i="7,6,3");
plot3d(D, lc=:gradient, lt=[1,5], par=(PS_LINE_CAP="round",))
end # hide
showfig(show=false)     # hide
fname_ps = joinpath(tempdir(), "GMTjl_tmp.ps")  # hide
gmt("psconvert -A2p -Qg4 -Qt4 " * fname_ps * " -TG *")  # hide
GMT.current_cpt[1] = GMT.GMTcpt()   # hide
mv(joinpath(tempdir(), "GMTjl_tmp.png"), joinpath(@OUTPUT, "example_548430707481649220.png"), force=true);    # hide
 
nothing # hide