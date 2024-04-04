data <- read.csv("SUSsvarNy23.csv", sep=";")#read data and define semicolon as separator

normalize_to_SUS <- function(row) {
    sum_odd <- sum(row[c(TRUE, FALSE)]) - 5 #calculates sum of all odd numbered questions
    sum_even <- 25 - sum(row[c(FALSE, TRUE)]) #calculates sum of all even numbered questions

    normalized_data <- (sum_odd + sum_even) * 2.5 #normalize all data
    return (normalized_data)
}
normalized_each_row <- apply(data, 1, normalize_to_SUS) #calculates SUS score for each row

median <- median(normalized_each_row)  # calcluates the median of all rows

mean <- mean(normalized_each_row)   # calculates the mean value of all rows

standard_deviation <- sd(normalized_each_row) #standard deviation for all rows

min <- min(normalized_each_row) #minimum value of all rows

max <- max(normalized_each_row) #maximum value of all rows
#print results
cat("Medelvärde av SUS-resultaten:", mean, "\n")
cat("Median av SUS-resultaten:", median, "\n")
cat("Minimum värde av SUS-resultaten:", min, "\n")
cat("Maximum värde av SUS-resultaten:", max, "\n")
cat("Standardavvikelse av SUS-resultaten:", standard_deviation, "\n")

