<!-- README (HTML) -->

<h1>Description of data tables</h1>
<p>This folder contains the classification of extreme and nominal sinks and sources across all sites accompanied by the
seasonal trends that the extremes are defined by. Each table (csv file) contains the seasonal trends and resulting extreme definitions
corresponding to each of the seasonal trend approaches: the transition, common, and moving quantile spline regressions. 
Alongside this, site data for geographic and climate covariates are included in a separate table. </p>

<h2>Variables</h2>
<ul>
  <li><strong>Site</strong>: site name</li>
  <li><strong>Date</strong>: flux observation date</li>
  <li><strong>Extreme_Sink</strong>: binary classification of extreme sinks. Levels are: 0 (nominal, less than seasonal trendline),
  1 (extreme, greater than seasonal trendline)</li>
  <li><strong>seasonal_trend_GPP</strong>: 95th quantile spline regression that acts as threshold for Extreme_Sink definition</li>
  <li><strong>Extreme_Source</strong>: binary classification of extreme sources. Levels are: 0 (nominal, less than seasonal trendline),     1 (extreme, greater than seasonal trendline)</li>
  <li><strong>seasonal_trend_Reco</strong>: 95th quantile spline regression that acts as a threshold for Extreme_Source definition</li>
</ul>
