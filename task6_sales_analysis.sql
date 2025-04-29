
-- TASK 6: Sales Trend Analysis Using Aggregations

-- 1. Monthly Revenue and Order Volume
SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM
    online_sales
GROUP BY
    EXTRACT(YEAR FROM order_date), EXTRACT(MONTH FROM order_date)
ORDER BY
    year, month;

-- 2. Total Revenue per Year
SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    SUM(amount) AS total_revenue
FROM
    online_sales
GROUP BY
    year
ORDER BY
    year;

-- 3. Top 3 Months by Revenue
SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS total_revenue
FROM
    online_sales
GROUP BY
    year, month
ORDER BY
    total_revenue DESC
LIMIT 3;

-- 4. Orders per Product
SELECT
    product_id,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(amount) AS revenue
FROM
    online_sales
GROUP BY
    product_id
ORDER BY
    revenue DESC;

-- 5. Check for NULLs
SELECT
    SUM(CASE WHEN order_id IS NULL THEN 1 ELSE 0 END) AS null_order_ids,
    SUM(CASE WHEN order_date IS NULL THEN 1 ELSE 0 END) AS null_order_dates,
    SUM(CASE WHEN amount IS NULL THEN 1 ELSE 0 END) AS null_amounts
FROM
    online_sales;
