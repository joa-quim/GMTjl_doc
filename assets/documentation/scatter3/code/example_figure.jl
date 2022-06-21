# This file was generated, do not modify it. # hide
try     # hide
begin # hide
    using GMT   # hide
    GMT.isFranklin[1] = true    # hide
    using GMT
scatter3(rand(10,10,3), zsize=4, marker=:cube, mc=:darkgreen, show=true)
end # hide
mv(joinpath(tempdir(), "GMTjl_tmp.png"), joinpath(@OUTPUT, "example_15608908837576833342.png"), force=true);    # hide
catch   # hide
end     # hide
GMT.isFranklin[1] = false    # hide
GMT.IamModern[1]  = false    # hide
 
nothing # hide