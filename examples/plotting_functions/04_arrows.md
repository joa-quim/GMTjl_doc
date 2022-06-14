# Arrows

{{doc arrows}}

## Examples

\begin{examplefig}{}
```julia
using GMT
arrows([0.5 0.5 0 8], limits=(-0.1,3,0,2.5), figsize=(16,5),
       arrow=(len=2,stop=1,shape=0.5), pen=6,
       frame=(axes=:WSrt, annot=:auto, title="Arrow I"))
# Add the plotting command to the figure
T1 = text_record([0 2.0], "arrows([0 1.0 0 6], limits=(0,3,0,2), figsize=(14,5),");
T2 = text_record([0 1.5], "   arrow=(len=2,stop=1,shape=0.5), pen=6");
pstext!(T1, font=(20,"Times-Italic"), justify=:LB)
pstext!(T2, font=(20,"Times-Italic"), justify=:LB)
```
\end{examplefig}


\begin{examplefig}{}
```julia
using GMT
arrows([0.75 0.5 0 8], limits=(-0.1,3,0,2.5), figsize=(16,5),
       arrow=(len=2,start=:arrow,stop=:tail,shape=0.5), fill=:red, pen=6,
       frame=(axes=:WSrt, annot=:auto, title="Arrow II"))
# Add the plotting command to the figure
T1 = text_record([0 2.0], "arrows([0 1.0 0 6], limits=(0,3,0,2), figsize=(14,5),");
T2 = text_record([0 1.5], "   arrow=(len=2,start=:arrow,stop=:tail,shape=0.5),");
T3 = text_record([0 1.1], "   pen=6, fill=:red");
pstext!(T1, font=(20,"Times-Italic"), justify=:LB)
pstext!(T2, font=(20,"Times-Italic"), justify=:LB)
pstext!(T3, font=(20,"Times-Italic"), justify=:LB)
```
\end{examplefig}


Plot GMT4 style arrows. We show here three alternatives to set arrow heads

\begin{examplefig}{}
```julia
using GMT
arrows([1 0 45 4], region=(0,6,-1,1), J="x2.5",
       frame=(annot=0, grid=1, title="GMT4 Vectors"),
       pen=(1,:blue), fill=:red, arrow4=(align=:middle,
       head=(arrowwidth="4p", headlength="18p", headwidth="7.5p"), double=true))
arrows!([3 0 45 4], pen=(1,:blue), fill=:red,
        arrow4=(align=:middle, head=("4p","18p", "7.5p")))
arrows!([5 0 45 4], pen=(1,:blue), fill=:red,
        arrow4=(align=:middle, head="4p/18p/7.5p"))

# Now the GMT5 type arrows
arrows!([1 0 45 4], frame=(annot=0, grid=1, title="GMT5 Vectors"), lw=2, fill=:red,
        arrow=(length="18p", start=true, stop=true, pen=(1,:blue),
               angle=45, justify=:center, shape=0.5), yshift=7)
arrows!([3 0 45 4], lw=2, fill=:red,
        arrow=(length="18p", stop=true, pen="-", angle=45, justify=:center, shape=0.5))
arrows!([5 0 45 4], lw=2, fill=:red,
        arrow=(length="18p", stop=true, angle=45, justify=:center, shape=0.5))
```
\end{examplefig}

Plot matangle symbols with vector heads.

\begin{examplefig}{}
```julia
using GMT
plot([0.5 1 1.75 5 85], region=(0,5,0,5), figsize=12,
        marker=(matang=true, arrow=(length=0.75, start=true, stop=true, half=:right)),
        ml=(0.5,:red), fill=:blue)
# Now add another matangle symbol but transmit the angle parameters via the
# keyword. Note that in this case the arrow attributes are wrapped in a NamedTuple
plot!([2.5 2.5], marker=(:matang, [2 50 350], (length=0.75, start=true, stop=true, half=:left)),
        ml=(0.5,:red), fill=:blue)
```
\end{examplefig}
