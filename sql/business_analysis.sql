--1.How many orders are present in the dataset, and what are their different statuses?
SELECT
    order_status,
    COUNT(*) AS total_orderss
FROM orders
GROUP BY order_status
ORDER BY total_orders DESC;

--2.What are the total sales and total freight charges in the dataset?
SELECT
    ROUND(SUM(price), 2) AS total_sales,
    ROUND(SUM(freight_value), 2) AS total_freight
FROM order_items;

-- Question 3: Top 10 product categories by sales

SELECT
    p.product_category_name,
    ROUND(SUM(oi.price), 2) AS total_sales
FROM order_items AS oi
JOIN products AS p
    ON oi.product_id = p.product_id
GROUP BY p.product_category_name
ORDER BY total_sales DESC
LIMIT 10;

-- Question 4: Most popular payment methods

SELECT
    payment_type,
    COUNT(*) AS total_transactions,
    ROUND(SUM(payment_value), 2) AS total_payment_value
FROM order_payments
GROUP BY payment_type
ORDER BY total_transactions DESC;

-- Question 5: Top 10 states by number of customers

SELECT
    customer_state,
    COUNT(DISTINCT customer_id) AS total_customers
FROM customers
GROUP BY customer_state
ORDER BY total_customers DESC
LIMIT 10;

-- Question 6: Average order value

SELECT
    ROUND(AVG(order_total), 2) AS average_order_value
FROM (
    SELECT
        order_id,
        SUM(payment_value) AS order_total
    FROM order_payments
    GROUP BY order_id
);

-- Question 7: Top 10 products by revenue

SELECT
    oi.product_id,
    COUNT(*) AS items_sold,
    ROUND(SUM(oi.price), 2) AS total_revenue
FROM order_items AS oi
GROUP BY oi.product_id
ORDER BY total_revenue DESC
LIMIT 10;

-- Question 8: Delivery performance

SELECT
    CASE
        WHEN order_delivered_customer_date IS NULL
            THEN 'Not delivered'
        WHEN order_delivered_customer_date <= order_estimated_delivery_date
            THEN 'Delivered on time'
        ELSE 'Delivered late'
    END AS delivery_status,
    COUNT(*) AS total_orders
FROM orders
WHERE order_status = 'delivered'
   OR order_delivered_customer_date IS NULL
GROUP BY delivery_status
ORDER BY total_orders DESC;

-- Question 9:Average review score by product category

SELECT
    p.product_category_name,
    ROUND(AVG(r.review_score), 2) AS average_review_score,
    COUNT(r.review_id) AS total_reviews
FROM order_reviews AS r
JOIN order_items AS oi
    ON r.order_id = oi.order_id
JOIN products AS p
    ON oi.product_id = p.product_id
WHERE r.review_score IS NOT NULL
GROUP BY p.product_category_name
HAVING COUNT(r.review_id) >= 50
ORDER BY average_review_score DESC
LIMIT 10;

-- Question 10: Top 10 sellers by revenue

SELECT
    oi.seller_id,
    COUNT(DISTINCT oi.order_id) AS total_orders,
    COUNT(*) AS items_sold,
    ROUND(SUM(oi.price), 2) AS total_revenue
FROM order_items AS oi
GROUP BY oi.seller_id
ORDER BY total_revenue DESC
LIMIT 10;

-- Question 12: Monthly order trends

SELECT
    strftime('%Y-%m', order_purchase_timestamp) AS order_month,
    COUNT(*) AS total_orders
FROM orders
WHERE order_purchase_timestamp IS NOT NULL
GROUP BY order_month
ORDER BY order_month;



-- Question 11: Top 10 sellers by revenue with location

SELECT
    s.seller_id,
    s.seller_city,
    s.seller_state,
    COUNT(DISTINCT oi.order_id) AS total_orders,
    COUNT(*) AS items_sold,
    ROUND(SUM(oi.price), 2) AS total_revenue
FROM order_items AS oi
JOIN sellers AS s
    ON oi.seller_id = s.seller_id
GROUP BY
    s.seller_id,
    s.seller_city,
    s.seller_state
ORDER BY total_revenue DESC
LIMIT 10;