data <- read.csv("SUSsvarNy23.csv", sep=";")


rad_index <- 4

specifik_rad <- data[rad_index, ]

specifik_rad_värden <- as.numeric(specifik_rad[])

medelvärde_rad <- mean(specifik_rad_värden)

print(medelvärde_rad)


