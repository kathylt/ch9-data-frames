# Exercise 3: working with built-in data sets

# Load R's "USPersonalExpenditure" dataset using the `data()` function
# This will produce a data frame called `USPersonalExpenditure`
data("USPersonalExpenditure")

# The variable `USPersonalExpenditure` is now accessible to you. Unfortunately,
# it's not a data frame (it's actually what is called a matrix)
# Test this using the `is.data.frame()` function
is.data.frame(USPersonalExpenditure)

# Luckily, you can pass the USPersonalExpenditure variable as an argument to the
# `data.frame()` function to convert it a data farm. Do this, storing the
# result in a new variable
US_personal_exp_df <- data.frame(USPersonalExpenditure, stringsAsFactors = FALSE)

# What are the column names of your dataframe?
colnames(US_personal_exp_df)
"X1940" "X1945" "X1950" "X1955" "X1960"

## Consider: why are they so strange? Think about whether you could use a number 
## like 1940 with dollar notation!

# What are the row names of your dataframe?
rownames(US_personal_exp_df)
"Food and Tobacco"    "Household Operation" "Medical and Health" 
"Personal Care"       "Private Education"  

# Add a column "category" to your data frame that contains the rownames
US_personal_exp_df$category <- rownames(US_personal_exp_df)

# How much money was spent on personal care in 1940?
US_personal_exp_df["Personal Care", "X1940"]

# How much money was spent on Food and Tobacco in 1960?
US_personal_exp_df["Food and Tobacco", "X1960"]

# What was the highest expenditure category in 1960?
max(US_personal_exp_df$X1960)

# Define a function `lowest_category` that takes in a year as a parameter, and
# returns the lowest spending category of that year
lowest_category <- function(year) {
  min(category, year)
}

# Using your function, determine the lowest spending category of each year
# Hint: use the `sapply()` function to apply your function to a vector of years
sapply(lowest_category(colnames(US_personal_exp_df))

       