# Run random forest
################################################################################
# This script will run a random forest classification on extreme and nominal daily
# carbon fluxes using environmental data from the AmeriFlux Network, SWC and 
# climate covariates from PRISM, and geographic site information. The RF is performed
# across all 14 sites, however, it should be ran separately for classification
# of extreme sinks and sources, as well as the various definitions of these extremes
# (using transition, common, and moving trendlines).

# Author: Marlee York
################################################################################

# SETUP

# We use the R package randForestSRC (Ishwaran & Kogular, 2025)
# https://cran.r-project.org/package=randomForestSRC.
# install.packages("randomForestSRC")
library(randomForestSRC)

# Specify output directory
outdir <- ""
dir.exists(outdir)

# Set seed
set.seed(76786+12366)

# Specify trendline definition being used (transition, common, or moving)
trendline <- ""

# Read in data for specific trendline definition of extreme sinks and sources
dat <- read.csv("")

# Turn extreme sinsk and sources into factor
dat$Extreme_Sink <- factor(dat$Extreme_Sink) 
dat$Extreme_Source <- factor(dat$Extreme_Source)

# Variable names to subset later for different random forests
vnames <- names(dat)

################################################################################

# Select response variable and inputs for extreme sink and extreme source models
vnamessink <- vnames[]
vnamessource <- vnames[]

# Run the random forest classifying for extreme sinks
sink <- imbalanced.rfsrc(Extreme_Sink ~., data=dat[vnamessink], na.action="na.omit",
                          method="rfq", importance="permute", block.size=1,
                          perf.type="misclass")

# Save the rfsrc object
save(sink, file = paste0(outdir,"/", trendline, "_sinkrf.R"))

# Run the random forest classifying for extreme sources
source <- imbalanced.rfsrc(Extreme_Source ~ , data=dat[vnamessource], na.acttion="na.omit",
                           method="rfq", importance="permute", block.size=1,
                           perf.type="misclass")

# Save the rfsrc object
save(source, file = paste0(outdir, "/", trendline, "_sourcerf.R"))

