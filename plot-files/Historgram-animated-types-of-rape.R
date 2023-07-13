```{r}
p <- ggplot(rapedata,aes(x=Rape_Cases_Reported)) +
geom_histogram(data=subset(rapedata,Subgroup == 'Total Rape Victims'),fill = "blue", alpha = 0.2) + 
geom_histogram(data=subset(rapedata,Subgroup == 'Victims of Incest Rape'),fill = "green", alpha = 
0.2) + 
geom_histogram(data=subset(rapedata,Subgroup == 'Victims of Other Rape'),fill = "red", alpha = 
0.2) + 
ggtitle("types of rapes ") +
 scale_x_continuous(trans = 'log2') +
 scale_y_continuous(trans = 'log2')
require(scales)
p + scale_y_continuous(trans = log2_trans(),
 breaks = trans_breaks("log2", function(x) 2^x),
 labels = trans_format("log2", math_format(2^.x)))
ggplotly(p)
```