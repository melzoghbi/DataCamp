
## Lab 3:  Convert the training experiment to a predictive experiment [Estimated: 1 hour]

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

## Step 1: Follow below steps to convert any training experiment into a predictive experiment:

To convert your training experiment to a predictive experiment, click Run at the bottom of the experiment canvas, click **Set Up Web Service**, then select **Predictive Web Service**.

![Setup Web Service in Azure ML](/Images/SetupAzureMLWS.PNG)


## Step 2: Deploy the predictive experiment as a New web service

Now that the predictive experiment has been prepared, you can deploy it as an Azure web service.
Using the web service, users can send data to your model and the model will return its predictions.

To deploy your predictive experiment, click **Run** at the bottom of the experiment canvas. 
Once the experiment has finished running, click on **Deploy Web Service**.
The deployment page of the Machine Learning Web Service portal opens.

## Step 3: Test your web service 

To test your new web service, click Test web service under common tasks. On the Test page, you can test your web service as a Request-Response Service (RRS) or a Batch Execution service (BES).

The RRS test page displays the inputs, outputs, and any global parameters that you have defined for the experiment. To test the web service, you can manually enter appropriate values for the inputs or supply a comma separated value (CSV) formatted file containing the test values.

![Test Web Service in Azure ML](/Images/WSTestPortal.PNG)

1. Click on Test button to test the web service by entering its input variables in the popup window.

![Test Web Service Modal Window in Azure ML](/Images/TestWSModal.PNG)

2. Click on Excel 2013 link to call the Web Service from Azure ML Add-In in Excel.

Click on Use sample data button, set the region of the input sample data, then enter the output cell and click on predict button.

![Azure ML Add-In in Excel](/Images/AzureMLAddIn.PNG)

Source: 
[How a Machine Learning model progresses from an experiment to an operationalized Web service](https://docs.microsoft.com/en-us/azure/machine-learning/machine-learning-model-progression-experiment-to-web-service)