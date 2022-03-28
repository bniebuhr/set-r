#' Setting up R and installing R packages

library(devtools)

# basic
install.packages("Rcpp", dependencies = T)
install.packages("devtools", dependencies = T)

# tidy and plot
install.packages("tidyverse", dependencies = T) # tidy data management and plot
install.packages("ggpubr", dependencies = T) # additional plot functions
install.packages("GGally", dependencies = T) # additional plot functions

# spatial
install.packages("sp", dependencies = T) # basic old spatial support analyses
install.packages("sf", dependencies = T) # mainly vector analysis
install.packages("gsl", dependencies = T)
install.packages("rgdal", dependencies = T) # communication with GDAL
install.packages("raster", dependencies = T) # raster analysis
install.packages("terra", dependencies = T) # raster analysis, new and fast version
install.packages("stars", dependencies = T) # analysis of spatiotemporal cubes
install.packages("rasterVis", dependencies = T) # visualization of rasters
install.packages("tmap", dependencies = T) # visualization of spatial data
install.packages("rpostgis", dependencies = T) # communication r-postgis
remotes::install_github("mablab/rpostgis") # communication r-postgis, newest stable version
install.packages("rgrass7", dependencies = T) # communication r-GRASS GIS
devtools::install_github("NINAnor/oneimpact", ref = "HEAD") # oneimpact

# landscape
install.packages("landscapemetrics", dependencies = T) # calculate landscape metrics in R (similar to FRAGSTATS)
install.packages("NLMR", dependencies = T) # neutral landscape models
install.packages("landscapetools", dependencies = T) # tools to deal with and plot landscapes

# movement
install.packages("adehabitatHR", dependencies = T) # home range tools
install.packages("adehabitatLT", dependencies = T) # trajetory representation tools
install.packages("amt", dependencies = T) # animal movement tools
install.packages("marcher", dependencies = T) # 
install.packages("move", dependencies = T) 
install.packages("ctmm", dependencies = T) # continuous time movement models
install.packages("recurse", dependencies = T) # revisitation analyses
# smoove
devtools::install_github("EliGurarie/smoove")

# statistics
install.packages("lme4", dependencies = T) # for linear mixed models
install.packages("bbmle", dependencies = T) # Ben Bolker mle functions
install.packages("lsr", dependencies = T) # correlate is quite useful


# using git
# htps://happygitwithr.com/credential-caching.html#credential-caching

# set Git
git config --global user.name 'Bernardo Brandao Niebuhr' # does not need to be the name in your Github account
git config --global user.email 'bernardo_brandaum@yahoo.com.br' # This must be the email from your Github account!
git config --global --list # check
# Or, within R:
usethis::use_git_config(user.name = "Bernardo Brandao Niebuhr", user.email = "bernardo_brandaum@yahoo.com.br")
usethis::git_default_branch_configure() # set default main branch to "main"

# Connect to Github account
# through https
# One uses this to avoid typing passwords on R.
# Go to https://github.com/settings/tokens and click “Generate token”.
# Or, from R, do:
usethis::create_github_token()
# Follow the instructions and create the token. Copy the token and store it in a safa place.
# Use it within R as well:
gitcreds::gitcreds_set() # did not work
# Or
credentials::set_github_pat() # worked

# Check
usethis::gh_token_help()
usethis::git_sitrep()
gh::gh_whoami()

# Some personal preference
# RStudio > Options
# - uncheck "Always save history"

# For building R packages
# RStudio > Build > Configure Build Tools
# - check "Generate documents with Roxygen"
# - within "Configure", check the last option "Install and Restart"
