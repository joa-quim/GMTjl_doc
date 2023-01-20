# This file was generated, do not modify it. # hide
begin # hide
	using GMT   # hide
	GMT.isFranklin[1] = true    # hide
	getpath4docs(file::String) = joinpath("..", "..", "..", "..", "..", file) # hide
	using GMT

arrows([1 14 0 5], limits=(-5,100,1,15), figsize=(15,10), pen=2, arrow=(len=0,), 
       frame=:none, title="Vector heads and tails")
text!(["arrow=(len=0,)"], x=40, y=14, font=8, justify=:LM)
arrows!([1 13 0 5], pen=2, arrow=(len=0.6, start=:open_arrow, stop=:open_arrow, angle=50))
text!(["arrow=(len=0.6, start=:open_arrow, stop=:open_arrow, angle=50)"], x=40, y=13, font=8, justify=:LM)
arrows!([1 12 0 5], pen=2, arrow=(len=0.4, start=:open_tail, stop=:open_tail))
text!(["arrow=(len=0.4, start=:open_tail, stop=:open_tail)"], x=40, y=12, font=8, justify=:LM)
arrows!([1 11 0 5], pen=2, arrow=(len=0.3, start=:line, stop=:line, angle=80))
text!(["arrow=(len=0.3, start=:line, stop=:line, angle=80)"], x=40, y=11, font=8, justify=:LM)
arrows!([1 10 0 5], pen=2, arrow=(len=0.6, stop=true), fill=:red3)
text!(["arrow=(len=0.6, stop=true)"], x=40, y=10, font=8, justify=:LM)
arrows!([1  9 0 5], pen=2, arrow=(len=0.6, start=:circle, stop=true), fill=:red3)
text!(["arrow=(len=0.6, start=:circle, stop=true)"], x=40, y=9, font=8, justify=:LM)
arrows!([1  8 0 5], pen=2, arrow=(len=0.6, start=:line, stop=true), fill=:red3)
text!(["arrow=(len=0.6, start=:line, stop=true)"], x=40, y=8, font=8, justify=:LM)
arrows!([1  7 0 5], pen=2, arrow=(len=1, stop=true, shape=0.5), fill=:red3)
text!(["arrow=(len=1, stop=true, shape=0.5)"], x=40, y=7, font=8, justify=:LM)
arrows!([1  6 0 5], pen=2, arrow=(len=1, start=true, stop=true, shape=0.5), fill=:red3)
text!(["arrow=(len=1, start=true, stop=true, shape=0.5)"], x=40, y=6, font=8, justify=:LM)
arrows!([1  5 0 5], pen=2, arrow=(len=1, start=:tail, stop=true, shape=0.5), fill=:red3)
text!(["arrow=(len=1, start=:tail, stop=true, shape=0.5)"], x=40, y=5, font=8, justify=:LM)
arrows!([1  4 0 5], pen=2, arrow=(len=1, start=:right, stop=true, shape=0.5), fill=:red3)
text!(["arrow=(len=1, start=:right, stop=true, shape=0.5)"], x=40, y=4, font=8, justify=:LM)
arrows!([1  3 0 5], pen=2, arrow=(len=1, start=:right, stop=:left, shape=0.5), fill=:red3)
text!(["arrow=(len=1, start=:right, stop=:left, shape=0.5)"], x=40, y=3, font=8, justify=:LM)
arrows!([1  2 0 5], pen=2, arrow=(len=1, start=:tail, stop=true, half=:right, shape=0.5, angle=45), fill=:red3)
text!(["arrow=(len=1, start=:tail, stop=true, half=:right, shape=0.5, angle=45)"], x=40, y=2, font=8, justify=:LM)
showfig()
end # hide
mv(joinpath(tempdir(), "GMTjl_tmp.png"), joinpath(@OUTPUT, "example_1768977753467872075.png"), force=true);    # hide
GMT.isFranklin[1] = false    # hide
GMT.IamModern[1]  = false    # hide
 
nothing # hide