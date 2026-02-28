# customer_behavior_analysis
data analystics project showcasing customer behavior analysis using python, sql and power bi
This project demonstrates an end-to-end Data Analytics workflow — from raw data processing to business insights visualization.

The project covers:

Loading and analyzing data using Python

Performing Exploratory Data Analysis (EDA)

Cleaning and transforming the dataset

Writing analytical queries using MySQL

Building an interactive dashboard in Power BI

The goal is to extract meaningful insights and present them in a clear, business-focused format.

Dataset

The dataset contains transactional customer data including:

Customer demographics (age, gender, location)

Product information (category, item purchased)

Purchase details (purchase amount, season, discount applied)

Shipping type

Customer review ratings

Subscription status

The data is used to analyze:https://github.com/maru-ngoc11/customer_behavior_analysis/blob/main/customer_shopping_behavior.csv

Revenue trends

Customer behavior

Product performance

Subscription impact on sales

Tools & Technologies
Tool	Purpose
Python (Pandas, Matplotlib, Seaborn)	Data loading, cleaning, EDA
MySQL	Writing analytical queries & aggregations
Power BI	Dashboard & data visualization
Excel (optional)	Initial data inspection
Data Processing Workflow

Step 1: Data Loading (Python)

Imported dataset using Pandas

Checked data types and structure

Inspected missing values

Step 2: Data Cleaning

Handled missing values

Removed duplicate records

Standardized categorical values

Fixed inconsistent data types

Created derived columns when necessary

Step 3: Exploratory Data Analysis (EDA)

Revenue distribution analysis

Customer segmentation (gender, subscription status)

Product category performance

Review rating patterns

SQL Analysis (MySQL)

Key SQL analyses performed:

Total revenue by gender

Revenue by product category

Average purchase amount

Subscription vs non-subscription revenue comparison

Shipping type performance analysis

Example Query:

SELECT gender, SUM(purchase_amount) AS total_revenue
FROM customer
GROUP BY gender;

Power BI Dashboard

The interactive dashboard includes:

Revenue Overview

Customer Segmentation

Product Category Performance

Shipping Type Analysis

Review Rating Distribution

The dashboard enables business stakeholders to:

Identify top-performing categories

Monitor revenue trends

Understand customer purchasing behavior

Compare subscription vs non-subscription revenue

Key Insights & Results

Some insights generated from the analysis:

Certain product categories generate significantly higher revenue.

Subscription customers tend to have higher average purchase amounts.

Seasonal trends impact revenue performance.

Shipping type affects customer satisfaction ratings.

These insights can help businesses improve pricing strategy, marketing targeting, and operational decisions.

How to Run This Project
1. Clone the repository
git clone <your-repository-link>
2. Install required Python libraries
pip install pandas matplotlib seaborn mysql-connector-python
3. Run Python Analysis

Open the Jupyter Notebook or Python script:

jupyter notebook
4. Import Data into MySQL

Create database in MySQL

Import cleaned dataset

Run provided SQL queries

5. Open Power BI Dashboard

Open .pbix file in Power BI Desktop

Refresh data source if needed

Project Structure
├── data/
│   ├── raw_dataset.csv
│   ├── cleaned_dataset.csv
│
├── notebooks/
│   ├── data_cleaning.ipynb
│   ├── eda_analysis.ipynb
│
├── sql/
│   ├── analysis_queries.sql
│
├── powerbi/
│   ├── dashboard.pbix
│
└── README.md
Business Value

This project demonstrates:

Strong understanding of the data analysis lifecycle

Ability to combine Python + SQL + Power BI

Business-oriented thinking

Clean, structured analytical workflow

Data storytelling through visualization
