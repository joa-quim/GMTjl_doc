# This file was generated, do not modify it. # hide
begin # hide
    using GMT
angle = 137.5;	# Play with this angle between [137.0 138.0]. Amazing the effect, no?
	alfa = 2pi * angle / 360;
	n_seeds = 1500;
	seeds = 0:n_seeds;
	r = sqrt.(seeds);
	ϕ = alfa * seeds;
	C = makecpt(range=(1,sqrt(n_seeds),1), cmap=:buda);	# Color map to paint the seeds
	scatter(r .* cos.(ϕ), r .* sin.(ϕ), marker=:point, cmap=C, zcolor=r,
		frame=(fill=20,), aspect=:equal)
end # hide
showfig(show=false)     # hide
fname_ps = joinpath(tempdir(), "GMTjl_tmp.ps")  # hide
gmt("psconvert -A2p -Qg4 -Qt4 " * fname_ps * " -TG *")  # hide
GMT.current_cpt[1] = GMT.GMTcpt()   # hide
mv(joinpath(tempdir(), "GMTjl_tmp.png"), joinpath(@OUTPUT, "example_15256269224586119999.png"), force=true);    # hide
 
nothing # hide