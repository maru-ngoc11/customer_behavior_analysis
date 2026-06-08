# Olist Customer Behavior Analysis

## Overview
# This project analyzes 100K+ real e-commerce orders from Olist, Brazil's largest online marketplace. 
# The goal is to uncover customer purchasing behavior, delivery performance, and regional trends through 8 business questions answered using Python, MySQL, and Power BI.

## Report
https://gamma.app/docs/Olist-Customer-Behavior-Analysis-c36f2f52wsv82po

## Business Questions
-- 1.At what time do customers place the most orders? (by hour, day, month)
-- 2.Which product categories have the highest number of orders and revenue?
-- 3.Which payment method is the most popular?
-- 4.Which regions have the most customers and highest revenue?
-- 5.What is the average delivery time?  
-- 6.How does delivery time affect review scores?
-- 7.Which product categories have the lowest review scores?
-- 8.What is the cancellation rate and how is it distributed across regions and categories?

## Tech Stack
- Python(Pandas)
- Power BI
- MYSQL

## Project Structure
Power BI
- Customer Behavior Dashboard
SQL
- Customer Behavior SQL
Python
- Ecommerce Analyst.ipynb
Data
- Processed
  - Master Table
- Raw
  - olist_customers_dataset
  - olist_geolocation_dataset
  - olist_order_items_dataset
  - olist_order_payments_dataset
  - olist_order_reviews_dataset
  - olist_orders_dataset
  - olist_products_dataset
  - olist_sellers_dataset
  - product_category
  - product_category_name_translation-checkpoint

## Key Insights
1.Revenue and order volume are highly concentrated in Beauty & Health, Furniture & Decor, Sports & Leisure, and Housewares categories. 
This indicates that products related to daily living, personal well-being, and home improvement represent key demand drivers on the Olist platform. 
Expanding seller participation and promotional activities in these categories could further strengthen revenue growth.

2.Credit Card is the preferred payment method among Olist customers, representing approximately 73% of all transactions. 
The overwhelming adoption of credit card payments highlights the importance of maintaining a reliable and frictionless payment experience.
Given its dominant role in customer transactions, payment optimization and credit card-focused promotional campaigns may present opportunities to enhance customer retention and increase sales performance.

3.Customers who received their orders within 11–13 days were significantly more likely to leave positive ratings (3–5 stars), whereas orders with delivery times extending up to 19 days were more frequently associated with low ratings (1–2 stars). 
This pattern suggests a strong relationship between delivery speed and customer satisfaction, indicating that shipping performance plays a critical role in shaping the overall customer experience on the Olist platform.

4.Security & Services recorded the lowest average review score among all product categories, with an average rating of only 2.50 stars. The category also experienced relatively longer delivery times, suggesting that fulfillment delays may have negatively impacted customer satisfaction. 
This finding further reinforces the strong relationship between delivery performance and customer experience on the Olist platform.

## Dataset
https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce
