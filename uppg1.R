data <- read.csv("SUSsvarNy23.csv", sep=";")

# limits for normalized data 0-100
new_min <- 0
new_max <- 100

#normalizing data from scale 1-5 to 0-100 (SUS)
normalized_data <- ((data - min(data)) / (max(data) - min(data))) * (new_max - new_min) + new_min

meanValue_row <- apply(normalized_data, 1, mean, na.rm = TRUE)    # calculates the mean value of every indiviual row

medianer_rader <- apply(normalized_data, 1, median, na.rm = TRUE)     # median for all individual rows

minimum_each_row <- apply(normalized_data, 1, min, na.rm = TRUE) #minimum value for each row

maximum_each_row <- apply(normalized_data, 1, max, na.rm = TRUE) #maximum value for each row

standarddeviation_each_row <- apply(normalized_data, 1, sd, na.rm = TRUE) #standard deviation for each row

median <- median(medianer_rader)        # calcluates the median of all rows

meanValue <- mean(meanValue_row)   # calculates the mean value of all rows

standard_deviation <- sd(standarddeviation_each_row) #standard deviation for all rows

min <- min(minimum_each_row) #minimum value of all rows

max <- max(maximum_each_row) #maximum value of all rows
#print(summary(normaliserad_data))
cat("Medelvärde av SUS-resultaten:", meanValue, "\n")
cat("Median av SUS-resultaten:", median, "\n")
cat("Minimum värde av SUS-resultaten:", min, "\n")
cat("Maximum värde av SUS-resultaten:", max, "\n")
cat("Standardavvikelse av SUS-resultaten:", standard_deviation, "\n")

