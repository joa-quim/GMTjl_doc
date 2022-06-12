# This file was generated, do not modify it. # hide
begin # hide
    using GMT
# Poly-line arround which to compute the buffer. Make it go arround the pole.
line = [-37. 1; -28 26; -45 35; -19 42; -9 55; 4 64; 32 72; 85 73; 135 73; 172 73; -144 73; -78 77; -27 72; -8 65; 8 54; 18 39; 28 24; 34 1];
D = buffergeo(line, width=500000);  # Compute the buffer polygon
coast(region=:global, land=:peru, frame=:g,
      proj=(name=:ortho, center=(0,45)),
      plot=(data=D, fill=:green))
end # hide
showfig(show=false)     # hide
fname_ps = joinpath(tempdir(), "GMTjl_tmp.ps")  # hide
gmt("psconvert -A2p -Qg4 -Qt4 " * fname_ps * " -TG *")  # hide
GMT.current_cpt[1] = GMT.GMTcpt()   # hide
mv(joinpath(tempdir(), "GMTjl_tmp.png"), joinpath(@OUTPUT, "example_12926976129377769591.png"), force=true);    # hide
 
nothing # hide