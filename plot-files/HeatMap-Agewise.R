```{r} 
library(data.table)
library(readr)
library(plotly)
library(ggplot2)
library(maps)
library(wordcloud)
library(RColorBrewer)
data <- read_csv("C:/Users/HP/Downloads//Victims_of_rape2.csv")
data
data<-subset(data,Subgroup=="Total Rape Victims",select = 1:12)
data
ay <- list( 
 title = "Area_Name", 
 showticklabels = TRUE, 
 tickangle = 0, 
 exponentformat = "E" 
69
) 
ax <- list( 
 title = "Year", 
 showticklabels = TRUE, 
 tickangle = 0, 
 exponentformat = "E" 
) 
b1 <- list( 
 text = "Rape_Cases_Reported", 
 xref = "paper", 
 yref = "paper", 
 yanchor = "bottom", 
 xanchor = "center", 
 align = "center", 
 x = 0.5, 
70
 y = 1, 
 showarrow = FALSE) 
b2 <- list( 
 text = "Victims_Above_50_Yrs", 
 xref = "paper", 
 yref = "paper", 
 yanchor = "bottom", 
 xanchor = "center", 
 align = "center", 
 x = 0.5, 
 y = 1, 
 showarrow = FALSE) 
b3 <- list( 
71
 text = "Victims_Upto_10_Yrs", 
 xref = "paper", 
 yref = "paper", 
 yanchor = "bottom", 
 xanchor = "center", 
 align = "center", 
 x = 0.5, 
 y = 1, 
 showarrow = FALSE) 
b4 <- list( 
 text = "Victims_btw_10_50",
 xref = "paper", 
 yref = "paper", 
 yanchor = "bottom", 
 xanchor = "center", 
72
 align = "center", 
 x = 0.5, 
 y = 1, 
 showarrow = FALSE) 
hm11 <- plot_ly(data 
 ,type = 'heatmap' 
 ,col=brewer.pal(n=3,"RdPu") 
 ,x = ~Year 
 ,y = ~Area_Name 
 ,z = ~`Rape_Cases_Reported`)%>% 
 layout(showlegend = T 
 , xaxis = ax 
 , yaxis = ay 
 , annotations = b1) 
73
hm12 <- plot_ly(data 
 ,type = 'heatmap' 
 ,col=brewer.pal(n=3,"RdPu") 
 ,x = ~Year 
 ,y = ~Area_Name 
 ,z = ~`Victims_Above_50_Yrs`)%>% 
 layout(showlegend = T 
 , xaxis = ax 
 , yaxis = ay 
 , annotations = b2) 
hm13 <- plot_ly(data 
 ,type = 'heatmap' 
 ,col=brewer.pal(n=3,"RdPu") 
 ,x = ~Year 
74
 ,y = ~Area_Name 
 ,z = ~`Victims_Upto_10_Yrs`)%>% 
 layout(showlegend = T 
 , xaxis = ax 
 , yaxis = ay 
 , annotations = b3) 
hm14 <- plot_ly(data 
 ,type = 'heatmap' 
 ,col=brewer.pal(n=3,"RdPu") 
 ,x = ~Year 
 ,y = ~Area_Name 
 ,z = ~`Victims_btw_10_50`)%>% 
 layout(showlegend = T 
 , xaxis = ax 
 , yaxis = ay 
75
 , annotations = b4) 
subplot(hm11,hm12,hm13,hm14) 
``` 