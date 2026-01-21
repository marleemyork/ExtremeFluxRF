<!-- ExtremeFluxRF README (HTML) -->

<h1>Project: Environmental drivers of extreme carbon fluxes</h1>
<p><strong>Data, code, and documentation in this repository accompany the manuscript: "Drivers of extreme carbon sources
and sinks across diverse ecosystems in the western USA" by Marlee York, Brandon Strange, Anam Khan, Drew Peltier, 
Jarrett J Barber, and Kiona Ogle in review for Global Change Biology.</strong></p>

<p><strong>Managed by Ecological Synthesis Lab at Northern Arizona University.</strong></p>
<hr>

<h2>Environmental and Climate Data</h2>
<p>
  Flux, temperature, precipitation, VPD, shortwave radiation, and geographic data were obtained from the AmeriFlux network
  and available at https://ameriflux.lbl.gov/. All climate covariates and soil water content data were obtained from PRISM 
  at https://prism.oregonstate.edu/.
</p>

<h2>Description of files and directories</h2>
<p>Individual READMEs are within each subfolder for further explanation.</p>
<pre>
ExtremeFluxRF/
├── data/
  ├── transition_extremes.csv # Transition seasonal trendline and resulting extreme classifications
  ├── moving_extremes.csv     # Moving seasonal trendline and resulting extreme classifications
  ├── common_extremes.csv     # Common seasonal trendline and resulting extreme classifications
  ├── site_covariates.csv     # Site-level covariates assembled from PRISM
├── randomforest/  
  ├── rf_run.R                # Script to run random forest classifications
  ├── rf_outputs/             # random forest output (X_Y.csv) for trendline X and flux Y
    ├── transition_sinkrf.R
    ├── transition_sourcerf.R
    ├── common_sinkrf.R
    ├── common_sourcerf.R
    ├── moving_sinkrf.R
    ├── moving_sourcerf.R
├── shap/
  ├── shap_run.R              # Script to run SHAP analysis
  ├── shap_outputs/           # SHAP values (X_shap.csv) for all X-related variables      
└── README.md
</pre>
