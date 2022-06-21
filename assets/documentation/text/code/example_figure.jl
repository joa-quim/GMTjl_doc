# This file was generated, do not modify it. # hide
try     # hide
begin # hide
    using GMT   # hide
    GMT.isFranklin[1] = true    # hide
    using GMT
text(["Hello World"], x=2.0, y=2.0, show=true)
end # hide
mv(joinpath(tempdir(), "GMTjl_tmp.png"), joinpath(@OUTPUT, "example_6046692248022155076.png"), force=true);    # hide
catch   # hide
end     # hide
GMT.isFranklin[1] = false    # hide
GMT.IamModern[1]  = false    # hide
 
nothing # hide