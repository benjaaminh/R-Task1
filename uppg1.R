data <- read.csv("SUSsvarNy23.csv", sep=";")


rad_index <- 1

specifik_rad <- data[rad_index, ]

specifik_rad_värden <- as.numeric(specifik_rad[])

medelvärde_rad <- mean(specifik_rad_värden)

median_rad <- median(specifik_rad_värden)

medelvärden_rader <- apply(data, 1, mean, na.rm = TRUE) #ger medelvärdet av varje individuell rad

medianer_rader <- apply(data, 1, median, na.rm = TRUE)

median <- median(medianer_rader) #medianvärdet

medelvärde <- mean(medelvärden_rader) #ger medelvärdet av alla rader


print(median)


