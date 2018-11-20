
# --------------------------------------------------------------------------------------------------
# --------------------------------------------------------------------------------------------------

# Question Four


library(ggplot2)
getwd();

cancer3D <- read.csv(file="data/cancer3D.csv", header= TRUE, sep = ",")

#cancer3D <- read.csv("/Year_4/Data Visualisation 02/CA_01_StaticVisualisation/Data/cancer3D.csv", header=TRUE, sep=",")

ggplot(cancer3D, aes(age_group, sex, fill=sex))+geom_bar(stat="identity") + xlab("")+
  ylab("")+ggtitle("Bar Chart Cancer")+
  guides(fill=guide_legend(title="Sex"))+
  theme_minimal()+
  theme(axis.text.x=element_text(angle = -90, size = 5),
        axis.ticks.x=element_blank(),
        axis.text.y=element_blank(),
        axis.ticks.y=element_blank(),
        strip.text.y = element_text(angle = 360))+
  facet_grid(cancer~ sex, scales = "free")
