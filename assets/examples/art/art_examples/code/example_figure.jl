# This file was generated, do not modify it. # hide
begin # hide
	using GMT   # hide
	GMT.isFranklin[1] = true    # hide
	getpath4docs(file::String) = joinpath("..", "..", "..", "..", "..", file) # hide
	using GMT, GMT.Drawing

ellipse(300,201,0, 200, 50, units=:points, first=true, fill=:purple, pen=1);
ellipse(340,206, 0,130, 66, fill=:purple, pen=1);
ellipse(318,222,0, 60, 26, fill=:blue);
box(200, 173, 205, 26, fill=:purple, pen=1);
circle(305,185,56, fill=:black);
circle(305,185,36, fill=:gray50);
circle(400,185,56, fill=:black);
circle(400,185,36, fill=:gray50, fmt=:png, show=true);
end # hide
mv(joinpath(tempdir(), "GMTjl_tmp.png"), joinpath(@OUTPUT, "example_12239339531825922968.png"), force=true);    # hide
GMT.isFranklin[1] = false    # hide
GMT.IamModern[1]  = false    # hide
 
nothing # hide