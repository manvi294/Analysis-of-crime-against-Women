```{r} 
library(data.table) 
library(readr) 
library(plotly) 
library(ggplot2) 
library(maps) 
library(wordcloud) 
library(RColorBrewer) 
data <- read_csv("C:/Users/HP/Downloads/Victims_of_rape2.csv") 
data 
data<-subset(data,Subgroup=="Total Rape Victims",select = 1:12) 
data 
data$year <- sapply(data$Year, function(x){ 
 ifelse(x==2010,"11) 2010", 
 ifelse(x==2009,"10) 2009", 
 ifelse(x==2008,"9) 2008", 
 ifelse(x==2007,"8) 2007", 
 ifelse(x==2006,"7) 2006", 
 ifelse(x==2005,"6) 2005", 
 ifelse(x==2004,"5) 2004", 
 ifelse(x==2003,"4) 2003",
ifelse(x==2002,"3) 2002", 
 ifelse(x==2001,"2) 2001", 
 ifelse(x>=2000,"1) 2000" ))))))))))) 
 
}) 
 
data 
plot_ly(data,type = 'scatter' 
 ,mode = 'markers' 
 ,hoverinfo = 'text' 
 ,x = ~Victims_Above_50_Yrs 
 ,y = ~Victims_btw_10_50 
 ,frame = ~year 
 ,size = ~`Rape_Cases_Reported`
 ,color = "Red" 
 ,colors = c('Red') 
 ,alpha = 0.9 
 ,text = ~paste("Location: ", Area_Name 
 ,'\n Year: ', Year 
 ,'\n Total victims : ', `Rape_Cases_Reported` 
 ,'\n Above 50 yrs : ', `Victims_Above_50_Yrs` 
 ,'\n Between 10 to 50 yrs : ', `Victims_btw_10_50`)) %>% 
 layout(title = "Animated History of incidents by centuries" 
 ,showlegend = F 
 ) %>% 
 animation_opts( 1500, redraw = FALSE ) 
```


