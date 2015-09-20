# The Data Scientist's Tool Box

## Types of Data Science Questions

* Descriptive: Describe a set of data.
  - The first kind of data analysis performed.
  - Example: Commonly applied to census data - http://www.census.gov/2010census/
  - The description and interpretation are different steps.
  - Descriptions can usually not be generalized without additional statistical modelling.

* Exploratory: Find relationships you didnt know about
  - Exploratory models are good for finding new connections
  - They are also useful for defining future studies
  - Exploratory analysis are usually not the final say
  - Exploratory analysis alone should not be used for generalizing/predicting
  - Correlation does not imply causation
  - Example: Study of brain stimulus

* Inferential: Use a relatively small sample of data to say something about a bigger population
  - Inference is commonly the goal of statistical models
  - Inference involves estimating both the quantity your care about and your uncertainity about your estimate
  - Inference depends heavily on both the population and the sampling scheme
  - Example: Effect of air pollution control on life expectency in the US

* Predictive: To use the data on some objects to predict value for another object
  - If X predicts Y it does not mean X causes Y
  - Accurate prediction depends heavily on measuring the right variables
  - Although there are better and worst prediction models, more data and a  simple model works really well
  - Prediction is very hard, especially about the future references
  - Example: Predicting election outcome. 

* Casual: To find out what happens to one variable when you make another variable change
  - Usually randomized studies are required to identify causation
  - There are approaches to inferring causation in non-randomized studies, but they are complecated & sensitive to assumptions
  - Causal relationships are usually identified as average effects, but may not apply to every individual
  - Causal models are usually the "gold standard" for data analysis

* Mechanistic: Understand the exact changes in variables that lead to changes in other variables for individual objects.
  - Incredibly hard to infer, except in simple situations
  - Usually modelled by a deterministic set of equations (physical / engineering science)
  - Generally the random component of the data is measurement error
  - If the equations are known but the parameters are not, they may be inferred by data analysis

## What is Data?

* Data: *Data are values of qualitative or quantitative variables, belonging to a set of items*
  - Set of items: Sometimes called the population; the set of objects you are interested in 
  - Variables: A measurement or characteristic of an item
  - Qualitative: Ex. country of origin, sex, treatment
  - Quantitative: Ex. height, weight, blood pressure

* The most important thing in data scrience is QUESTION, and DATA is the second most important thing

## Experimental Design

* Formulate your question in advance. Ex: Does changing the text on your website improve donations (A / B variant analysis)?
* Confounding: Shoe & litracy is correlated by Age (confounding variable). Randomization & blocking can help confounding variable.
* Design of Exeperiments (DOE) or experimental design is the design of any information gathering exercises where variation is present, whether under full control of the experiment or not. However, in statistics, these terms are used for controlled experiments.
