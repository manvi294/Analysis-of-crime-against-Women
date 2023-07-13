```{r}
data3=read.delim("C:/Users/HP/Downloads/newdat.txt")
data3=data.frame(data3)
yform <- list(categoryorder = "array",
categoryarray = c("Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec")) 
data3 %>% plot_ly(x = ~Rate, y = ~Month, color = ~Nature,orientation='h') %>%
add_bars() %>%
layout(barmode = "stack", yaxis=yform)
```