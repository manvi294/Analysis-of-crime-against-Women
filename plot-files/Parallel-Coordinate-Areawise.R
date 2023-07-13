# parallel coordinates
```{r}
a<-ggparcoord(data=rapedata,columns=4:10,groupColumn = "ï..Area_Name")+
 scale_x_discrete(guide = guide_axis(n.dodge = 4))
ggplotly(a)
```