# This file was generated, do not modify it. # hide
begin # hide
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
        title="Polar scatter")    # Fig title
end # hide
showfig(show=false)     # hide
fname_ps = joinpath(tempdir(), "GMTjl_tmp.ps")  # hide
gmt("psconvert -A2p -Qg4 -Qt4 " * fname_ps * " -TG *")  # hide
mv(joinpath(tempdir(), "GMTjl_tmp.png"), joinpath(@OUTPUT, "example_8450859608383642157.png"), force=true);    # hide
 
nothing # hide