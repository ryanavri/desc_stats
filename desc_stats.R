#LIKERT SCALE####

# library
library(likert) 

# Use a provided dataset
data(pisaitems) 
items28 <- pisaitems[, substr(names(pisaitems), 1, 5) == "ST24Q"] 

# or make dataset
data1 <- factor(c("Setuju", "Sangat Setuju", "Netral", "Sangat tidak setuju", "Netral", "Setuju", "Sangat Setuju", "Sangat Setuju", "Setuju", "Sangat Setuju", "Setuju", "Setuju", "Sangat Setuju", "Setuju", "Sangat Setuju", "Setuju", "Sangat Setuju", "Tidak setuju", "Setuju", "Sangat Setuju", "Sangat tidak setuju", "Sangat Setuju", "Sangat Setuju", "Sangat tidak setuju", "Setuju", "Sangat Setuju", "Sangat tidak setuju", "Sangat tidak setuju"),
                levels = c("Sangat tidak setuju", "Tidak setuju", "Netral", "Sangat Setuju", "Setuju"))

data1 <- as.data.frame(data1) #make sure to run this

# Build plot
p <- likert(data1) 
plot(p)