# This file was generated, do not modify it. # hide
begin # hide
    using GMT   # hide
    GMT.isFranklin[1] = true    # hide
    getpath4docs(file::String) = joinpath("..", "..", "..", "..", "..", file) # hide
    using GMT

t = GMT.linspace(0,2pi,360);
x = cos.(4*t) .* cos.(t);
y = cos.(4*t) .* sin.(t);

lines([-0.7 -0.25 0], [-1.5 -0.8 0], # The flower stem
      limits=(-1,1,-1.5,1),          # Fig limits
      lw=9,                          # Stem's line width in points
      lc=:darkgreen,                 # Stem's line color
      bezier=true,                   # Smooth the stem polyne as a Bezier curve
      figsize=(14,0),                # Fig size. Second arg = 0 means compute the height keeping aspect ratio
      frame=:none)                   # Do not plot the frame
plot!(x, y,
      fill=(pattern="@tiling2.jpg",  # Fill pattern file
      dpi=200), show=true)           # The pattern DPI
end # hide
mv(joinpath(tempdir(), "GMTjl_tmp.png"), joinpath(@OUTPUT, "example_9912846326165272708.png"), force=true);    # hide
GMT.isFranklin[1] = false    # hide
GMT.IamModern[1]  = false    # hide
 
nothing # hide