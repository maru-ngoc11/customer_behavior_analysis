USE customer_behavior;
select * from product_translation;
select * from master;
-- 1.At what time do customers place the most orders? (by hour, day, month)
# Orders by hour
SELECT 
    extract(hour from order_purchase_timestamp) as hour,
    COUNT(order_id) as total_orders
FROM master
WHERE order_status = 'delivered'
GROUP BY hour
ORDER BY total_orders DESC;

# Orders by Day
SELECT 
    extract(day from order_purchase_timestamp) as Day,
    COUNT(order_id) as total_orders
FROM master
WHERE order_status = 'delivered'
GROUP BY Day
ORDER BY total_orders DESC;

# Orders by Month
SELECT 
    extract(month from order_purchase_timestamp) as Month,
    COUNT( order_id) as total_orders
FROM master
WHERE order_status = 'delivered'
GROUP BY Month
ORDER BY total_orders DESC;
-- 2.Which product categories have the highest number of orders and revenue?
with product_category as (
	SELECT
	 product_id,
     product_category_name_english
	FROM product_translation
    GROUP BY product_id, product_category_name_english
)
select 
p.product_category_name_english,
ROUND(SUM(m.payment_value),2) as revenue,
COUNT(distinct order_id) as total_orders
from master m
join product_category p
	ON m.product_id = p.product_id
WHERE m.order_status = 'delivered'
group by p.product_category_name_english
ORDER BY total_orders DESC;
-- 3.Which payment method is the most popular?
Select
payment_type,
count(payment_type) as most_popular
FROM master
GROUP BY payment_type
ORDER BY most_popular DESC;	
-- 4.Which regions have the most customers and highest revenue?
Select
customer_state,
ROUND(SUM(payment_value),2) as revenue,
COUNT(distinct customer_id) as total_customer
FROM master
where order_status = 'delivered'
GROUP BY customer_state
ORDER BY revenue DESC;	
-- 5.What is the average delivery time?
Select
AVG(datediff(order_delivered_customer_date, order_purchase_timestamp)) as average_delivery_time
FROM master 
where order_status = 'delivered'
ORDER BY average_delivery_time DESC;
-- 6.How does delivery time affect review scores?
Select
AVG(datediff(order_delivered_customer_date, order_purchase_timestamp)) as delivery_time,
review_score
FROM master
where order_status = 'delivered'
GROUP BY  review_score
ORDER BY review_score desc;
-- 7.Which product categories have the lowest review scores?
with product_category as(
	SELECT
    product_id,
    product_category_name_english 
    FROM product_translation
    GROUP BY product_id,
    product_category_name_english
)
SELECT
p.product_category_name_english,
AVG(m.review_score) as average_scores
FROM master m 
JOIN product_category p
	ON m.product_id = p.product_id
where order_status = 'delivered'
GROUP BY p.product_category_name_english
order by average_scores ASC;
-- 8.What is the cancellation rate and how is it distributed across regions and categories?
with product_category as(
	SELECT
    product_id,
    product_category_name_english 
    FROM product_translation
    GROUP BY product_id,
    product_category_name_english
)
SELECT
p.product_category_name_english,
m.customer_state,
COUNT(distinct m.order_id) as total_orders,
ROUND(COUNT(CASE WHEN
		m.order_status = 'canceled' then m.order_id END
) * 100.0  / COUNT(distinct m.order_id), 2) as cancellation_rate
FROM master m
JOIN product_category p
ON m.product_id = p.product_id
GROUP BY p.product_category_name_english, m.customer_state
HAVING total_orders >= 50
ORDER BY cancellation_rate DESC;