data <- read.csv("SUSsvarNy23.csv", sep=";")


rad_index <- 4

specifik_rad <- data[rad_index, ]

specifik_rad_värden <- as.numeric(specifik_rad[])

medelvärde_rad <- mean(specifik_rad_värden)

medelvärden_rader <- apply(data, 1, mean, na.rm = TRUE) #ger medelvärdet av varje individuell rad

medelvärde <- mean(medelvärden_rader) #ger medelvärdet av alla rader

print(medelvärde)


