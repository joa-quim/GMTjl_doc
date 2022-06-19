# This file was generated, do not modify it. # hide
try     # hide
begin # hide
    using GMT   # hide
    GMT.isFranklin[1] = true    # hide
    using GMT
plot([0.5 1 1.75 5 85], region=(0,5,0,5), figsize=12,
        marker=(matang=true, arrow=(length=0.75, start=true, stop=true, half=:right)),
        ml=(0.5,:red), fill=:blue)
# Now add another matangle symbol but transmit the angle parameters via the
# keyword. Note that in this case the arrow attributes are wrapped in a NamedTuple
plot!([2.5 2.5], marker=(:matang, [2 50 350], (length=0.75, start=true, stop=true, half=:left)),
        ml=(0.5,:red), fill=:blue, show=true)
end # hide
mv(joinpath(tempdir(), "GMTjl_tmp.png"), joinpath(@OUTPUT, "example_7599887368237968004.png"), force=true);    # hide
catch   # hide
end     # hide
GMT.isFranklin[1] = false    # hide
GMT.IamModern[1]  = false    # hide
 
nothing # hide