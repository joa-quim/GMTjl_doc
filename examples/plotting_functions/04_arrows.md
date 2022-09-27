# Arrows

{{doc arrows}}

## Examples

\begin{examplefig}{}
```julia
using GMT
arrows([0.5 0.5 0 2], limits=(0.,3,0,2.5), figsize=(15,5),
       arrow=(len=2,), pen=6,
       frame=(axes=:WSrt, annot=:auto, title="Arrow I"))
# Add the plotting command to the figure
T1 = "arrows([0.5 0.5 0 2], limits=(0,3,0,2.5), figsize=(15,5),";
T2 = "   arrow=(len=2,stop=1,shape=0.5), pen=6";
pstext!([1.5 2.0], text=T1, font=(18,"Times-Italic"), justify=:CB)
pstext!([1.5 1.5], text=T2, font=(18,"Times-Italic"), justify=:CB, show=true)
```
\end{examplefig}


\begin{examplefig}{}
```julia
using GMT
arrows([0.5 0.5 0 2], limits=(0,3,0,2.5), figsize=(15,5),
       arrow=(len=2,start=:arrow,stop=:tail,shape=0.5), fill=:red, pen=6,
       frame=(axes=:WSrt, annot=:auto, title="Arrow II"))
# Add the plotting command to the figure
T1 = "arrows([0.5 0.5 0 2], limits=(0,3,0,2.5), figsize=(15,5),";
T2 = "       arrow=(len=2,start=:arrow,stop=:tail,shape=0.5),";
T3 = "       pen=6, fill=:red";
pstext!([0.1 2.0], text=T1, font=(18,"Times-Italic"), justify=:LB)
pstext!([0.1 1.5], text=T2, font=(18,"Times-Italic"), justify=:LB)
pstext!([0.1 1.1], text=T3, font=(18,"Times-Italic"), justify=:LB, show=true)
```
\end{examplefig}

### GMT4 & GMT5 style arrows

Plot GMT4 style arrows. We show here three alternatives to set arrow heads

\begin{examplefig}{}
```julia
using GMT
arrows([1 0 45 2], region=(0,6,-1,1), figscale="2.5",
       frame=(annot=:auto, grid=1, title="GMT4 Vectors"),
       pen=(1,:blue), fill=:red, arrow4=(align=:middle,
       head=(arrowwidth="4p", headlength="18p", headwidth="7.5p"), double=true))
arrows!([3 0 45 2], pen=(1,:blue), fill=:red,
        arrow4=(align=:middle, head=("4p","18p", "12p")))
arrows!([5 0 45 2], pen=(1,:blue), fill=:red,
        arrow4=(align=:middle, head="8p/18p/17.5p"))

# Now the GMT5 type arrows
arrows!([1 0 45 2], frame=(annot=:auto, grid=1, title="GMT5 Vectors"), lw=2, fill=:red,
        arrow=(length="18p", start=true, stop=true, pen=(1,:blue),
               angle=45, justify=:center, shape=0.5), yshift=7)
arrows!([3 0 45 2], lw=2, fill=:red,
        arrow=(length="18p", stop=true, pen="-", angle=45, justify=:center, shape=0.5))
arrows!([5 0 45 2], lw=2, fill=:red,
        arrow=(length="18p", stop=true, angle=45, justify=:center, shape=0.5), show=true)
```
\end{examplefig}

### Mat angles

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
        ml=(0.5,:red), fill=:blue, show=true)
```
\end{examplefig}

### Vector heads and tails

There are many methods to plot vectors with individual heads and tails. For this purpose, several
modifiers may be set to the corresponding vector-producing parameters for specifying the
placement of vector heads and tails, their shapes, and the justification of the vector, see more at
\myreflink{Vector Attributes}.

\begin{examplefig}{}
```julia
using GMT

arrows([1 14 0 35], limits=(-5,100,1,15), figsize=(15,10), pen=2, arrow=(len=0,), 
       frame=:none, title="Vector heads and tails")
text!(["arrow=(len=0,)"], x=40, y=14, font=8, justify=:LM)
arrows!([1 13 0 35], pen=2, arrow=(len=0.6, start=:open_arrow, stop=:open_arrow, angle=50))
text!(["arrow=(len=0.6, start=:open_arrow, stop=:open_arrow, angle=50)"], x=40, y=13, font=8, justify=:LM)
arrows!([1 12 0 35], pen=2, arrow=(len=0.4, start=:open_tail, stop=:open_tail))
text!(["arrow=(len=0.4, start=:open_tail, stop=:open_tail)"], x=40, y=12, font=8, justify=:LM)
arrows!([1 11 0 35], pen=2, arrow=(len=0.3, start=:line, stop=:line, angle=80))
text!(["arrow=(len=0.3, start=:line, stop=:line, angle=80)"], x=40, y=11, font=8, justify=:LM)
arrows!([1 10 0 35], pen=2, arrow=(len=0.6, stop=true), fill=:red3)
text!(["arrow=(len=0.6, stop=true)"], x=40, y=10, font=8, justify=:LM)
arrows!([1  9 0 35], pen=2, arrow=(len=0.6, start=:circle, stop=true), fill=:red3)
text!(["arrow=(len=0.6, start=:circle, stop=true)"], x=40, y=9, font=8, justify=:LM)
arrows!([1  8 0 35], pen=2, arrow=(len=0.6, start=:line, stop=true), fill=:red3)
text!(["arrow=(len=0.6, start=:line, stop=true)"], x=40, y=8, font=8, justify=:LM)
arrows!([1  7 0 35], pen=2, arrow=(len=1, stop=true, shape=0.5), fill=:red3)
text!(["arrow=(len=1, stop=true, shape=0.5)"], x=40, y=7, font=8, justify=:LM)
arrows!([1  6 0 35], pen=2, arrow=(len=1, start=true, stop=true, shape=0.5), fill=:red3)
text!(["arrow=(len=1, start=true, stop=true, shape=0.5)"], x=40, y=6, font=8, justify=:LM)
arrows!([1  5 0 35], pen=2, arrow=(len=1, start=:tail, stop=true, shape=0.5), fill=:red3)
text!(["arrow=(len=1, start=:tail, stop=true, shape=0.5)"], x=40, y=5, font=8, justify=:LM)
arrows!([1  4 0 35], pen=2, arrow=(len=1, start=:right, stop=true, shape=0.5), fill=:red3)
text!(["arrow=(len=1, start=:right, stop=true, shape=0.5)"], x=40, y=4, font=8, justify=:LM)
arrows!([1  3 0 35], pen=2, arrow=(len=1, start=:right, stop=:left, shape=0.5), fill=:red3)
text!(["arrow=(len=1, start=:right, stop=:left, shape=0.5)"], x=40, y=3, font=8, justify=:LM)
arrows!([1  2 0 35], pen=2, arrow=(len=1, start=:tail, stop=true, half=:right, shape=0.5, angle=45), fill=:red3)
text!(["arrow=(len=1, start=:tail, stop=true, half=:right, shape=0.5, angle=45)"], x=40, y=2, font=8, justify=:LM)
showfig()
```
\end{examplefig}
