z# Customer Churn Analysis

## Problem Statement
Customer churn, the phenomenon where customers stop doing business with a company, is a significant issue for companies in competitive markets. The objective of this project is to predict which customers are at risk of churning from a telecom company using machine learning models. By identifying high-risk customers early, the company can take preventive measures such as personalized retention strategies, reducing overall churn rates and improving customer retention.

## Dataset: Telco Churn Dataset
The dataset used for this project is the Telco Customer Churn dataset, which contains information about customers, including services they have subscribed to, tenure, monthly charges, and whether or not they have churned. The dataset has the following key features:

- **CustomerID**: Unique identifier for each customer.
- **Gender**: Gender of the customer.
- **SeniorCitizen**: Whether the customer is a senior citizen or not.
- **Partner**: Whether the customer has a partner.
- **Dependents**: Whether the customer has dependents.
- **Tenure**: Number of months the customer has been with the company.
- **PhoneService**: Whether the customer has phone service.
- **MultipleLines**: Whether the customer has multiple lines.
- **InternetService**: Type of internet service (DSL, Fiber optic, or None).
- **OnlineSecurity**: Whether the customer has online security add-ons.
- **TechSupport**: Whether the customer has technical support.
- **Contract**: The contract term (Month-to-month, One year, Two year).
- **PaperlessBilling**: Whether the customer has paperless billing.
- **MonthlyCharges**: The amount charged to the customer monthly.
- **TotalCharges**: The total amount charged to the customer.
- **Churn**: Whether the customer has churned (Yes or No).

## Project Overview
The goal of this project is to build a system that predicts customer churn using various machine learning models and SQL-based data processing. The system includes:

1. **Data Cleaning and Preprocessing**: Handling missing values, encoding categorical variables, and feature scaling where necessary.
   
2. **Exploratory Data Analysis (EDA)**: Visualizing churn distribution, correlation between features, and key insights on customer behavior.
   
3. **Model Building**: Implementing logistic regression and random forest classifiers, as well as hyperparameter tuning to improve performance. The models are trained to classify customers based on their likelihood of churning.

4. **Evaluation**: The models are evaluated using accuracy, precision, recall, F1-score, and AUC-ROC to assess their performance in identifying high-risk customers.
"""
## Tools and Technologies
- **SQL**: Used for querying and managing the relational database where customer data is stored.
- **Python**: Used for data processing, analysis, and machine learning model development.
- **Pandas**: Data manipulation and analysis library.
- **Scikit-learn**: Machine learning library for model building and evaluation.
- **Matplotlib & Seaborn**: Data visualization libraries.
  
## Results
The best-performing model is the Logistic Regression model, which achieved the following metrics:

- **Accuracy**: 0.82
- **Precision**: 0.86
- **Recall**: 0.90
- **F1-Score**: 0.88

The Random Forest model had the following metrics:

- **Accuracy**: 0.81
- **Precision**: 0.70
- **Recall**: 0.51
- **F1-Score**: 0.59

Based on these results, the Logistic Regression model outperformed the Random Forest model in identifying high-risk customers, providing the telecom company with actionable insights for retention strategies.
"""