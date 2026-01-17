# Run SHAP analysis
################################################################################
# This script will take the outputs of the random forest classifiers and a selected
# sample of input data from the model and calculate the SHAP values for select
# variables of interest. This should be rerun for each distinct sample of observations
# you are interested in running SHAP on.

# Author: Marlee York
################################################################################

# SETUP

# We use the R package fastshap (Greenwell, 2019) to calculate SHAP values of a randomForestSRC model
# https://github.com/bgreenwell/fastshap
# install.packages("fastshap")
library(fastshap)
library(randomForestSRC)

# Specify output directory
outdir <- ""
dir.exists(outdir)

# Select the variables you want to calculate SHAP values for
variables <- c() # e.g., c("P"," "P_1", "P_7", "P_30", "P_365")
n <- length(variables)

# Label for variables you are interested in
variable_label <- "" # e.f., "precipitation", "temperature", etc

# Set seed
set.seed(76786+12366)

# Load in data sample
X_sample <- read.csv("")

# Convert extremes into factors
X_sample$Extreme_Sink <- factor(X_sample$Extreme_Sink)
X_sample$Extreme_Source <- factor(X_sample$Extreme_Source)

################################################################################

# Load in the your random forest sink (rf_sink) and source (rf_source)
load("") # Load in sink model rf_sink
load("") # Load in source model rf_source


# Run the random forest classifying for extreme sinks
shap_sink <- get_shap(model = rf_sink,
                      sample = X_sample,
                      nsim = 150,
                      feature_names = variables)

# Organizing into a dataframe
shap_sink <- sink_shap[order(shap_sink$var),]
df_stacked <- bind_rows(replicate(n, X_sample, simplify = FALSE))
shap_sink <- cbind(shap_sink,df_stacked)

# Save as a csv
write.csv(shap_sink,file=paste0(outdir, "/", variable_label, "_sinkshap.csv"))

# Run the random forest classifying for extreme sinks
shap_source <- get_shap(model = rf_source,
                        sample = X_sample,
                        nsim = 150,
                        feature_names = variables)

# Organizing into a dataframe
shap_source <- shap_source[order(shap_source$var),]
df_stacked <- bind_rows(replicate(n, X_sample, simplify = FALSE))
shap_source <- cbind(shap_source,df_stacked)

# Save as a csv
write.csv(shap_source,file=paste0(outdir, "/", variable_label, "_sourceshap.csv"))


