# This file was generated, do not modify it. # hide
begin # hide
    using GMT
basemap(region=(416,542,0,6.2831852), figsize=(-12,5),
        frame=(frame=(:left_full, :bot_full), fill=:lightblue),
        xaxis=(annot=25, ticks=5, grid=25, suffix=" Ma"),
        yaxis=(custom=(pos=[0 1 2 2.71828 3 3.1415926 4 5 6 6.2831852],
               type=["a", "a", "f", "ag e", "f", "ag @~p@~", "f", "f", "f", "ag 2@~p@~"]),),)

basemap!(frame=(axes=(:left_full, :bot_full),),
        xaxis2=(custom=(pos=[416.0, 443.7, 488.3, 542],
                        type=["ig Devonian", "ig Silurian", "ig Ordovician", "ig Cambrian"]),),
        par=(MAP_ANNOT_OFFSET_SECONDARY="10p", MAP_GRID_PEN_SECONDARY="2p"))
end # hide
showfig(show=false)     # hide
fname_ps = joinpath(tempdir(), "GMTjl_tmp.ps")  # hide
gmt("psconvert -A2p -Qg4 -Qt4 " * fname_ps * " -TG *")  # hide
mv(joinpath(tempdir(), "GMTjl_tmp.png"), joinpath(@OUTPUT, "example_8099147045033166998.png"), force=true);    # hide
 
nothing # hide