<!-- ExtremeFluxRF README (HTML) -->

<h1>Project: Environmental drivers of extreme carbon fluxes</h1>
<p><strong>Data, code, and documentation in this repository accompany the manuscript: "Drivers of extreme carbon sources
and sinks across diverse ecosystems in the western USA" by Marlee York, Brandon Strange, Anam Khan, Drew Peltier, 
Jarrett J Barber, and Kiona Ogle in review for Global Change Biology.</strong></p>

<p><strong>Managed by Ecological Synthesis Lab at Northern Arizona University.</strong></p>
<hr>

<h2>Description of files and directories</h2>
<pre>
carbonflux/
├── data/
  ├── classifications.csv   # Extreme and nominal classifications for each flux
  ├── PRISM_covariates.csv  # Site-level covariates assembled from PRISM
├── randomforest/  
  ├── rf_run.R              # Script to run random forest classifications
  ├── rf_outputs/           # random forest output (X_Y.csv) for trendline X and flux Y
    ├── transition_sink.csv
    ├── transition_source.csv
    ├── common_sink.csv
    ├── common_source.csv
    ├── moving_sink.csv
    ├── moving_source.csv
├── shap/
  ├── shap_run.R            # Script to run SHAP analysis
  ├── shap_outputs/         # SHAP values (X_shap.csv) for all X-related variables
    ├── TA_shap.csv         
    ├── P_shap.csv        
    ├── SW_shap.csv         
└── README.md
</pre>
