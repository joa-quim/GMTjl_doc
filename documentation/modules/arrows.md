# arrows

```julia
arrows(cmd0::String="", arg1=nothing; kwargs...)
```

Reads (x,y,a,b) data and make arrow plots. The input can either be a file name of a file with at least
four columns, but optionally more, or an Mx2 Array or GMTdatset object with the same characteristics in
terms of columns number.

This module is a subset of \myreflink{plot} to make it simpler to draw arrow plots. So not all (fine)
controlling parameters are listed here. For the finest control, user should consult the \myreflink{plot} module.

Parameters
----------

\textinput{common_opts/opt_B}

\textinput{common_opts/opt_J}

\textinput{common_opts/opt_R}

\textinput{common_opts/opt_mfc}

\textinput{common_opts/opt_pen}

- **arrow**\
   Direction (in degrees counter-clockwise from horizontal) and length must be found in columns 3 and 4,
   and size, if not specified on the command-line, should be present in column 5. The size is the length of
   the vector head. Vector stem width is set by *pen*. By default, a vector head of 0.5 cm is set but see
   \myreflink{Vector Attributes} for overwriting this default and specifying other attributes.

\textinput{common_opts/opt_U}

\textinput{common_opts/opt_V}

\textinput{common_opts/opt_X}

\textinput{common_opts/opt_Y}

\textinput{common_opts/opt_save_fig}

Examples
--------

Plot a single arrow with head and tail.

```julia
    arrows([0 8.2 0 6], limits=(-1,4,7,9), arrow=(len=2,start=:arrow,stop=:tail,shape=0.5),
           figsize=(12,4), axes=:a, pen="4p", show=true)
```

Let us see the effect of the scale factor in quiver plots (components given in *u,v*). Plot a single vector
with length 0f ~7 cm (sqrt(50)). Notice that map limits and map size are equal to 5.

\begin{examplefig}{}
```julia
using GMT
arrows([0.0 0 5 5], limits=(0,5,0,5), figsize=5, frame=(annot=:a, grid=1),
       arrow=(len=0.5,stop=1,uv=1), show=true)
```
\end{examplefig}

now, we increase the fig size to 10 cm and because the vector magnitude is half ot it (= 7) we see that the
vector is now plot from 0 to ~3.54 figure units. In fact, the vector has exactly the same size as in previous
example but the figure is now twice as large.

```julia
   arrows([0.0 0 5 5], limits=(0,5,0,5), figsize=10, frame=(annot=1, ticks=0.5, grid=1),
          arrow=(len=0.5,stop=1,uv=1), show=true)
```

and finally we will change the vector size again but this time by applying a factor scale of 0.5. The vector
is now ~1.77 figure units long.

\begin{examplefig}{}
```julia
using GMT
arrows([0.0 0 5 5], limits=(0,5,0,5), figsize=10, frame=(annot=0.5, ticks=0.25, grid=0.5),
       arrow=(len=0.5,stop=1,uv=0.5), show=true)
```
\end{examplefig}

See Also
--------

\myreflink{plot}, \myreflink{lines}, \myreflink{scatter}