data <- read.csv("SUSsvarNy23.csv", sep=";")

# gränserna för nya normaliserad data
new_min <- 0
new_max <- 100

#normaliserar data från skala 1-5 till 0-100 (SUS)
normalised_data <- ((data - min(data)) / (max(data) - min(data))) * (new_max - new_min) + new_min

meanValue_row <- apply(normalised_data, 1, mean, na.rm = TRUE)    # calculates the mean value of every indiviual row, individually.

medianer_rader <- apply(normaliserad_data, 1, median, na.rm = TRUE)     # median för alla individuella rader

median <- median(medianer_rader)        # calcluates the median of all rows

meanValue <- mean(meanValue_row)   # calculates the mean value of all rows

minimum_each_row <- apply(normaliserad_data, 1, min, na.rm = TRUE) #minimum value for each row

maximum_each_row <- apply(normaliserad_data, 1, max, na.rm = TRUE) #maximum value for each row

standarddeviation_each_row <- apply(normaliserad_data, 1, sd, na.rm = TRUE) #standard deviation for each row

standard_deviation <- sd(standarddeviation_each_row)

min <- min(minimum_each_row)

max <- max(maximum_each_row)
#print(summary(normaliserad_data))
cat("Medelvärde av SUS-resultaten:", meanValue, "\n")
cat("Median av SUS-resultaten:", median, "\n")
cat("Minimum värde av SUS-resultaten:", min, "\n")
cat("Maximum värde av SUS-resultaten:", max, "\n")
cat("Standardavvikelse av SUS-resultaten:", standard_deviation, "\n")

