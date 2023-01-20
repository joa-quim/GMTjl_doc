# This file was generated, do not modify it. # hide
begin # hide
	using GMT   # hide
	GMT.isFranklin[1] = true    # hide
	getpath4docs(file::String) = joinpath("..", "..", "..", "..", "..", file) # hide
	using GMT

x = GMT.linspace(0, 2pi);  y = cos.(2x)*0.9;

lines(x,y,                           # The data
      limits=(0,6.5,-1,2.0),         # Fig limits
      pen=(lw=7,lc=:sienna, arrow=(len=2.2,shape=:arrow, fill=:darkgreen)),  # The "Snake"
      figsize=(16,12),               # Fig size
      title="Double Snake")
plot!(3.49, 0.97,                    # Coordinates where to plot symbol
      custom_symbol=(name="ski_alpine", size=1.7),    # The skier symbol
      fill=:black, show=true)        # Fill the symbol in black
end # hide
mv(joinpath(tempdir(), "GMTjl_tmp.png"), joinpath(@OUTPUT, "example_12815556097889944659.png"), force=true);    # hide
GMT.isFranklin[1] = false    # hide
GMT.IamModern[1]  = false    # hide
 
nothing # hide