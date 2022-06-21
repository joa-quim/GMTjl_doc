# This file was generated, do not modify it. # hide
try     # hide
begin # hide
    using GMT   # hide
    GMT.isFranklin[1] = true    # hide
    using GMT
C = makecpt(cmap=:categorical, range="wood,water,gold")
imshow(C, B=:none, horizontal=true)
end # hide
mv(joinpath(tempdir(), "GMTjl_tmp.png"), joinpath(@OUTPUT, "example_10640709962892911428.png"), force=true);    # hide
catch   # hide
end     # hide
GMT.isFranklin[1] = false    # hide
GMT.IamModern[1]  = false    # hide
 
nothing # hide