# Load data from the CSV file
data <- read.csv("path_to_your_directory/sample_data.csv")

# Display the first few rows of the dataset
head(data)

# Summary statistics for each column
summary(data)

# Basic visualization: Histogram of the Age column
hist(data$Age, main="Age Distribution", xlab="Age", col="lightblue", border="black")

# Scatter plot for Age vs. Salary
plot(data$Age, data$Salary, main="Age vs Salary", xlab="Age", ylab="Salary", pch=19, col="blue")
