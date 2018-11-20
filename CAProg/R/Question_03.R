
# --------------------------------------------------------------------------------------------------
# --------------------------------------------------------------------------------------------------

#Question Three

library(ggplot2)
getwd();
setwd("Users/Edel/Documents/GitHub/DataVisualisation/CAProg/");

#setwd("N:/Year_4/Data Visualisation 02/CA_01_StaticVisualisation/")

data <- read.csv(file="data/Influenza4D.csv", header= TRUE, sep = ",")


# ----------------------------------------------------------------------------------
# ----------------------------------------------------------------------------------


box <-  ggplot(data, aes(Gender, Age, colour = Patient.Type)) + theme_minimal()+ theme(axis.text.x=element_text(angle = -60, size = 8),
                                                                                             axis.ticks.x=element_blank(),
                                                                                             axis.text.y=element_blank(),
                                                                                             axis.ticks.y=element_blank(),
                                                                                             strip.text.y = element_text(angle = 360, size = 15))
box + geom_boxplot(outlier.shape = NA) + facet_wrap(~Disease)

# ----------------------------------------------------------------------------------
# ----------------------------------------------------------------------------------


violin <-  ggplot(data, aes(Gender, Age, colour = Patient.Type)) + theme_minimal() + theme(axis.text.x=element_text(angle = -60, size = 8),
                                                                                                      axis.ticks.x=element_blank(),
                                                                                                      axis.text.y=element_blank(),
                                                                                                      axis.ticks.y=element_blank(),
                                                                                                      strip.text.y = element_text(angle = 360, size = 15))
violin + geom_violin() + facet_wrap(~Disease)

# ----------------------------------------------------------------------------------
# ----------------------------------------------------------------------------------


jitter <- ggplot(data, aes(Gender, Age, colour = Patient.Type)) + theme_minimal() + theme(axis.text.x=element_text(angle = 0, size = 8),
                                                                                                         axis.ticks.x=element_blank(),
                                                                                                         axis.text.y=element_blank(),
                                                                                                         axis.ticks.y=element_blank(),
                                                                                                         strip.text.y = element_blank())
jitter + geom_jitter() + facet_grid(Patient.Type ~Disease)
