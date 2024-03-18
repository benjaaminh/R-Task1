data <- read.csv("SUSsvarNy23.csv", sep=";")

# gränserna för nya normaliserad data
new_min <- 0
new_max <- 100

#normaliserar data från skala 1-5 till 0-100 (SUS)
normalised_data <- ((data - min(data)) / (max(data) - min(data))) * (new_max - new_min) + new_min

meanValue_row <- apply(normalised_data, 1, mean, na.rm = TRUE)    # calculates the mean value of every indiviual row, individually.

medianer_rader <- apply(normaliserad_data, 1, median, na.rm = TRUE)     # median för alla individuella rader

median <- median(median_row)        # calcluates the median of all rows

meanValue <- mean(meanValue_row)   # calculates the mean value of all rows

#print(summary(normaliserad_data))
print(medelvärde_rad)


