
# --------------------------------------------------------------------------------------------------
# --------------------------------------------------------------------------------------------------

# Question 2 (IV)
getwd()
#setwd("N:/Year_4/Data Viz/CA1")

cover <- read.csv(file="data/question2.csv", header= TRUE, sep = ",")

mosaic(xtabs(Price ~ Company + Cover,  data=cover),direction = c("v", "h"),gp = gpar(fill = c("red", "black")))
library(mosaic)                                                                                     
                                                                                     
