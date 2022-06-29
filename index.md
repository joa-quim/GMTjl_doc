@def title = "Home"
@def order = 0
@def frontpage = true

# Welcome to GMT.jl

GMT is a data processing and visualization package for the [Julia](https://julialang.org/) programming
language, with high performance and extensibility. It provides the ability for drawing simple and very
complex static vector graphics as well as conversion to the most common raster formats (PNG, JPG, GeoTIFF, etc...).
Although it is package more tailored for Earth Sciences, it can also be used for a general purpose plotting
of 2 and 3D (perspective, not volumetric) graphics.

### \myreflink{Comparison with other plotting packages}

## Installation and use

Using Julia's inbuilt package manager.

```julia
]add GMT
using GMT
```

# \myreflink{Manuals}


## First Steps

@@box-container

  @@box
    ~~~<a class="boxlink" href="examples/frames/">~~~
    @@title Frames Layout @@
    @@box-content
      ~~~
      <img src="/examples/frames/GMT_Defaults_1a.png">
      ~~~
    @@
    ~~~</a>~~~
  @@

  @@box
    ~~~<a class="boxlink" href="examples/plotting_functions/">~~~
    @@title Plot Examples @@
    @@box-content
      ~~~
      <img src="/examples/plotting_functions/symbols.png">
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
    @@title Projections @@
    @@box-content
      ~~~
      <img src="/examples/projections/GMT_sinus_int.png">
      ~~~
    @@
    ~~~</a>~~~
  @@

  @@box
    ~~~<a class="boxlink" href="examples/images/">~~~
    @@title The world of images @@
    @@box-content
      ~~~
      <img src="/examples/images/ex04.png">
      ~~~
    @@
    ~~~</a>~~~
  @@

  @@box
    ~~~<a class="boxlink" href="examples/contours/">~~~
    @@title Contours @@
    @@box-content
      ~~~
      <img src="/examples/contours/color-contour.png">
      ~~~
    @@
    ~~~</a>~~~
  @@

  @@box
    ~~~<a class="boxlink" href="examples/legends/">~~~
    @@title Legends@@
    @@box-content
      ~~~
      <img src="/examples/legends/legend_tille.png">
      ~~~
    @@
    ~~~</a>~~~
  @@

  @@box
    ~~~<a class="boxlink" href="examples/choropleths/choro_examples">~~~
    @@title Choropleth Maps @@
    @@box-content
      ~~~
      <img src="/assets/choro1_dcw.png">
      ~~~
    @@
    ~~~</a>~~~
  @@

  @@box
    ~~~<a class="boxlink" href="examples/ternary/">~~~
    @@title Ternary Plots @@
    @@box-content
      ~~~
      <img src="/examples/ternary/ternary3.png">
      ~~~
    @@
    ~~~</a>~~~
  @@

  @@box
    ~~~<a class="boxlink" href="examples/subplot/">~~~
    @@title Subplots @@
    @@box-content
      ~~~
      <img src="/examples/subplot/tictactoe.png">
      ~~~
    @@
    ~~~</a>~~~
  @@

  @@box
    ~~~<a class="boxlink" href="examples/themes/">~~~
    @@title Themes @@
    @@box-content
      ~~~
      <img src="/examples/themes/themes_tille.png">
      ~~~
    @@
    ~~~</a>~~~
  @@
   
  @@box
    ~~~<a class="boxlink" href="examples/misc/">~~~
    @@title Misc @@
    @@box-content
      ~~~
      <img src="/examples/misc/buffer3.png">
      ~~~
    @@
    ~~~</a>~~~
  @@
   
  @@box
    ~~~<a class="boxlink" href="examples/art/">~~~
    @@title Art @@
    @@box-content
      ~~~
      <img src="/examples/art/flower.png">
      ~~~
    @@
    ~~~</a>~~~
  @@

@@

### See also the \myreflink{tutorials}

## Getting Help

1. Use the REPL `?` help mode.
1. Click this link to open a preformatted topic on the [Julia Discourse Page](https://discourse.julialang.org/new-topic?title=GMT%20-%20Your%20question%20here&category=domain/viz&tags=GMT&body=You%20can%20write%20your%20question%20in%20this%20space.%0A%0ABefore%20asking%2C%20please%20take%20a%20minute%20to%20make%20sure%20that%20you%20have%20installed%20the%20latest%20available%20versions%20and%20have%20looked%20at%20%5Bthe%20most%20recent%20documentation%5D(http%3A%2Fwww.generic-mapping-tools.org/GMT.jl%2Fstable%2F)%20%3Ainnocent%3A). If you do this manually, please use the category Domain/Visualization and tag questions with `GMT` to increase their visibility.
1. For technical issues and bug reports, open an issue in the [GMT.jl](https://www.generic-mapping-tools.org/GMT.jl) repository which serves as the central hub for GMT.jl and backend issues.

