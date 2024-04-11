set.seed(123) # For reproducibility

# Sample data generation
customer_data <- data.frame(
  CustomerID = 1:100,
  Age = sample(18:70, 100, replace = TRUE),
  Country = sample(c("USA", "Canada", "UK", "Australia"), 100, replace = TRUE),
  AnnualSpending = round(rnorm(100, mean=500, sd=120))
)

head(customer_data)

if(!require(dplyr)) install.packages("dplyr")
library(dplyr)



usa_high_spenders <- customer_data %>%
  filter(Country == "USA", AnnualSpending > 500)

print(usa_high_spenders)




selected_info <- usa_high_spenders %>%
  select(CustomerID, AnnualSpending)

print(selected_info)


customer_data <- customer_data %>%
  mutate(AgeGroup = ifelse(Age <= 35, "Young", ifelse(Age <= 60, "Middle-aged", "Senior")))

print(customer_data)


average_spending <- customer_data %>%
  group_by(AgeGroup) %>%
  summarise(AverageSpending = mean(AnnualSpending))

print(average_spending)
