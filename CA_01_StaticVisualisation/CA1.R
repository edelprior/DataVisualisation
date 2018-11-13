getwd();
#ggplot(Influenza4D, aes("",Age))+geom_boxplot() +
 # facet_wrap(~Age +xlab("r") +
  #             ggtitle("Gender"))

library(ggplot2)
p1 <- qplot(gender, age, data = Influenza4D, color = cyl)
p2 <- qplot(gender, data = Influenza4D) + ggtitle("title")
p3 <- qplot(gender, data = Influenza4D, geom = "dotplot")
<-
  p1 + facet_wrap( ~ carb, nrow = 1) + theme(legend.position = "none") + ggtitle("facettedplot")