# loading llibrary
```{r}
library(ggplot2)
library(plotly)
library(dplyr)
library(ggvis)
library(xts) # To make the convertion data-frame / xts format
library(tidyverse)
library(lubridate)
library(ggridges)
library(ggplot2)
library(tidyr)
library(tmap)
library(forcats)
library(shiny)
library(corrplot)
library(GGally)
library(treemap)
library(data.table) 
library(readr) 
library(plotly) 
library(ggplot2) 
library(maps)
library(shiny)
```
47
# data sets
```{r}
rapedata <- read.csv("C:/Users/HP/Downloads/20_Victims_of_rape.csv")
arrestdata <- read.csv("C:/Users/HP/Downloads/43_Arrests_under_crime_against_women.csv")
agedata <- read.delim("C:/Users/HP/Downloads/data1.txt")
cases <- read.csv("C:/Users/HP/Downloads/crimes against women 20012014.csv")