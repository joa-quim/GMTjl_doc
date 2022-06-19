# This file was generated, do not modify it. # hide
try     # hide
begin # hide
    using GMT   # hide
    GMT.isFranklin[1] = true    # hide
    using GMT
x = linspace(0,2π,50);
#plot(x, sin.(x), linestyle="Line&I am sinning&", theme=("A2GraphDark"))
#GMT.theme_modern()      # Need this to reset the theme untill a more elegant solution is implemented
plot(x, sin.(x), linestyle="Line&I am sinning&", show=true)
end # hide
mv(joinpath(tempdir(), "GMTjl_tmp.png"), joinpath(@OUTPUT, "example_8278285124084535215.png"), force=true);    # hide
catch   # hide
end     # hide
GMT.isFranklin[1] = false    # hide
GMT.IamModern[1]  = false    # hide
 
nothing # hide