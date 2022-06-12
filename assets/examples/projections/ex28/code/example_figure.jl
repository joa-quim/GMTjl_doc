# This file was generated, do not modify it. # hide
begin # hide
    using GMT
G = gmtread("@Kilauea.utm.nc");
C = makecpt(cmap="copper", range=(0,1500));
imshow(G, cmap=C, shade=true, frame=(axes="WS", annot=true), show=false,
	coast=(shore=true, ocean=:lightblue, frame=(axes="EN", annot=true, grid=true)))
end # hide
showfig(show=false)     # hide
fname_ps = joinpath(tempdir(), "GMTjl_tmp.ps")  # hide
gmt("psconvert -A2p -Qg4 -Qt4 " * fname_ps * " -TG *")  # hide
mv(joinpath(tempdir(), "GMTjl_tmp.png"), joinpath(@OUTPUT, "example_12109841746263417147.png"), force=true);    # hide
 
nothing # hide