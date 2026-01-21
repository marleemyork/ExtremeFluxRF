<!-- README (HTML) -->

<h1>Description of data tables</h1>
<p>This folder contains the classification of extreme and nominal sinks and sources across all sites accompanied by the
seasonal trends that the extremes are defined by. Each table (csv file) contains the seasonal trends and resulting extreme definitions
corresponding to each of the seasonal trend approaches: the transition, common, and moving quantile spline regressions. 
Alongside this, site data for geographic and climate covariates are included in a separate table. </p>

<h2>Model Outputs</h2>
<p>The subfolder rf_outputs includes outputs for all random forest classification models. This includes 6 random forest classifiers, including sink and source classifications using the transition, common, and moving approach. Analysis in this study was performed on the sink and source classification RF for the transition trendline approach. </p>
<p>For each X_Yrf.rds where X = trendline approach (transition, moving, or common) and Y = flux type (sink or source), the following important output are including in the file:</p>
<ul>
  <li><strong>$performance$oob_error</strong>: the Out-Of-Bag misclassification rate of extreme classifications in the model</li>
  <li><strong>$vimp</strong>: the variable importance of all input variables on extreme classifications</li>
</ul>
