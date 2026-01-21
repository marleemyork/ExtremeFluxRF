<!-- README (HTML) -->

<h1>Description of data tables</h1>
<p>This folder contains the classification of extreme and nominal sinks and sources across all sites accompanied by the
seasonal trends that the extremes are defined by. Each table (csv file) contains the seasonal trends and resulting extreme definitions
corresponding to each of the seasonal trend approaches: the transition, common, and moving quantile spline regressions. 
Alongside this, site data for geographic and climate covariates are included in a separate table. </p>

<h2>SHAP Analysis Script</h2>
<p>This shap_run.R script is a reproducible pipeline for performing SHAP analysis with fastshap (Greenwell, 2019) for a given sample of observations for selected variables of
  interest, on both extreme sink and source random forest classifications. 
</p>

<h2>SHAP Outputs</h2>
<p>The subfolder shap_outputs includes SHAP values for all groups of variables in the extreme sink and source variables. Each X_Yshap.csv, where 
X = variable group (e.g., TA, P) and Y = sink or source, includes the SHAP values of all X-related variables on a sample selected for a uniform
distribution of variable X. For example, P_sinkshap.csv includes SHAP values for all timescales and standard deviation variables of precipitation
(P, P_1, P_7, P_30, P_365, P_sd_7, P_sd_30, P_sd_365) on a sample of 500 observations selected so that there is a uniform distribution of precipitation values</p>
<p>The important variables in each SHAP data table include:</p>
<ul>
  <li><strong>var:</strong>the variable that the SHAP value is associated with (e.g, P, P_1, P_7, etc., in Psinkshap.csv)</li>
  <li><strong>value:</strong>the value of <strong>var</strong></li>
  <li><strong>shap:</strong></li>the SHAP value calculated of <strong>var</strong> for this observation
  <li><strong>all variable names (e.g., P, TA, VPD, ...):</strong></li> all covariate values for each observation
</ul>


