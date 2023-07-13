# scatterplot 
```{r}
p <- rapedata %>%
 ggplot( aes(Rape_Cases_Reported, Victims_Upto_10_Yrs, color=ï..Area_Name)) +
 geom_point() +
 theme_bw()
ggplotly(p)
68
```
