# This file was generated, do not modify it. # hide
begin # hide
	using GMT   # hide
	GMT.isFranklin[1] = true    # hide
	getpath4docs(file::String) = joinpath("..", "..", "..", "..", "..", file) # hide
	using GMT
teta = 2pi*rand(150)*180/pi; r = 9*rand(150); ms = r / 10;

scatter(teta, r,                  # The data
	limits=(0,360,0,10),          # Fig limits
        xaxis=(annot=45,grid=45), # Annotate and plor grid lines every 45 deg
        yaxis=(annot=2,grid=2),   # Same but for 2 units in radial direction
        proj=:Polar,              # Set the polar projection
        zcolor=teta,              # Assign color to each symbol
        size=ms,                  # The symbl sizes
        alpha=25,                 # Set transparency to 50%
        title="Polar scatter",    # Fig title
        show=true)             # Display the figure
end # hide
mv(joinpath(tempdir(), "GMTjl_tmp.png"), joinpath(@OUTPUT, "example_2675110527803178695.png"), force=true);    # hide
GMT.isFranklin[1] = false    # hide
GMT.IamModern[1]  = false    # hide
 
nothing # hide