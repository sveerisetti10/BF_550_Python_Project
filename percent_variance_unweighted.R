


#' @details In order to find the percent variance, I decided to use R 
#' to run another pcoa test. Here, however, I can find the eigen value, which 
#' can be used in order to calculate the Variance1 and Variance 2. 


#Here we want to import our data 
distance_matrix <- read_csv('/Users/sveerisetti/Desktop/Boston_University/Semester2/BF_550_Python/Final_Project/Bee_data/CSV_PCoA_Data/Unweighted_PCOA_Data.csv')
distance_matrix <- as.data.frame(distance_matrix)
rownames(distance_matrix) <- distance_matrix$Gene
distance_matrix <- distance_matrix[,-c(1)]

my_unweight_pcoa <- cmdscale(distance_matrix, eig=TRUE) 
colnames(my_unweight_pcoa$points) <- c('pcoa1','pcoa1')

#Here we can use the eigenvals() function in order to garner the eigen values 

Eigen_values <- eigenvals(my_unweight_pcoa)
Variance <- Eigen_values[1:55] / sum(Eigen_values[1:55]) 
Variance1 <- 100 * signif(Variance[1])
Variance2 <- 100 * signif(Variance[2])

#Print Results}
Variance1
Variance2
