# This file was generated, do not modify it. # hide
begin # hide
    using GMT
xy = rand(100,2) .* [5 3];
D = binstats(xy, region=(0,5,0,3), inc=1, tiling=:hex, stats=:number);
imshow(D, hexbin=true, ml=0.5, colorbar=true, show=false)
end # hide
showfig(show=false)     # hide
fname_ps = joinpath(tempdir(), "GMTjl_tmp.ps")  # hide
gmt("psconvert -A2p -Qg4 -Qt4 " * fname_ps * " -TG *")  # hide
GMT.current_cpt[1] = GMT.GMTcpt()   # hide
mv(joinpath(tempdir(), "GMTjl_tmp.png"), joinpath(@OUTPUT, "example_4025504833215613745.png"), force=true);    # hide
 
nothing # hide