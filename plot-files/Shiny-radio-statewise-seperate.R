```{r}
ui<-fluidPage(
 titlePanel("statewise"),
 sidebarLayout(
 sidebarPanel(
49
 radioButtons("p","Select Column:", list("Tamil Nadu"='a', "West Bengal"='b', "Uttar Pradesh"='c',
 "Madhya Pradesh"='d', "Maharashtra"='e', "Goa"='f'))
 ),
 mainPanel(
 plotOutput("distPlot")
 )
 )
)
server<-function(input,output)
{
 output$distPlot<-renderPlot({
 if(input$p=='a'){
 i<-"Tamil Nadu"
 }
 if(input$p=='b'){
 i<-"West Bengal"
 }
 if(input$p=='c'){
 i<-"Uttar Pradesh"
 }
 if(input$p=='d'){
 i<-"Madhya Pradesh"
 }
 if(input$p=='e'){
 i<-"Maharashtra"
 }
 if(input$p=='f'){
 i<-"Goa"
 }
g <- subset(rapedata, Subgroup='Total Rape Victims') %>% 
 group_by(ï..Area_Name) %>%
 plot_ly(x = ~Year, y = ~Rape_Cases_Reported)%>%
 add_lines(
 type = "scatter", mode = "lines", 
 line = list(color = 'rgba(192,192,192,0.4)')) %>%
 add_lines(name = i, 
 data = filter(rapedata, 
 ï..Area_Name %in% c(i)),
 line = list(color = c("red", "blue")),
 color = ~Subgroup)
 g
 })
}
shinyApp(ui, server)
```
