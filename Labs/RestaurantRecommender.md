
## Restaurant Recommender:  Recommend me the top three restaurants 

This experiment demonstrates how to build a recommender system in Azure Machine Learning (AML) to recommend the top **three favorable restaurants** to a customer.
This experiment uses matchbox recommender modules in AML to train a restaurant recommendation engine.

The full experiment is published to Cortana Intelligence Gallery [here.](https://gallery.cortanaintelligence.com/Experiment/The-Restaurant-Recommender-1)

## Description

In this experiment we are going to build a recommender system that recommend a customer three restaurant based on his eating habits. We chose to recommend top three restaurants to any given customer. 
The top three restaurants number could be easily modified by modifying the **Maximum number of items to recommend to a user**.
We optimized the performance from of this model by modifying the "Fraction of training only users" and "Fraction of test user ratings for training" parameters to get the best recommendation to a customer.

Below table shows various parameter values and the performance of the model for the training data set we used.

| Fraction of training only users        | Fraction of test user ratings for training   | NDCG     |
| ---------------------------------------|:--------------------------------------------:| --------:|
| 0.5                                    | 0.25                                         | 0.922669 |
| 0.4                                    | 0.7                                          | 0.953137 |
| 0.7                                    | 0.7                                          | 0.972299 |  <-- Best Performance!


![Full Restaurant Recommender Experiment](/Images/RestRecommender/OverviewExp.PNG "Restaurant Recommender")

### Join To Show Restaurant Names

The purpose of the "Join Data" modules in this experiment is to show a cleaned up output by providing restaurant names recommendations.
This section is optional, The experiment shows the restaurant names rather than ids.

![Model Joins](/Images/RestRecommender/JoinRestNames.PNG "Model Joins")


### Three Restaurant Recommendation Output

The model output shows restaurant recommendations for **29** users. You can view this by clicking on "Visualize" option on the matchbox recommender module.

![Restaurant Recommender Output](/Images/RestRecommender/RecommenderOutput.PNG "Restaurant Recommender Output")

You can notice that some users (only three users) the model was not able to recommend three restaurants due to their eating habits didn't match at least two other users in the data set.

To view restaurant names rather than ids, click on "Visualize" option from "Select Columns" module that provide cleaned up output.

![Restaurant Recommender Cleaned Up Output](/Images/RestRecommender/TopThreeRestOutput.PNG "Restaurant Recommender Cleaned Up Output")

You will notice that the cleaned up output contains recommendation for **24** users only due to the "inner join" modules we used to present the restaurant names for the top three recommendations.


### Recommender Performance

The best performance we achieved for this model is **0.972299** after the tweaking work in the model to get the best recommendation out of this public restaurant ratings data set. 

![Restaurant Recommender Performance](/Images/RestRecommender/RecPerf.PNG "Restaurant Recommender Model Performance")