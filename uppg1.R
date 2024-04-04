#TODO: check if there is a better way of normalizing data, check if there is a better way of retrieving median, mean etc..

data <- read.csv("SUSsvarNy23.csv", sep=";")#read data and define semicolon as separator

# limits for normalized data 0-100
new_min <- 0
new_max <- 100

#normalizing data from scale 1-5 to 0-100
normalized_data <- ((data - min(data)) / (max(data) - min(data))) * (new_max - new_min) + new_min

mean_each_row <- apply(normalized_data, 1, mean, na.rm = TRUE)    # calculates the mean value of every indiviual row

median_each_row <- apply(normalized_data, 1, median, na.rm = TRUE)     # median for all individual rows

minimum_each_row <- apply(normalized_data, 1, min, na.rm = TRUE) #minimum value for each row

maximum_each_row <- apply(normalized_data, 1, max, na.rm = TRUE) #maximum value for each row

standarddeviation_each_row <- apply(normalized_data, 1, sd, na.rm = TRUE) #standard deviation for each row

median <- median(median_each_row)        # calcluates the median of all rows

mean <- mean(mean_each_row)   # calculates the mean value of all rows

standard_deviation <- sd(standarddeviation_each_row) #standard deviation for all rows

min <- min(minimum_each_row) #minimum value of all rows

max <- max(maximum_each_row) #maximum value of all rows
#print results
cat("Medelvärde av SUS-resultaten:", mean, "\n")
cat("Median av SUS-resultaten:", median, "\n")
cat("Minimum värde av SUS-resultaten:", min, "\n")
cat("Maximum värde av SUS-resultaten:", max, "\n")
cat("Standardavvikelse av SUS-resultaten:", standard_deviation, "\n")

