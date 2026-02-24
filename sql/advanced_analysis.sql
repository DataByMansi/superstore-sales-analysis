--1.Month-over-Month Sales Growth (using LAG)
WITH monthly_sales AS (
    SELECT
	    "order_year",
		"order_month",
		ROUND(SUM("sales")::numeric, 2) AS monthly_sales
	FROM superstore
	GROUP BY "order_year", "order_month"
	ORDER BY "order_year", "order_month"
)
SELECT
    *,
    LAG(monthly_sales) OVER (ORDER BY "order_year", "order_month") AS prev_month_sales,
    ROUND(((monthly_sales - LAG(monthly_sales) OVER (ORDER BY "order_year", "order_month"))
        / LAG(monthly_sales) OVER (ORDER BY "order_year", "order_month") * 100)::numeric, 2) AS mom_growth_pct
FROM monthly_sales;

-- 2. Running Total of Sales by Year
SELECT
    "order_year",
    "order_month",
    ROUND(SUM("sales")::numeric, 2) AS monthly_sales,
    ROUND(SUM(SUM("sales")) OVER (
        PARTITION BY "order_year"
        ORDER BY "order_month"
    )::numeric, 2) AS running_total
FROM superstore
GROUP BY "order_year", "order_month"
ORDER BY "order_year", "order_month";

-- 3. Customer RFM-like Ranking (Recency, Frequency, Monetary)
WITH customer_stats AS (
    SELECT
        "customer_id",
        "customer_name",
        COUNT(DISTINCT "order_id") AS frequency,
        ROUND(SUM("sales")::numeric, 2) AS monetary,
        MAX("order_year")::int AS last_year
    FROM superstore
    GROUP BY "customer_id", "customer_name"
)
SELECT
    *,
    RANK() OVER (ORDER BY monetary DESC) AS revenue_rank,
    RANK() OVER (ORDER BY frequency DESC) AS order_rank
FROM customer_stats
LIMIT 20;

-- 4. Discount Impact Analysis
SELECT
    CASE
        WHEN "discount" = 0 THEN 'No Discount'
        WHEN "discount" <= 0.2 THEN 'Low (0-20%)'
        WHEN "discount" <= 0.4 THEN 'Medium (20-40%)'
        ELSE 'High (>40%)'
    END AS discount_tier,
    COUNT(*) AS orders,
    ROUND(AVG("profit")::numeric, 2) AS avg_profit,
    ROUND(AVG("sales")::numeric, 2) AS avg_sales
FROM superstore
GROUP BY discount_tier
ORDER BY avg_profit DESC;

-- 5. State-Level Performance
SELECT
    "state",
    "region",
    ROUND(SUM("sales")::numeric, 2) AS total_sales,
    ROUND(SUM("profit")::numeric, 2) AS total_profit,
    CASE
        WHEN SUM("profit") > 0 THEN 'Profitable'
        ELSE 'Loss-Making'
    END AS status
FROM superstore
GROUP BY "state", "region"
ORDER BY total_profit DESC;
