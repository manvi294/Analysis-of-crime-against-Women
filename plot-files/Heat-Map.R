```{r}
library(ggplot2)
library(maptools)
library(rgeos)
library(ggmap)
library(tmap)
library(scales)
library(RColorBrewer)
library(dplyr)
library(sf)
shp <- st_read('D:/New folder/DATA VISUALIZATION/India States/indian_states.shp')
datashr=read.csv("C:/Users/HP/Downloads/maps1.csv")
datashr
names(shp)
print(shp$ST_NM)
shp.f <- fortify(shp, region = "ST_NM")
merge.shp.coef<-merge(shp.f,datashr, by="st_nm", all.x=TRUE)
final.plot<-merge.shp.coef[order(merge.shp.coef$Rape), ]
final.plot 
tm_shape(final.plot)+tm_polygons(col="Rape")+tm_layout(legend.outside = 
TRUE)+tmap_options(check.and.fix = TRUE)
#palette = "Pastel1" add this command with the palette name tp tm_polygons() for different colours
```