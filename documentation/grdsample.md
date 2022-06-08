# grdsample

```julia
grdsample(cmd0::String="", arg1=nothing, kwargs...)
```

Description
-----------

Read a grid file and interpolates it to create a new grid
file with either: a different registration (**reg** or **toggle**); or, a new
grid-spacing or number of nodes (**inc**), and perhaps also a new
sub-region (**region**). A bicubic [Default], bilinear, B-spline or
nearest-neighbor interpolation is used; see **-n** for settings. Note
that using **region** only is equivalent to :doc:`grdcut` or :doc:`grdedit` **-S**.
**grdsample** safely creates a fine mesh from a coarse one; the converse
may suffer aliasing unless the data are filtered using :doc:`grdfft` or :doc:`grdfilter`.

When the **region** is omitted, the output grid will cover the same region as
the input grid. When **inc** is omitted, the grid spacing of the output
grid will be the same as the input grid. Either **reg** or **toggle** can be
used to change the grid registration. When omitted, the output grid will
have the same registration as the input grid.

Required Arguments
------------------

.. |Add_ingrid| replace:: 2-D gridded data file.
.. include:: explain_grd_inout.rst_
    :start-after: ingrid-syntax-begins
    :end-before: ingrid-syntax-ends

.. _-G:

.. |Add_outgrid| replace:: Give the name of the output grid file.
.. include:: /explain_grd_inout.rst_
    :start-after: outgrid-syntax-begins
    :end-before: outgrid-syntax-ends

Optional Arguments
------------------

\textinput{common_opts/opt_I}

\textinput{common_opts/opt_R}

- **T** or **toggle** : *toggle=true*\
   Translate between grid and pixel registration; if the input is
   grid-registered, the output will be pixel-registered and vice-versa.
   This is a *destructive* grid change; see :ref:`Switching registrations <Switch_Registrations>`.

\textinput{common_opts/opt_V}

\textinput{common_opts/opt_f}

.. include:: explain_-n.rst_

.. |Add_nodereg| unicode:: 0x20 .. just an invisible code
.. include:: explain_nodereg.rst_

.. include:: explain_core.rst_

.. include:: explain_help.rst_

.. include:: explain_float.rst_

.. include:: explain_grdresample2.rst_

Hints
-----

If an interpolation point is not on a node of the input grid, then a NaN
at any node in the neighborhood surrounding the point will yield an
interpolated NaN. Bicubic interpolation [default] yields continuous
first derivatives but requires a neighborhood of 4 nodes by 4 nodes.
Bilinear interpolation [**-n**] uses only a 2 by 2 neighborhood, but
yields only zero-order continuity. Use bicubic when smoothness is
important. Use bilinear to minimize the propagation of NaNs.

Notes
-----

As an alternative to bicubic spline, linear spline or nearest neighbor interpolation one can
instead send the entire dataset through :doc:`surface` for re-gridding.  This approach allows
more control on aspects such as tension but it also leads to a solution that
is not likely to have fully converged.  The general approach would be
something like

```julia
grd2xyz old.grd | gmt surface -Rold.grd -Inewinc -Gnew.grd [other options]
```

For moderate data set one could also achieve an exact solution with :doc:`greenspline`,
such as

```julia
grd2xyz old.grd | gmt greenspline -Rold.grd -Inewinc -Gnew.grd [other options]
```

Examples
--------

To resample a sub-region of the 5 x 5 minute remote grid earth_relief_05m onto a 1 minute grid::

```julia
grdsample @earth_relief_05m -R0/20/0/20 -I1m -Gtopo_1m.nc
```

To translate the gridline-registered remote grid earth_relief_05m to pixel
registration while keeping the same region and grid interval::

```julia
grdsample @earth_relief_05m -T -Gpixel.nc
```

See Also
--------

:doc:`gmt`,
:doc:`grdedit`,
:doc:`grdfft`,
:doc:`grdfilter`,
:doc:`greenspline`,
:doc:`surface`