# This file was generated, do not modify it. # hide
begin # hide
    using GMT
X,Y = GMT.meshgrid(-3:6/17:3);
XX = 2*X .* Y;
YY = X.^2 .- Y.^2;
pcolor(XX,YY, reshape(repeat([1:18; 18:-1:1], 9,1), size(XX)), lc=:black)
end # hide
showfig(show=false)     # hide
fname_ps = joinpath(tempdir(), "GMTjl_tmp.ps")  # hide
gmt("psconvert -A2p -Qg4 -Qt4 " * fname_ps * " -TG *")  # hide
GMT.current_cpt[1] = GMT.GMTcpt()   # hide
mv(joinpath(tempdir(), "GMTjl_tmp.png"), joinpath(@OUTPUT, "example_3808794730341233053.png"), force=true);    # hide
 
nothing # hide