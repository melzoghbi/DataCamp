
## Business Problem:  Flight delay prediction (Level 300) [Estimated: 3 hours]

In this experiment, we predict whether scheduled passenger flight is delayed or not using a Binary-classifier.
The problem statement is describing how to build this experiment from scratch. 
Follow these steps to build this binary classifier experiment using Azure ML Studio.


This experiment is located in Microsoft Cortana Intelligence Suite website, You can copy the final experiment into
your AzureML workspace account by clicking on **Open in Studio** button in the experiment. 

![Open Studio button](/Images/OpenInStudio.PNG)

The completed experiment/solution is located in the link below.

[Flight Delay Prediction Experiment](https://gallery.cortanaintelligence.com/Experiment/Binary-Classification-Flight-delay-prediction-3) 

** Understanding Flight Delays Data Set **

A flight is counted as "on time" if it operated less than 15 minutes later the scheduled time shown in the carriers' Computerized Reservations Systems (**CRS**). 
Arrival performance is based on arrival at the gate. Departure performance is based on departure from the gate. [Source: Bureau of Transportation Statstics](http://www.rita.dot.gov/bts/help/aviation/index.html)

Before start implementing this experiment, We would like to share some important notes about the dataset & Azure ML experiment:

1.	Departure or Arrival Date is in HHMM format. So to round any the closest hour, we will divide it by 100 and then round the result (using floor() math operation) to get the integer number of a given number.
For example: 1135. We will apply divide op.: (1135/100) = 11.35, then round op. using Floor(11.35) = 11.

2.	[Categorical Variables](https://en.wikipedia.org/wiki/Categorical_variable): are those that represent a fixed number of possible values, rather than a continuous number. 
In this experiment, the columns **Carrier, OriginAirportID, and DestAirportID** represent categorical attributes.

3.	Binning or grouping data (some time called **quantization**) is an important tool in preparing numeric data for machine learning. 
In this experiment, we are using group data into bins using Quantiles binning mode. Quantiles is also known as equal hight binning. 
This applies to all numeric values in selected flight delays dataset.

4.	In this experiment, we used sweep parameters (**Tune Model Hyperparameter**): Performs a parameter sweep on a model to determine the optimum parameter settings.

5.	In this experiment, we used AUC as a metric for measuring performance for classification. Read more about other metrics [here](https://msdn.microsoft.com/library/azure/038d91b6-c2f2-42a1-9215-1f2c20ed1b40).

6.	Conclusion: Since the experiment is using two different algorithms: Two-Class Boosted Decision Tree & Two-Class Logistic Regression, you will notice that boosted decision has AUC of 0.64 on the validation set which is better than logistic regression model with AUC of 0.628.

