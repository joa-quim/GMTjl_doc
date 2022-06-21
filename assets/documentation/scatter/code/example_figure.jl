# This file was generated, do not modify it. # hide
try     # hide
begin # hide
    using GMT   # hide
    GMT.isFranklin[1] = true    # hide
    using GMT
sizevec = [s for s = 1:10] ./ 10;
scatter(1:10, 1:10, markersize = sizevec, marker=:square, fill=:green, show=1)
end # hide
mv(joinpath(tempdir(), "GMTjl_tmp.png"), joinpath(@OUTPUT, "example_7833787725779720243.png"), force=true);    # hide
catch   # hide
end     # hide
GMT.isFranklin[1] = false    # hide
GMT.IamModern[1]  = false    # hide
 
nothing # hide