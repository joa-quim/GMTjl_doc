# This file was generated, do not modify it. # hide
begin # hide
    using GMT

C = makecpt(cmap=:globe, range=(-8000,3000));
colorbar(pos=(paper=true, anchor=(0,0), size=(11.5, 0.25), horizontal=true))
colorbar!(cmap=:globe, frame=:auto, yshift=1.3,
          pos=(paper=true, anchor=(0,0), size=(11.5, 0.25), horizontal=true))
plot!([5.75 0.25 90 0.5], region=(0,11.5,0,2.5), figscale=1, proj=:linear,
      symbol="v0.25+a80+b", frame=:none, pen=1, fill=:black)
text!(text_record([5.7 0.9],["HINGE"]), font=12, justify=:CB)
end # hide
showfig(show=false)     # hide
fname_ps = joinpath(tempdir(), "GMTjl_tmp.ps")  # hide
gmt("psconvert -A2p -Qg4 -Qt4 " * fname_ps * " -TG *")  # hide
GMT.current_cpt[1] = GMT.GMTcpt()   # hide
mv(joinpath(tempdir(), "GMTjl_tmp.png"), joinpath(@OUTPUT, "example_7540024690860658477.png"), force=true);    # hide
 
nothing # hide