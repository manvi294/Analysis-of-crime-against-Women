```{r}
treemap(rapedata, index=c("ï..Area_Name","Year"), vSize="Rape_Cases_Reported", type="index",
 fontsize.labels=c(15,12), 
 fontcolor.labels=c("white","plum"), 
 fontface.labels=c(2,1), 
 bg.labels=c("transparent"), 
 align.labels=list(
 c("center", "center"), 
 c("right", "bottom")
 ), 
 overlap.labels=0.5, 
 inflate.labels=F, 
)
```