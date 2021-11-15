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
