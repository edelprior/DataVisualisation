
#Question Three
#getwd();
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

# --------------------------------------------------------------------------------------------------
# --------------------------------------------------------------------------------------------------

# Question Four

cancer3D <- read.csv("/Year_4/Data Visualisation 02/CA_01_StaticVisualisation/Data/cancer3D.csv", header=TRUE, sep=",")

library(ggplot2)

ggplot(cancer3D, aes(age_group, sex, fill=sex))+geom_bar(stat="identity") + xlab("")+
  ylab("")+ggtitle("Bar Chart Plot")+
  guides(fill=guide_legend(title="Sex"))+
  theme_minimal()+
  theme(axis.text.x=element_text(angle = -90, size = 5),
        axis.ticks.x=element_blank(),
        axis.text.y=element_blank(),
        axis.ticks.y=element_blank(),
        strip.text.y = element_text(angle = 360))+
  facet_grid(cancer~ sex, scales = "free")
