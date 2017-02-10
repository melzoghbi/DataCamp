
## Restaurant Recommender:  Recommend me the top three restaurants 

This experiment demonstrates how to build a recommend the top **three favorable restaurants** to a customer.

 This experiment uses the matchbox recommender modules in Azure Machine Learning (AML) to train a restaurant recommendation engine.

## Description


In this experiment we are going to build a recommender system that recommend a customer three restaurant based on his eating habits. We chose to recommend top three restaurants to any given customer. 
The top three restaurants number could be easily modified by modifying the **Maximum number of items to recommend to a user**.
We optimized the performance from of this model by modifying the "Fraction of training only users" and "Fraction of test user ratings for training" parameters to get the best recommendation to a customer.

Below table shows various parameter values and the performance of the model for the training data set we used.

| Fraction of training only users        | Fraction of test user ratings for training   | NDCG     |
| ---------------------------------------|:--------------------------------------------:| --------:|
| 0.5                                    | 0.25                                         | 0.922669 |
| 0.4                                    | 0.7                                          | 0.953137 |
| 0.7                                    | 0.7                                          | 0.972299 |


![Full Restaurant Recommender Experiment](/Images/RestRecommender/OverviewExp.PNG "Restaurant Recommender")

### Join To Show Restaurant Names

The purpose of the join modules in this experiment is to show a cleaned up output. So the experiment show the resutrant name rather than ids as you can examine from the recommender module output.

![Model Joins](/Images/RestRecommender/JoinRestNames.PNG "Model Joins")

### Top Three Restaurant Output

The model output shows a list of recommendations for 29 users. You can view this by clicking on "Visualize" option on matchbox recommender module.

![Restaurant Recommender Output](/Images/RestRecommender/RecPerf.PNG "Restaurant Recommender Output")

You can notice that some users (only three users) were not able to recommend three restaurants due to their eating habits didn't match at least two other users in the data set.

To view a better output with restaurant names rather than ids, click on "Visualize" option from "Select Columns" module that provide cleaned up output.

![Restaurant Recommender Cleaned Up Output](/Images/RestRecommender/TopThreeRestOutput.PNG "Restaurant Recommender Cleaned Up Output")


### Recommender Performance

The best performance we achieved for this model is **0.972299** due to tweaking work we have done to get the best recommendation out of this model. 

![Restaurant Recommender Performance](/Images/RestRecommender/RecPerf.PNG "Restaurant Recommender Model Performance")