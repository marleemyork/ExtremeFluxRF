<!-- README (HTML) -->

<h1>Description of data tables</h1>
<p>This folder contains the classification of extreme and nominal sinks and sources across all sites accompanied by the
seasonal trends that the extremes are defined by. Each table (csv file) contains the seasonal trends and resulting extreme definitions
corresponding to each of the seasonal trend approaches: the transition, common, and moving quantile spline regressions. 
Alongside this, site data for geographic and climate covariates are included in a separate table. </p>

<h2>X_extremes Variables</h2>
<p>Three versions of this data table exist for each seasonal trendline approach (X): transition, common, and moving. Variables are the same aside from the seasonal trendline approach used to define extremes.</p>
<ul>
  <li><strong>Site</strong>: site name</li>
  <li><strong>Date</strong>: flux observation date</li>
  <li><strong>Extreme_Sink</strong>: binary classification of extreme sinks. Levels are: 0 (nominal, less than seasonal trendline),
  1 (extreme, greater than seasonal trendline)</li>
  <li><strong>seasonal_trend_GPP</strong>: 95th quantile spline regression that acts as threshold for Extreme_Sink definition</li>
  <li><strong>Extreme_Source</strong>: binary classification of extreme sources. Levels are: 0 (nominal, less than seasonal trendline),     1 (extreme, greater than seasonal trendline)</li>
  <li><strong>seasonal_trend_Reco</strong>: 95th quantile spline regression that acts as a threshold for Extreme_Source definition</li>
</ul>

<h2>covariate_data</h2>
<h2>site_covariates</h2>
<ul>
  <li><strong>Site</strong>: site name</li>
  <li><strong>IGBP</strong>: land cover classification of terrestrial ecosystems</li>
  <li><strong>climate_koeppen</strong>: Koppen climate classification including the following levels: Bsk (cold semi-arid), Dfc (subarctic), Csb (warm-summer Mediterranean), Dfb (warm-summer humid), Csa (hot-summer Mediterranean). This covariate was not used in th e random forest classifications, however, it was used for post-hoc analysis.</li> 
  <li><strong>lat</strong>: site latitude</li>
  <li><strong>lon</strong>: site longitude</li>  
  <li><strong>elev_meters</strong>: site elevation</li>  
  <li><strong>MAP</strong>: site mean annual precipitation calculated from PRISM data</li>  
  <li><strong>MAT</strong>: site mean annual temperature calculated from PRISM data</li>    
</ul>

<h2>Covariate timeseries (X_data)</h2>
<p>These data tables include the timeseries of each (X) of the 5 variables of interest: precipitation (P), temperature (TA) FINISH </p>
<ul>
  <li><strong>Site</strong>: site name</li>
  <li><strong>IGBP</strong>: land cover classification of terrestrial ecosystems</li>
  <li><strong>climate_koeppen</strong>: Koppen climate classification including the following levels: Bsk (cold semi-arid), Dfc (subarctic), Csb (warm-summer Mediterranean), Dfb (warm-summer humid), Csa (hot-summer Mediterranean). This covariate was not used in th e random forest classifications, however, it was used for post-hoc analysis.</li> 
  <li><strong>lat</strong>: site latitude</li>
  <li><strong>lon</strong>: site longitude</li>  
  <li><strong>elev_meters</strong>: site elevation</li>  
  <li><strong>MAP</strong>: site mean annual precipitation calculated from PRISM data</li>  
  <li><strong>MAT</strong>: site mean annual temperature calculated from PRISM data</li>    
</ul>
