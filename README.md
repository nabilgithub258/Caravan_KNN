
---

# Caravan Insurance Prediction using K-Nearest Neighbors (KNN)

## Overview
This project uses the KNN algorithm to predict whether a customer is likely to purchase a caravan insurance policy based on various demographic and product ownership attributes. The dataset used is named "Caravan" and is available in the R package `ISLR`.

## Dependencies
To run the code in this project, you need to have the following R packages installed:
- `ISLR`: This package provides the "Caravan" dataset and several functions for data manipulation and visualization.

You can install these packages using the following R commands:
```r
install.packages("ISLR")
```

## Dataset
The "Caravan" dataset contains information on 86 variables and 5,822 observations, describing the demographics and product ownership of customers. The target variable (`Purchase`) indicates whether a customer purchased caravan insurance (Yes/No).

## Implementation Details
The .R script performs the following tasks:
1. Loads the "Caravan" dataset from the `ISLR` package.
2. Preprocesses the data, including:
   - Encoding categorical variables.
   - Scaling numerical variables.
   - Splitting the dataset into training and testing sets.
3. Implements the KNN algorithm.
4. Evaluates the model's performance using accuracy metrics.
5. Provides predictions on new data points.
6. Also check the pdf file as it gives an entire run down of what we are doing and how we achieve it in a very simple terms

## Author
For questions or feedback, please contact nabilmomin1989@gmail.com.

---
