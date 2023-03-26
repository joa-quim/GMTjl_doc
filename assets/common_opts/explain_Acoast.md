- **-A** or **area** : -- *area=(min\_area[,min\_level,max\_level]), river\_lake=true, lake=true, antarctica\_ground=true, skip60S=true, skipN60S=true, percent=pct)*\
   Features with an area smaller than *min\_area* in km^2 or of hierarchical level that is lower than *min\_level* or higher than *max\_level* will not be plotted [Default is 0/0/4 (all features)]. Level 2 (lakes) contains regular lakes and wide river bodies which we normally include as lakes; use **river\_lake=true** to just get river-lakes or **lake=true** to just get regular lakes. By default we select the ice shelf boundary as the coastline for Antarctica; use **antarctica\_ground=true** to instead select the ice grounding line as coastline. For expert users who wish to print their own Antarctica coastline and islands via `plot` you can use **skip60S=true** to skip all GSHHG features below 60S or **skipN60S=true** to instead skip all features north of 60S. Finally, append **percent=pct** to exclude polygons whose percentage area of the corresponding full-resolution feature is less than *pct*.