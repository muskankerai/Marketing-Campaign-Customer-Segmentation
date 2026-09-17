USE marketing_campaign;

SELECT COUNT(*) AS total_rows
FROM customers;
SELECT *
FROM customers
LIMIT 10;
DESCRIBE customers;
SELECT COUNT(DISTINCT ID) AS total_customers
FROM customers;
SELECT
    SUM(Total_Spending) AS total_spending
FROM customers;
SELECT
    ROUND(AVG(Total_Spending), 2) AS average_customer_spend
FROM customers;
SELECT
    ROUND(AVG(Total_Purchases), 2) AS average_purchases
FROM customers;
SELECT
    Customer_Segment,
    COUNT(DISTINCT ID) AS customer_count
FROM customers
GROUP BY Customer_Segment
ORDER BY customer_count DESC;
SELECT
    Customer_Segment,
    SUM(Total_Spending) AS total_spending
FROM customers
GROUP BY Customer_Segment
ORDER BY total_spending DESC;
SELECT
    Customer_Segment,
    ROUND(AVG(Total_Spending), 2) AS average_spending
FROM customers
GROUP BY Customer_Segment
ORDER BY average_spending DESC;
SELECT
    ROUND(AVG(Response) * 100, 2) AS response_rate_percent
FROM customers;
SELECT
    Customer_Segment,
    ROUND(AVG(Response) * 100, 2) AS response_rate_percent
FROM customers
GROUP BY Customer_Segment
ORDER BY response_rate_percent DESC;
SELECT
    SUM(Total_Campaigns_Accepted) AS total_campaigns_accepted
FROM customers;
SELECT
    Education,
    COUNT(DISTINCT ID) AS customer_count,
    ROUND(AVG(Total_Spending), 2) AS average_spending
FROM customers
GROUP BY Education
ORDER BY average_spending DESC;
SELECT
    Income_Group,
    COUNT(DISTINCT ID) AS customer_count,
    ROUND(AVG(Total_Spending), 2) AS average_spending
FROM customers
GROUP BY Income_Group
ORDER BY average_spending DESC;
SELECT
    ROUND(AVG(NumWebPurchases), 2) AS avg_web_purchases
FROM customers;
SELECT
    ROUND(AVG(NumStorePurchases), 2) AS avg_store_purchases
FROM customers;
SELECT
    ROUND(AVG(NumCatalogPurchases), 2) AS avg_catalog_purchases
FROM customers;
SELECT
    ROUND(AVG(NumDealsPurchases), 2) AS avg_deal_purchases
FROM customers;
SELECT
    ROUND(AVG(MntWines), 2) AS avg_wine_spending,
    ROUND(AVG(MntFruits), 2) AS avg_fruit_spending,
    ROUND(AVG(MntMeatProducts), 2) AS avg_meat_spending,
    ROUND(AVG(MntFishProducts), 2) AS avg_fish_spending,
    ROUND(AVG(MntSweetProducts), 2) AS avg_sweet_spending,
    ROUND(AVG(MntGoldProds), 2) AS avg_gold_spending
FROM customers;
SELECT
    ID,
    Income,
    Total_Spending,
    Total_Purchases,
    Customer_Segment
FROM customers
ORDER BY Total_Spending DESC
LIMIT 10;
SELECT
    ID,
    Income,
    Recency,
    Total_Spending,
    Total_Purchases,
    Customer_Segment
FROM customers
WHERE Customer_Segment = 'At Risk'
ORDER BY Total_Spending DESC;
SELECT
    Customer_Segment,
    ROUND(AVG(R_Score), 2) AS avg_recency_score,
    ROUND(AVG(F_Score), 2) AS avg_frequency_score,
    ROUND(AVG(M_Score), 2) AS avg_monetary_score,
    ROUND(AVG(Total_Spending), 2) AS avg_spending
FROM customers
GROUP BY Customer_Segment
ORDER BY avg_spending DESC;
SELECT
    Customer_Segment,
    COUNT(DISTINCT ID) AS customers,
    SUM(Total_Spending) AS total_spending,
    ROUND(AVG(Total_Spending), 2) AS avg_spending,
    ROUND(AVG(Total_Purchases), 2) AS avg_purchases,
    ROUND(AVG(Response) * 100, 2) AS response_rate_percent
FROM customers
GROUP BY Customer_Segment
ORDER BY total_spending DESC;