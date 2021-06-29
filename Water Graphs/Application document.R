#Packages

library("ggplot2")

library("RColorBrewer")

#setting working directory
setwd("C:/Users/Tea/Documents/R/")

#uploading data from excel and setting as Pingu
WaterPercents <- read.csv("Percents.csv", header = T)

#quick look... 
head(WaterPercents)
names(WaterPercents)
str(WaterPercents)
        
#boxplot for data
ggplot(data = WaterPercents, aes(x = reorder(Usage.Categories, Percent.change.from.2010.withdrawal.levels), y = Percent.change.from.2010.withdrawal.levels, fill = Usage.Categories )) + 
  geom_col() +
  xlab("Usage Categories") +
  ylab("Percentage of withdrawal difference from 2010 Report") +
  theme_dark()+
  theme(axis.text=element_text(size=7))+
  theme(legend.position = "none")+
  scale_fill_brewer(palette = "Blues")


