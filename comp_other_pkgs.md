## Comparison with other plotting packages

- Q - Is GMT.jl different from the other plotting packages in Julia?
- A - Yes and No.

### No

  - GMT.jl uses a `Plots` like syntax and is a general purpose plotting package but doesn't provide (yet)
    the more exotic plot types that can be found in `Plots`, `Makie`, `PyPlot`, etc...
  - It is not interactive like [GLMakie](https://makie.juliaplots.org/stable/documentation/backends/glmakie/).
  - In its foundation it works in a similar way of [Luxor](https://juliagraphics.github.io/Luxor.jl/stable/) and
    [CairoMakie](https://makie.juliaplots.org/stable/documentation/backends/cairomakie/) in the sense that a
    vector graphics is generated and at the end rasterized for displaying. The plot quality should be similar
    to that of those packages (they use the Cairo library and GMT uses its own PostScript library). A prof of
    this quality is that GMT has been used for the last 30 years in publishing papers in the highest ranked journals.

### Yes

  - GMT.jl has 30 years of experience fine tunning details for producing highest quality maps (*BTW* `GMT` stands
    for `Generic Mapping Tools`) with lots of mapping projections and a deep knowledge that the Earth is **round**.
  - GMT.jl is not a map/plotting package only. It has innumerous tools for grid and vector data processing.
    *e.g.* read virtually almost all formats (directly or via GDAL), grid interpolations, 1 and 2D filtering,
    coordinate conversions, direct access to many GDAL, PROJ, GEOS functions, dedicated tools for seismology,
    potential methods (gravity and geomagnetics), etc...
  - Thanks to Julia's FFI (Foreign Function Interface) GMT.jl can interface with the 
    [MB-system](https://www.mbari.org/products/research-software/mb-system/) software from swath-bathymetry
    data processing.
  
