@def title = "Home"
@def order = 0
@def frontpage = true

# Welcome to GMT!

GMT is a data processing and visualization package for the [Julia](https://julialang.org/) programming language,
with high performance and extensibility. It is available for Windows, Mac and Linux.


## Installation and Import

Using Julia's inbuilt package manager.

```julia
]add GMT
using GMT
```

## \myreflink{Introduction}

## \myreflink{Quick learn}

## \myreflink{The GMT.jl types}

## Core Modules Manuals

|  |  |  |  |  |  |
|:-----|:----|:----|:----|:----|:----|
| basemap | \myreflink{blockmean} | \myreflink{blockmedian} | \myreflink{blockmode} |  clip  | \myreflink{coast} |
| \myreflink{colorbar} |  contour  |  dimfilter  |  docs  |  events  |  filter1d  |
| fitcircle |  gmt2kml | \myreflink{gmtbinstats} |  gmtconnect |  gmtconvert |  gmtdefaults |
| gmtget |  gmtinfo |  gmtlogo |  gmtmath |  gmtregress |  gmtselect |
| gmtset |  gmtsimplify |  gmtspatial |  gmtsplit |  gmtvector |  gmtwhich |
| grd2cpt |  grd2kml |  grd2xyz |  grdblend |  grdclip | \myreflink{grdcontour} |
| grdconvert |  grdcut |  grdedit |  grdfft |  grdfill |  grdfilter |
| grdgdal | \myreflink{grdgradient} |  \myreflink{grdhisteq} |  \myreflink{grdimage} |  grdinfo |  grdinterpolate |
| grdlandmask |  grdmask |  grdmath |  grdmix |  grdpaste |  grdproject |
| \myreflink{grdsample} |  grdselect |  grdtrack |  grdtrend |  grdvector | \myreflink{grdview} |
| grdvolume |  greenspline | \myreflink{histogram} |  image |  kml2gmt |  legend |
| \myreflink{makecpt} |  mapproject |  mask | \myreflink{movie} |  nearneighbor | \myreflink{plot} |
| plot3d |  project |  psconvert |  rose |  sample1d |  \myreflink{solar} |
| spectrum1d |  sph2grd | sphdistance |  sphinterpolate | sphtriangulate | \myreflink{subplot} |
| surface |  ternary | \myreflink{text} |  trend1d |  trend2d |  triangulate |
| wiggle |  xyz2grd |  |  |  |  |

## Plot avatars

|  |  |  |  |  |  |
|:-----|:----|:----|:----|:----|:----|
| \myreflink{arrows} | \myreflink{bar} | \myreflink{bar3} | \myreflink{decorated} | \myreflink{lines} | \myreflink{scatter} |
| \myreflink{scatter3} | \myreflink{contourf} |  |  |  |  |

[//]: # 


## First Steps

@@box-container

  @@box
    ~~~<a class="boxlink" href="examples/frames/">~~~
    @@title Frames Layout @@
    @@box-content
      ~~~
      <img src="/assets/GMT_Defaults_1a.png">
      ~~~
    @@
    ~~~</a>~~~
  @@

  @@box
    ~~~<a class="boxlink" href="examples/plotting_functions/">~~~
    @@title Plot Examples @@
    @@box-content
      ~~~
      <img src="/assets/symbols.png">
      ~~~
    @@
    ~~~</a>~~~
  @@

  @@box
    ~~~<a class="boxlink" href="examples/CPTs/">~~~
    @@title Color maps @@
    @@box-content
      ~~~
      <img src="/examples/CPTs/GMT_CPTscale.png">
      ~~~
    @@
    ~~~</a>~~~
  @@

  @@box
    ~~~<a class="boxlink" href="examples/projections/">~~~
    @@title Projections Examples @@
    @@box-content
      ~~~
      <img src="/assets/GMT_sinus_int.png">
      ~~~
    @@
    ~~~</a>~~~
  @@

  @@box
    ~~~<a class="boxlink" href="examples/images/">~~~
    @@title The world of images @@
    @@box-content
      ~~~
      <img src="/assets/ex04.png">
      ~~~
    @@
    ~~~</a>~~~
  @@

  @@box
    ~~~<a class="boxlink" href="examples/contours/">~~~
    @@title Contours Examples @@
    @@box-content
      ~~~
      <img src="/assets/color-contour.png">
      ~~~
    @@
    ~~~</a>~~~
  @@

  @@box
    ~~~<a class="boxlink" href="examples/choropleths/choro_examples">~~~
    @@title Choropleth Map Examples @@
    @@box-content
      ~~~
      <img src="/assets/choro1_dcw.png">
      ~~~
    @@
    ~~~</a>~~~
  @@

  @@box
    ~~~<a class="boxlink" href="examples/ternary/">~~~
    @@title Ternary Plots Examples @@
    @@box-content
      ~~~
      <img src="/assets/ternary3.png">
      ~~~
    @@
    ~~~</a>~~~
  @@

  @@box
    ~~~<a class="boxlink" href="examples/misc/">~~~
    @@title Misc Examples @@
    @@box-content
      ~~~
      <img src="/assets/buffer3.png">
      ~~~
    @@
    ~~~</a>~~~
  @@
  
  @@box
    ~~~<a class="boxlink" href="examples/art/">~~~
    @@title Art Examples @@
    @@box-content
      ~~~
      <img src="/assets/flower.png">
      ~~~
    @@
    ~~~</a>~~~
  @@

@@


## Getting Help

1. Use the REPL `?` help mode.
1. Click this link to open a preformatted topic on the [Julia Discourse Page](https://discourse.julialang.org/new-topic?title=GMT%20-%20Your%20question%20here&category=domain/viz&tags=GMT&body=You%20can%20write%20your%20question%20in%20this%20space.%0A%0ABefore%20asking%2C%20please%20take%20a%20minute%20to%20make%20sure%20that%20you%20have%20installed%20the%20latest%20available%20versions%20and%20have%20looked%20at%20%5Bthe%20most%20recent%20documentation%5D(http%3A%2Fwww.generic-mapping-tools.org/GMT.jl%2Fstable%2F)%20%3Ainnocent%3A). If you do this manually, please use the category Domain/Visualization and tag questions with `GMT` to increase their visibility.
1. For technical issues and bug reports, open an issue in the [GMT.jl](https://www.generic-mapping-tools.org/GMT.jl) repository which serves as the central hub for GMT.jl and backend issues.

