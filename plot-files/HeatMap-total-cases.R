```{r}
library(data.table) 
library(readr) 
library(plotly) 
library(ggplot2) 
library(maps) 
library(wordcloud) 
library(RColorBrewer) 
data <- read.delim("C:/Users/HP/Downloads/newdat.txt") 
ax <- list( 
 title = "Month", 
 showticklabels = TRUE, 
 tickangle = 0, 
 exponentformat = "E" 
) 
ay <- list( 
 title = "Nature", 
 showticklabels = TRUE, 
 tickangle = 0, 
 exponentformat = "E" 
) 
b1 <- list(
 text = "Total cases reported", 
 xref = "paper", 
 yref = "paper", 
 yanchor = "bottom", 
 xanchor = "center", 
 align = "center", 
 x = 0.5, 
 y = 1, 
 showarrow = FALSE) 
hm1 <- plot_ly(data 
 ,type = 'heatmap' 
 ,col= brewer.pal(n = 3, name = "Spectral") 
 ,x = ~Month 
 ,y = ~Nature 
 ,z = ~`Rate`)%>%
 layout(showlegend = T 
 , xaxis = ax 
 , yaxis = ay 
 , annotations = b1) 
hm1 
```