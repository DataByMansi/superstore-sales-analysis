--1. Total Sales, Profit, and Orders
SELECT
    COUNT(DISTINCT "order_id") AS total_orders,
	ROUND(SUM("sales")::numeric, 2) AS total_sales,
	ROUND(SUM("profit")::numeric, 2) AS total_profit,
	ROUND((SUM("profit") / SUM("sales") * 100) ::numeric, 2) AS profit_margin_pct
FROM superstore;

--2. Sales and Profit by Category
SELECT
    "category",
	COUNT(DISTINCT "order_id") AS orders,
	ROUND(SUM("sales")::numeric, 2) AS total_sales,
    ROUND(SUM("profit")::numeric, 2) AS total_profit,
    ROUND((SUM("profit") / SUM("sales") * 100)::numeric, 2) AS margin_pct
FROM superstore
GROUP BY "category"
ORDER BY total_sales DESC;

-- 3. Sales by Region and Category
SELECT
    "region",
    "category",
    ROUND(SUM("sales")::numeric, 2) AS total_sales,
    ROUND(SUM("profit")::numeric, 2) AS total_profit
FROM superstore
GROUP BY "region", "category"
ORDER BY "region", total_sales DESC;

-- 4. Top 10 Products by Revenue
SELECT
    "product_name",
    ROUND(SUM("sales")::numeric, 2) AS total_sales,
    ROUND(SUM("profit")::numeric, 2) AS total_profit
FROM superstore
GROUP BY "product_name"
ORDER BY total_sales DESC
LIMIT 10;

-- 5. Top 10 Loss-Making Products
SELECT
    "product_name",
    ROUND(SUM("sales")::numeric, 2) AS total_sales,
    ROUND(SUM("profit")::numeric, 2) AS total_profit
FROM superstore
GROUP BY "product_name"
ORDER BY total_profit ASC
LIMIT 10;

-- 6. Yearly Sales Trend
SELECT
    "order_year",
    COUNT(DISTINCT "order_id") AS orders,
    ROUND(SUM("sales")::numeric, 2) AS total_sales,
    ROUND(SUM("profit")::numeric, 2) AS total_profit
FROM superstore
GROUP BY "order_year"
ORDER BY "order_year";

-- 7. Customer Segment Analysis
SELECT
    "segment",
    COUNT(DISTINCT "customer_id") AS unique_customers,
    COUNT(DISTINCT "order_id") AS total_orders,
    ROUND(SUM("sales")::numeric, 2) AS total_sales,
    ROUND(AVG("sales")::numeric, 2) AS avg_order_value
FROM superstore
GROUP BY "segment"
ORDER BY total_sales DESC;

-- 8. Shipping Mode Performance
SELECT
    "ship_mode",
    COUNT(*) AS order_count,
    ROUND(AVG("days_to_ship")::numeric, 1) AS avg_days_to_ship,
    ROUND(SUM("sales")::numeric, 2) AS total_sales
FROM superstore
GROUP BY "ship_mode"
ORDER BY order_count DESC;