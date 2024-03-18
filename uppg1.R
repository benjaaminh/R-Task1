data <- read.csv("SUSsvarNy23.csv", sep=";")

# gränserna för nya normaliserad data
nytt_min <- 0
nytt_max <- 100

#normaliserar data från skala 1-5 till 0-100 (SUS)
normaliserad_data <- ((data - min(data)) / (max(data) - min(data))) * (nytt_max - nytt_min) + nytt_min

rad_index <- 1

specifik_rad <- normaliserad_data[rad_index, ]

specifik_rad_värden <- as.numeric(specifik_rad[])

medelvärde_rad <- mean(specifik_rad_värden)

median_rad <- median(specifik_rad_värden)

medelvärden_rader <- apply(normaliserad_data, 1, mean, na.rm = TRUE)    # ger medelvärdet av varje individuell rad

medianer_rader <- apply(normaliserad_data, 1, median, na.rm = TRUE)     # median för alla individuella rader

median <- median(medianer_rader)        # medianvärdet

medelvärde <- mean(medelvärden_rader)   # ger medelvärdet av alla rader

#print(summary(normaliserad_data))
print(medelvärde_rad)


