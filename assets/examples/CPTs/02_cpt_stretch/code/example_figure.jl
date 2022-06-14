# This file was generated, do not modify it. # hide
begin # hide
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
end # hide
showfig(show=false)     # hide
fname_ps = joinpath(tempdir(), "GMTjl_tmp.ps")  # hide
gmt("psconvert -A2p -Qg4 -Qt4 " * fname_ps * " -TG *")  # hide
GMT.current_cpt[1] = GMT.GMTcpt()   # hide
mv(joinpath(tempdir(), "GMTjl_tmp.png"), joinpath(@OUTPUT, "example_16549074009904310201.png"), force=true);    # hide
 
nothing # hide