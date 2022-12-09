
#Sriramteja Veerisetti
#Ellipse Unweighted

library(dplyr)
library(tidyverse)
#install.packages('ggforce')
library(ggforce)
#install.packages("plotly")
library(plotly)

pca_data <- read_csv('/Users/sveerisetti/Desktop/Import/pca_data_unweighted.csv')
pca_data <- pca_data[, -1]

Variable <- pca_data$Variable 
Group <- pca_data$Group

PCA <- pca_data %>%
  ggplot(aes(x = PC1, y = PC2))+
  geom_point(aes(color = Group))+
  geom_mark_ellipse(aes(fill = Variable,label = Variable),
                    expand = unit(0.5,"mm"),
                    label.buffer = unit(-5, 'mm'))+
  xlab('PC1 -Percent variation explained 17.634%')+
  ylab('PC2 -Percent variation explained 9.9729%')+
  xlim(-0.5, 0.5)+
  ylim(-0.3, 0.4)

PCA
  
  
  


