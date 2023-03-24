# This file was generated, do not modify it. # hide
begin # hide
	using GMT   # hide
	GMT.gmt_restart()	# hide
	GMT.isFranklin[1] = true    # hide
	getpath4docs(file::String) = joinpath("..", "..", "..", "..", "..", file) # hide
	using GMT
G = gmtread("@Kilauea.utm.nc");
C = makecpt(cmap="copper", range=(0,1500));
imshow(G, cmap=C, shade=true, frame=(axes="WS", annot=true),
	coast=(shore=true, ocean=:lightblue, frame=(axes="EN", annot=true, grid=true)))
end # hide
mv(joinpath(tempdir(), "GMTjl_tmp.png"), joinpath(@OUTPUT, "example_490367137794955767.png"), force=true);    # hide
GMT.isFranklin[1] = false    # hide
GMT.IamModern[1]  = false    # hide
 
nothing # hide