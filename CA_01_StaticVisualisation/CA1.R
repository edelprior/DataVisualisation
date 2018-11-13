getwd();
#ggplot(Influenza4D, aes("",Age))+geom_boxplot() +
 # facet_wrap(~Age +xlab("r") +
  #             ggtitle("Gender"))

#library(ggplot2)
# p1 <- qplot(gender, age, data = Influenza4D, color = cyl)
# p2 <- qplot(gender, data = Influenza4D) + ggtitle("title")
# p3 <- qplot(gender, data = Influenza4D, geom = "dotplot")
# <-
#  p1 + facet_wrap( ~ carb, nrow = 1) + theme(legend.position = "none") + ggtitle("facettedplot")

# facet_grid(rows = NULL, cols = NULL, scales = fixed, space="fixed", shrink=TRUE, switch = NULL, 
  #         drop= TRUE, margins = FALSE, facets = NULL)

Influenza4D <= ggplot(data, aes(Patient,Type, Age, fill = Gender, colour))

x + geom_boxplot() + facet_wrap(~Disease)

xyz <= ggplot(data, aes(Patient.Type, Age, fill= Gender, color = Gender))
xyz + geom_boxplot() + geom_violin() + geom_jitter()
xyz + facet_wrap(~Disease)

##__________________________________________________________________________________________________
##__________________________________________________________________________________________________

# Question Four
cancer3D <- read.csv("~/Documents/GitHub/DataVisualisation/CA_01_StaticVisualisation/Data/cancer3D.csv", header=TRUE, sep=",")

library(ggplot2)
ggplot(canctype,aes("",sex))+ geom_boxplot() +
  facet_wrap(~age_group)+xlab("Label") +
  ggtitle("Title")


ggplot(canctype, aes("",Number))+geom_boxplot(fill = "red")+ facet_wrap(~Apprentice,ncol = 6,scales = "free") + theme(axis.text.x=element_text(angle = -90,size =5))+theme(strip.background = element_rect(fill = "grey20",colour = "grey80",size =1),strip.text = element_text(colour = "white"))
t.test(cancer3D$ canctype, cancer3D$age_group,paired = TRUE)

