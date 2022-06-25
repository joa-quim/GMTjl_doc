# Choropleths

A choropleth is a thematic map where areas are colored in proportion to a variable such as
population density. GMT lets us plot choropleth maps but the process is not straightforward
because we need to put the color information in the header of a multi-segment file. To
facilitate this, some tools were added to the Julia wrapper.

## Examples

(But see also the more extended example in \myreflink{tutorials})

### Countries (DCW)

Load packages needed to download data and put into a DataFrame

```julia
using GMT, DataFrames, CSV
```

```julia
paises = CSV.File(HTTP.get("https://raw.githubusercontent.com/tillnagel/unfolding/master/data/data/countries-population-density.csv").body, delim=';') |> DataFrame;
```

Extract the Europe countries from the DCW file

```julia
eu = coast(DCW="=EU+z", dump=true);
```

Generate two vector with country codes (2 chars codes) and the population density for European countries.

```julia
codes, vals = GMT.mk_codes_values(paises[!, 2], paises[!, 3], region="eu");
```

Create a Categorical CPT that allows plotting the choropleth. Note that we need to limit the CPT range to leave out the very high density states like Monaco otherwise all others would get the same color.

```julia
C = cpt4dcw(codes, vals, range=[10, 500, 10]);
```

Show the result

```julia
plot(eu, cmap=C, fill="+z", proj=:guess, R="-76/36/26/84", title="Population density",
	colorbar=true, show=true)
```

~~~
<img src="/assets/choro1_dcw.png" alt="DCW choropleth" title="DCW choropleth" width="500" class="center"/>
~~~

### Covid rate of infection in Portugal 2021

First, download the Portuguese district polygons shape file from this Github repo Next load it with:

```julia
using GMT, DataFrames, CSV

Pt = gmtread("C:\\programs\\compa_libs\\covid19pt\\extra\\mapas\\concelhos\\concelhos.shp");
```

Download and load a CSV file from same repo with rate of infection per district. Load it into a
DataFrame to simplify data extraction.

```julia
incidence = CSV.read("C:\\programs\\compa_libs\\covid19pt\\data_concelhos_incidencia.csv", DataFrame);
```

Get the rate of incidence in number of infected per 100_000 habitants for the last reported week.

```julia
r = collect(incidence[end, 2:end]);
```

But the damn polygon names above are all uppercase, Ghrrr. We will have to take care of that.

```julia
ids = names(incidence)[2:end];
```

Each of the Pt datasets have attributes (e.g., Pt[1].attrib) and the one that is common with the names in ids is the ``Pt[1].attrib["NAME2"]`` (the conselho name). But the names in *dataconcelhosincidencia.csv* (from which the ids are derived) and the concelhos.shp (that we read into ``Pt``) do not use the same case (one is full upper case) so we need to use the ``nocase=true`` below. The comparison is made inside the next call to the ``polygonlevels()`` function that takes care to return the numerical vector that we need in plot's level option.

```julia
zvals = polygonlevels(Pt, ids, r, att="NAME_2", nocase=true);
```

Create a Colormap to paint the district polygons

```julia
C = makecpt(range=(0,1500,10), inverse=true, cmap=:oleron, hinge=240, bg=:o);
```

Get the date for the data being represented to use in title

```julia
date = incidence[end,1];
```

And finaly do the plot

```julia
plot(Pt, level=zvals, cmap=C, pen=0.5, region=(-9.75,-5.9,36.9,42.1), proj=:Mercator,
     title="Infected / 100.000 habitants " * date)

colorbar!(pos=(anchor=:MR,length=(12,0.6), offset=(-2.4,-4)), color=C,
          axes=(annot=100,), show=true)
```

~~~
<img src="/assets/choropleth_cv19.png" alt="DCW choropleth" title="DCW choropleth" width="250" height="700" class="center"/>
~~~