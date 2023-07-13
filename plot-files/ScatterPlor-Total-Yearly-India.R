```{r}
trial=subset(rapedata, Subgroup=="Total Rape Victims")
scatterplot<-ggplot(data=trial, aes(x=Rape_Cases_Reported, y=ï..Area_Name, 
col=Year))+geom_point() + ggtitle("Yearly Areawise total number of rape cases reprted in INDIA")
ggplotly(scatterplot)
```