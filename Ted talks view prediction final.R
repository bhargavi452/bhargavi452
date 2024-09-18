# Load required libraries
library(ggplot2)

# Read the CSV file
df <- read.csv("C:/Users/PRANATHI/Downloads/data_ted_talks.csv")# Adjust file path as needed

# Select the features and target variable
X <- df$views  # Features (independent variable)
y <- df$duration  # Target variable (dependent variable)

# Create a linear regression model
model <- lm(y ~ X)

# Summary of the model
summary(model)

# Predictions based on the model
y_pred <- predict(model)

# Plot the data and the regression line
ggplot(df, aes(x = views, y = duration)) +
  geom_point(color = "blue") +
  geom_line(aes(y = y_pred), color = "red") +
  labs(x = "Views", y = "Duration", title = "Linear Regression of Views vs Duration") +
  theme_minimal()
