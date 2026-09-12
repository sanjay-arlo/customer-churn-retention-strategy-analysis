-- Customer Churn & Retention Strategy Analysis

-- Overall churn and revenue at risk
SELECT COUNT(*) AS customers,
       SUM(CASE WHEN churn_flag=1 THEN 1 ELSE 0 END) AS churned_customers,
       ROUND(100.0*SUM(CASE WHEN churn_flag=1 THEN 1 ELSE 0 END)/COUNT(*),2) AS churn_rate_pct,
       SUM(CASE WHEN churn_flag=1 THEN monthly_revenue ELSE 0 END) AS revenue_at_risk
FROM customers;

-- Churn by customer segment
SELECT segment,
       COUNT(*) AS customers,
       ROUND(100.0*AVG(churn_flag),2) AS churn_rate_pct,
       SUM(CASE WHEN churn_flag=1 THEN monthly_revenue ELSE 0 END) AS revenue_at_risk
FROM customers
GROUP BY segment
ORDER BY churn_rate_pct DESC;

-- High-value churn-risk customers
SELECT customer_id, segment, monthly_revenue,
       usage_change_pct, support_contacts_90d, tenure_months
FROM customers
WHERE churn_risk='High'
ORDER BY monthly_revenue DESC
LIMIT 50;

-- Behavioural churn signals
SELECT ROUND(AVG(usage_change_pct),2) AS avg_usage_change,
       ROUND(AVG(support_contacts_90d),2) AS avg_support_contacts,
       ROUND(AVG(churn_flag),2) AS churn_rate
FROM customers
GROUP BY churn_flag;
