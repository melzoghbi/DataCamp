
## Business Problem:  Convert the training experiment to a predictive experiment [Estimated: 1 hour]

Once you've trained your model, you're ready to convert your training experiment into a predictive experiment to score new data.

By converting to a predictive experiment, you're getting your trained model ready to be deployed as a scoring web service. 
Users of the web service can send input data to your model and your model will send back the prediction results.
As you convert to a predictive experiment, keep in mind how you expect your model to be used by others.

Note: You have to complete lab 1 or 2 to be able to move forward in Lab 3.

![Stages of Typical Predictive Analysis Model](/Images/StagesOfTypicalPredictiveAnalysisModel.PNG)

# Introduction
This section covers the difference between training vs. predictive experiments in Machine Learning.

## The training experiment

The training experiment is the initial phase of developing your Web service in Machine Learning Studio. The purpose of the training experiment is to give you a place to develop, test, iterate, and eventually train a machine learning model. You can even train multiple models simultaneously as you look for the best solution, but once you’re done experimenting you’ll select a single trained model and eliminate the rest from the experiment.

## The predictive experiment

Once you have a trained model in your training experiment, click Set Up Web Service and select Predictive Web Service in Machine Learning Studio to initiate the process of converting your training experiment to a predictive experiment. The purpose of the predictive experiment is to use your trained model to score new data, with the goal of eventually becoming operationalized as an Azure Web service.

## Follow below steps to convert any training experiment into a predictive experiment:

To convert your training experiment to a predictive experiment, click Run at the bottom of the experiment canvas, click Set Up Web Service, then select Predictive Web Service.

![Setup Web Service in Azure ML](/Images/SetupAzureMLWS.PNG)

Source: 
[How a Machine Learning model progresses from an experiment to an operationalized Web service](https://docs.microsoft.com/en-us/azure/machine-learning/machine-learning-model-progression-experiment-to-web-service)