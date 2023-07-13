```{r}
library(data.table)
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
66
 title = "Year",
 showticklabels = TRUE,
 tickangle = 0,
 exponentformat = "E" )
b1 <
- list(
 text = "Rape",
 xref = "paper",
 yref = "paper",
 yanchor = "bottom",
 xanchor = "center",
 align = "center",
 x = 0.5,
 y = 1,
 showarrow = FALSE)
hm11 <
- plot_ly(data
 ,type = 'heatmap'
 ,col=brewer.pal(n=3,"RdPu")
 ,x = ~Year
 ,y = ~STATE
 ,z = ~`Rape`)%>%
 layout(showlegend = T
 , xaxis = ax
 , yaxis = ay
 , annotations = b1)
hm11
```
