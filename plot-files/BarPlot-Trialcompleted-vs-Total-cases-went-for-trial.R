```{r}
library(dplyr)
library(ggplot2)
datashr=read.csv("C:/Users/HP/Downloads/Book1.csv")
years=datashr %>% group_by(Year) %>% summarise_all(sum)
re=c(years$Total_Cases_for_Trial,years$Cases_Trials_Completed)
yearsT=matrix(re,byrow=TRUE,nrow=2)
name=years$Year
barplot(as.matrix(yearsT),main = "Total cases went for trial vs Trial completed",xlab ="Years", 
ylab="No. of Cases", col=rainbow(2),beside=TRUE,names.arg = name)
legend("topleft", c("Total Cases for Trial","TrialsCompleted"),cex=0.6, bty="n", fill=rainbow(2))
library(plotly)
barplot(data_percentage, border="white", ,main = "Total cases went for trial vs Trial 
completed",xlab ="Years", ylab="No. of Cases", col=c("Plum","Pink"),
names.arg = name)
abline(h=0)
text(barplot, data_percentage/2, labels = round(data_percentage, digits = 2))
```