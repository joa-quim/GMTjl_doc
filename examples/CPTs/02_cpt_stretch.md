# Manipulating CPTs

There are many ways to turn a master CPT into a custom CPT that works for your particular data range.
The tools \myreflink{makecpt} and `grd2cpt` allow several types of transformations to take place:

Examples of two user CPTs for the range -0.5 to 3 created from the same master. One (left) extracted a
subset of the master before scaling while the other (right) used the entire range.

\begin{examplefig}{}
```julia
using GMT
ls = [3	2.9;	# Coordinates of 6 line segments connecting example CPTs
 5	2.5;;;
 3	0.1;
 5	0.5;;;
 3	2.2;
 1	2.5;;;
 3	1.08;
 1	0.5;;;
 1	0.785;
 3	1.5;;;
 3	1.5;
 5	0.785];

D = mat2ds(reshape(ls, 2, 2, 6))            # Create a GMTdaset with the six line segments
D[5].header = D[6].header = " -W0.25p,-"    # Tell that last two segments are dashed lines 
lines(D, region=(0,6,0,3), figscale="1i", frame=:none, pen=0.25)
colorbar!(cmap=:globe, frame=:auto, pos=(paper=true, anchor=("3i","1.5i"),
          size=("2.8i","0.15i"), justify=:CM), W=0.001)
C = makecpt(cmap=:globe, range=(-500, 3000));
colorbar!(frame=:auto, pos=(paper=true, anchor=("5i","1.5i"),
          size=("2.0i","0.15i"), justify=:LM), W=0.001)
C = makecpt(cmap=:globe, truncate=(-3000,5000), range=(-500, 3000));
colorbar!(frame=:auto, pos=(paper=true, anchor=("1i","1.5i"),
          size=("2.0i","0.15i"), justify=:RM, move_annot=:a), W=0.001)

T = text_record([0 0; 6 0; 3 3.1; 1 3.1; 5 3.1],
                ["LB Scale a subset (via @%1%truncate@%%)"
                 "RB	Scale entire range";
                 "CB	Master CPT";
                 "CB	New CPT v1";
                 "CB	New CPT v2"]);

text!(T, noclip=true, font=14, justify=true)
```
\end{examplefig}
