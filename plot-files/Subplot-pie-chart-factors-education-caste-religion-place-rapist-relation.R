```{r QUESTION 3}
#TABLE 2
library(RColorBrewer)
library(plotly)
library(ggplot2)
63
library(dplyr)
data <- read.delim("C:/Users/HP/Downloads/data2.txt")
a <- ggplot(data, aes(x=Educational.level.of.the.victim,y=Prevalence, fill="Orange")) + 
geom_bar(stat="identity")
a<- a+ coord_flip()
a6 <- ggplotly(a)
#TABLE 4
library(plotrix)
data <- read.delim("C:/Users/HP/Downloads/data4.txt")
p<-ggplot(data, aes(x=Caste.of.the.Victim,y=Prevalence, fill="Orange")) + geom_bar(stat="identity")
p <- p +coord_flip()
a1 <- ggplotly(p)
#TABLE 5
library(RColorBrewer)
data <- read.delim("C:/Users/HP/Downloads/data5.txt")
c <- ggplot(data, aes(x=Religion.of.Victim,y=Prevalence, fill="Orange")) + geom_bar(stat="identity")
c <- c +coord_flip()
a2 <- ggplotly(c)
#QUESTION 4
#TABLE 3
data <- read.delim("C:/Users/HP/Downloads/data3.txt")
d <- ggplot(data, aes(x=Accused,y=Prevalence, fill="Orange")) + geom_bar(stat="identity")
d <- d +coord_flip()
a3 <- ggplotly(d)
#TABLE 6
library(RColorBrewer)
data <- read.delim("C:/Users/HP/Downloads/data7.txt")
e <- ggplot(data, aes(x=Where.did.the.crime.take.place,y=Prevalence, fill="Orange")) + 
geom_bar(stat="identity")
e <- e +coord_flip()
a4 <- ggplotly(e)
#QUESTION 5
library(plotrix)
library(RColorBrewer)
data <- read.delim("C:/Users/HP/Downloads/data6.txt")
f <- ggplot(data, aes(x=When.were.victim.medically.examined,y=Prevalence, fill="Orange")) + 
geom_bar(stat="identity")
f <- f +coord_flip()
a5 <- ggplotly(f)
fig <- subplot(a1, a2, a3, a4, a5, a6, nrows = 3)
fig

```