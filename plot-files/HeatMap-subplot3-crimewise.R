```{r} 
library(data.table) 
54
library(readr) 
library(plotly) 
library(ggplot2) 
library(maps) 
library(wordcloud) 
library(RColorBrewer) 
data <- read_csv("C:/Users/HP/Downloads/maindat.csv") 
data<-subset(data,DISTRICT=="TOTAL",select = 1:10) 
data 
ay <- list( 
 title = "STATE", 
showticklabels = TRUE, 
 tickangle = 0, 
 exponentformat = "E" 
) 
ax <- list( 
 title = "Year", 
55
 showticklabels = TRUE, 
 tickangle = 0,
exponentformat = "E" 
) 
b1 <- list( 
 text = "Rape", 
 xref = "paper", 
 yref = "paper", 
 yanchor = "bottom", 
 xanchor = "center", 
 align = "center", 
 x = 0.5, 
 y = 1,
showarrow = FALSE) 
b12 <- list( 
 text = "Kidnapping and Abduction", 
 xref = "paper", 
 yref = "paper", 
 yanchor = "bottom", 
 xanchor = "center", 
 align = "center", 
 x = 0.5, 
 y = 1, 
 showarrow = FALSE) 
b13 <- list( 
 text = "Dowry Deaths",
xref = "paper", 
 yref = "paper", 
57
 yanchor = "bottom", 
 xanchor = "center", 
 align = "center", 
 x = 0.5, 
 y = 1, 
 showarrow = FALSE) 
hm1 <- plot_ly(data
,type = 'heatmap' 
 ,colors = colorRamp(c("lightgreen", "green", "darkgreen")) 
 ,x = ~Year 
 ,y = ~STATE 
 ,z = ~`Rape`)%>% 
 layout(showlegend = T 
 , xaxis = ax
, yaxis = ay 
 , annotations = b1) 
hm12 <- plot_ly(data 
 ,type = 'heatmap' 
 ,colors = colorRamp(c("lightblue", "blue", "darkblue")) 
 ,x = ~Year 
 ,y = ~STATE 
 ,z = ~`Kidnapping and Abduction`)%>% 
 layout(showlegend = T 
 , xaxis = ax 
 , yaxis = ay 
 , annotations = b12) 
hm13 <- plot_ly(data 
 ,type = 'heatmap' 
 ,colors = colorRamp(c("orange", "red", "darkred")) 
,x = ~Year 
59
 ,y = ~STATE 
 ,z = ~`Dowry Deaths`)%>% 
 layout(showlegend = T 
 , xaxis = ax 
 , yaxis = ay 
 , annotations = b13) 
subplot(hm1,hm12,hm13)

```

