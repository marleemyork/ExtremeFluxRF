<!-- README (HTML) -->

<h1>Random Forest Outputs</h1>
<p>This folder contains all materials to run the random forest classification, as well as the model outputs of our 6 models used in this study (found in rf_outputs).</p>

<h2>Random Forest Classification Script</h2>
<p>This rf_run.R script is a reproducible pipeline for fitting and saving an unbalanced random forest classification model using the package randomForestSRC. For this analysis, we ran this pipeline to classify between extreme and nominal classifications for sinks and sources defined by the transition, common, and moving trendlines (6 model outputs).</p>

<h2>Model Outputs</h2>
<p>The subfolder rf_outputs includes outputs for all random forest classification models. This includes 6 random forest classifiers, including sink and source classifications using the transition, common, and moving approach. Analysis in this study was performed on the sink and source classification RF for the transition trendline approach. </p>
<p>For each X_Yrf.rds where X = trendline approach (transition, moving, or common) and Y = flux type (sink or source), the following important output are including in the file:</p>
<ul>
  <li><strong>$performance$oob_error</strong>: the Out-Of-Bag misclassification rate of extreme classifications in the model</li>
  <li><strong>$vimp</strong>: the variable importance of all input variables on extreme classifications</li>
</ul>
