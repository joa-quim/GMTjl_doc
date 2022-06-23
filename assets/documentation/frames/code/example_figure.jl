# This file was generated, do not modify it. # hide
begin # hide
    using GMT   # hide
    GMT.isFranklin[1] = true    # hide
    getpath4docs(file::String) = joinpath("..", "..", "..", "..", "..", file) # hide
    using GMT
basemap(region="2000-4-1T/2000-5-25T/0/1", figsize=(12,0.5),
        frame=(axes=:S, annot=7, annot_unit=:day_week, ticks=1, ticks_unit=:day_date),
        axis2=(annot=1, annot_unit=:month),
        conf=(FORMAT_DATE_MAP="-o", FONT_ANNOT_PRIMARY="+9p"), show=true)
end # hide
mv(joinpath(tempdir(), "GMTjl_tmp.png"), joinpath(@OUTPUT, "example_13998155793544181401.png"), force=true);    # hide
GMT.isFranklin[1] = false    # hide
GMT.IamModern[1]  = false    # hide
 
nothing # hide