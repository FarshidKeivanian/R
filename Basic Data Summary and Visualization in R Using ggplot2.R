# Example of basic data manipulation and plotting in R

# Load necessary library
library(ggplot2)

# Create a simple data frame
data <- data.frame(
  Category = factor(c("A", "B", "A", "C", "B", "A", "C", "B")),
  Value = c(23, 45, 65, 78, 89, 12, 56, 9)
)

# Basic summary of data
summary(data$Value)

# Plotting the data
ggplot(data, aes(x=Category, y=Value, fill=Category)) + 
  geom_bar(stat="identity")
