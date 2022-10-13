# Feathers


```julia
uv = [0.0 0 2.0; 0.0 30 2; 0.0 60 2; 0.0 90 2; 0.0 120 2; 0.0 150 2; 0.0 180 2; 0.0 210 2; 0.0 240 2; 0.0 270 2; 0.0 300 2; 0.0 330 2; 0.0 360 2]
```


\begin{examplefig}{}
```julia
using GMT
uv = [0.0 0 2.0; 0.0 30 2; 0.0 60 2; 0.0 90 2; 0.0 120 2; 0.0 150 2; 0.0 180 2; 0.0 210 2; 0.0 240 2; 0.0 270 2; 0.0 300 2; 0.0 330 2; 0.0 360 2];
feather(uv, rtheta=true, aspect="1:1", arrow=(len=0.5, shape=0.5,),
        lw=0.5, fill=:green, show=true)
```
\end{examplefig}
