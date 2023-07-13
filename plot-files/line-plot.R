library(dplyr)
library(ggplot2)
library(plotly)
datashr=read.csv("C:/Users/HP/Downloads/crimes against women 20012014.csv")
years=datashr[,3:10] %>% group_by(Year) %>% summarise_all(sum)
years
p=ggplot(data=years,aes(Year)) +geom_line(aes(y= Rape, col="RAPE"))+ geom_line(aes(y= 
Kidnapping.and.Abduction, col="Kidnapping.and.Abduction"))+ geom_line(aes(y=Dowry.Deaths, 
col="Dowry.Deaths"))+ geom_line(aes(y= Assault.on.women.with.intent.to.outrage.her.modesty, 
col="Assault.on.women.with.intent.to.outrage.her.modesty"))+ geom_line(aes(y= 
Insult.to.modesty.of.Women, col="Insult.to.modesty.of.Women"))+ 
geom_line(aes(y=Cruelty.by.Husband.or.his.Relatives, col="Cruelty.by.Husband.or.his.Relatives"))+ 
geom_line(aes(y=Importation.of.Girls , col="Importation.of.Girls")) + ggtitle('Crime Against Women 
in India(2001-2014)')
ggplotly(p)