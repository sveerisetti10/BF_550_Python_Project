
#Ellipse Weighted
library(dplyr)
library(tidyverse)
#install.packages('ggforce')
library(ggforce)
#install.packages("plotly")
library(plotly)
library(ggfortify)


pca_data <- read_csv('/Users/sveerisetti/Desktop/Import/pca_data_weighted.csv')
pca_data <- pca_data[, -1]
pca_data$PC1 <- pca_data$PC1 * c(-1)

Variable <- pca_data$Variable 
Group <- pca_data$Group
pca_data <- pca_data[,-c(3,4)]

PCA <- pca_data %>%
  ggplot(aes(x = PC1, y = PC2))+
  geom_point(aes(color = Group))+
  geom_mark_ellipse(aes(fill = Variable,label = Variable),
                    expand = unit(0.5,"mm"),
                    label.buffer = unit(-5, 'mm'))+
  xlab('PC1 -Percent variation explained 57.343%')+
  ylab('PC2 -Percent variation explained 10.369%')+
  xlim(-0.5, 0.5)+
  ylim(-0.3, 0.4)

PCA





