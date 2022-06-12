# This file was generated, do not modify it. # hide
begin # hide
    using GMT
x = GMT.linspace(0, 2pi, 180);	y = sin.(x/0.2)*45;
coast(region=:global, proj=(name=:ortho, center=(300,15)), frame=:g,
      land=:navy, title="Hello Round World")
plot!(x*60, y, lw=1, lc=:red, marker=:circle, size=0.2,
      markeredgecolor=0, markerfacecolor=:cyan)
end # hide
showfig(show=false)     # hide
fname_ps = joinpath(tempdir(), "GMTjl_tmp.ps")  # hide
gmt("psconvert -A2p -Qg4 -Qt4 " * fname_ps * " -TG *")  # hide
mv(joinpath(tempdir(), "GMTjl_tmp.png"), joinpath(@OUTPUT, "example_8881433263149014887.png"), force=true);    # hide
 
nothing # hide