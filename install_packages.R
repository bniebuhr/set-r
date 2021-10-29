#' Installing R packages to R
#' 

# basic
install.packages("Rcpp", dependencies = T)
install.packages("devtools", dependencies = T)

# tidy and plot
install.packages("tidyverse", dependencies = T)
install.packages("ggpubr", dependencies = T)

# spatial
install.packages("sp", dependencies = T)
install.packages("sf", dependencies = T)
install.packages("gsl", dependencies = T)

# movement
install.packages("adehabitatHR", dependencies = T)
install.packages("adehabitatLT", dependencies = T)
install.packages("amt", dependencies = T)
install.packages("marcher", dependencies = T)
install.packages("move", dependencies = T)

library(devtools)
install_github("EliGurarie/smoove")

# using git
# htps://happygitwithr.com/credential-caching.html#credential-caching


library(usethis)
use_git_config(user.name = "Benrnardo Niebuhr", user.email = "bernardo_brandaum@yahoo.com.br")
