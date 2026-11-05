-- SQLite queries on synthetic retail sales.
-- Q1 overall KPIs
SELECT COUNT(*) AS total_orders,
       SUM(CASE WHEN order_status='Completed' THEN 1 ELSE 0 END) AS completed_orders,
       SUM(CASE WHEN order_status='Returned' THEN 1 ELSE 0 END) AS returned_orders,
       ROUND(SUM(CASE WHEN order_status='Completed'
             THEN quantity*unit_price_usd*(1-discount_pct/100.0) ELSE 0 END),2) AS revenue_usd,
       ROUND(100.0*SUM(CASE WHEN order_status='Returned' THEN 1 ELSE 0 END)
             /NULLIF(COUNT(*),0),2) AS return_rate_pct
FROM sales;

-- Q2 monthly completed-order revenue
SELECT SUBSTR(order_date,1,7) AS order_month, COUNT(*) AS completed_orders,
       ROUND(SUM(quantity*unit_price_usd*(1-discount_pct/100.0)),2) AS revenue_usd
FROM sales WHERE order_status='Completed'
GROUP BY SUBSTR(order_date,1,7) ORDER BY order_month;

-- Q3 regional completed-order revenue
SELECT region, COUNT(*) AS completed_orders,
       ROUND(SUM(quantity*unit_price_usd*(1-discount_pct/100.0)),2) AS revenue_usd
FROM sales WHERE order_status='Completed'
GROUP BY region ORDER BY revenue_usd DESC;

-- Q4 revenue by category
SELECT product_category,
       ROUND(SUM(quantity*unit_price_usd*(1-discount_pct/100.0)),2) AS revenue_usd
FROM sales WHERE order_status='Completed'
GROUP BY product_category ORDER BY revenue_usd DESC;

-- Q5 channel return rate, all orders
SELECT channel, COUNT(*) AS orders,
       SUM(CASE WHEN order_status='Returned' THEN 1 ELSE 0 END) AS returned_orders,
       ROUND(100.0*SUM(CASE WHEN order_status='Returned' THEN 1 ELSE 0 END)
             /NULLIF(COUNT(*),0),2) AS return_rate_pct
FROM sales GROUP BY channel ORDER BY return_rate_pct DESC;
