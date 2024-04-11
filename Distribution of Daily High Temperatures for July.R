library(ggplot2)
temperature_data <- read.csv("D:\\synthetic_temperature_data.csv")

head(temperature_data)

ggplot(temperature_data, aes(x=HighTemp)) +
  geom_histogram(bins=30, fill="blue", color="black") +
  labs(title="Histogram of Daily High Temperatures in July",
       x="Temperature (°C)",
       y="Frequency") +
  theme_minimal()

