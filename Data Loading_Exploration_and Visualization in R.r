# Load the 'readr' package for reading data from URLs
install.packages("readr")  # Run this line if 'readr' is not already installed
library(readr)

# Load data from the CSV file on GitHub
data <- read_csv("https://raw.githubusercontent.com/FarshidKeivanian/Sessions_R/main/Employee_Data.csv")

# Display the first few rows of the dataset
head(data)

# Summary statistics for each column
summary(data)

# Basic visualization: Histogram of the Age column
hist(data$Age, main="Age Distribution", xlab="Age", col="lightblue", border="black")

# Scatter plot for Age vs. Salary
plot(data$Age, data$Salary, main="Age vs Salary", xlab="Age", ylab="Salary", pch=19, col="blue")
