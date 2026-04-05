# 📈 Stock Market Data Analysis (SQL Project)

## Project Preview
<p align="center">
  <img src="https://github.com/user-attachments/assets/e37ceb5b-2213-40f6-a36d-b006e76ccd96" width="100%">
</p>

---

## 📌 Project Overview

This project focuses on analyzing stock market data using SQL to extract meaningful financial insights.

It simulates real-world data analyst tasks such as analyzing stock performance, trading activity, price trends, investor behavior, and market trends.

---

## 🎯 Objective

- Analyze trading volume across stocks  
- Evaluate stock price performance  
- Identify high-performing and low-performing stocks  
- Track trading activity and patterns  
- Support data-driven investment decisions  

---

## 🗂️ Database Structure

The analysis is based on the following tables:

- 🏢 `companies` → Company details such as `company_id`, `name`, `symbol`, and `sector`
- 👥 `investors` → Investor details such as `investor_id`, `name`, `email`, and `city`
- 📊 `stock_prices` → Daily stock data such as `price_id`, `company_id`, `date`, `open_price`, `close_price`, and `volume`
- 💼 `transactions` → Trading activity such as `transaction_id`, `investor_id`, `company_id`, `transaction_date`, `transaction_type`, `quantity`, and `price`

---

## 🛠️ Tools & Technologies

![SQL](https://img.shields.io/badge/SQL-MySQL-blue?style=for-the-badge&logo=mysql)
![Finance](https://img.shields.io/badge/Domain-Stock%20Market-green?style=for-the-badge)
![Database](https://img.shields.io/badge/Database-Relational-orange?style=for-the-badge)

---

## 🔍 Data Exploration

Initial exploration was performed to understand the dataset structure:

```sql
USE assignment;

SHOW TABLES;

SELECT * FROM companies;
SELECT * FROM investors;
SELECT * FROM stock_prices;
SELECT * FROM transactions;
```

## 📋 Business Questions Solved

The following real-world analytical questions were solved using SQL:

1. Find the total traded volume for each stock symbol.
```sql
SELECT symbol,SUM(quantity) AS Total_trand_volume
FROM companies c
JOIN transactions t
ON t.company_id=c.company_id
GROUP BY symbol;
```  

2. Calculate the average closing price for each stock.
```sql
SELECT name , ROUND(AVG(close_price),2) AS Avg_close_price
From stock_prices sp
JOIN companies c 
ON sp.company_id=c.company_id
GROUP BY name;
```

3. Count the number of trading days for each stock.
```sql
SELECT name, count(*) as Trading_day
From stock_prices sp
JOIN companies c 
ON sp.company_id=c.company_id
GROUP BY name;
```

4. Find the maximum closing price recorded for each stock.
```sql
SELECT name , ROUND(MAX(close_price),2) AS Max_close_price
From stock_prices sp
JOIN companies c 
ON sp.company_id=c.company_id
GROUP BY name;
```

5. List the stock symbols having an average traded volume greater than 100000.
```sql
SELECT symbol,AVG(volume) AS Total_trand_volume
FROM stock_prices sp
JOIN companies c 
ON sp.company_id=c.company_id
GROUP BY symbol
HAVING Total_trand_volume>100000;
```

6. Show the top 5 stocks with the highest average closing price.
```sql
SELECT name, AVG(close_price) as closing_price
FROM stock_prices sp
JOIN companies c
ON sp.company_id=c.company_id
GROUP BY name
ORDER BY closing_price DESC
LIMIT 5;
```

7. Find the total traded volume for stocks traded on '2024-03-25'.
```sql
SELECT SUM(volume) as total_trade_volume 
FROM stock_prices
WHERE date='2024-03-25';
```

8. Display the stock symbols with minimum closing price less than 200.
```sql
SELECT symbol, MIN(close_price) as min_closing_price
FROM companies c
JOIN stock_prices sp
ON c.company_id=sp.company_id
GROUP BY symbol
HAVING  min_closing_price<200;
```

9. List the average traded volume for each stock, sorted by volume descending.
```sql
SELECT name, AVG(volume) as Avg_volume
FROM stock_prices sp
JOIN companies c
ON sp.company_id=c.company_id
GROUP BY name
ORDER BY Avg_volume Desc;
```

10. Show the top 3 stocks with the most trading records (by count).
```sql
SELECT name , count(*) as most_trading_records
From companies c
JOIN stock_prices sp
ON c.company_id=sp.company_id
GROUP BY name 
ORDER BY most_trading_records DESC
LIMIT 3;
```

11. Find the total traded volume for stocks starting with the letter 'A'.
```sql
SELECT 	name, SUM(volume) as Total_traded_volume
FROM stock_prices sp
JOIN companies c
ON sp.company_id=c.company_id
WHERE name LIKE 'A%'
GROUP BY name;
```

12. Calculate the average closing price for each stock and filter those with average price less than 500.
```sql
SELECT name, AVG(close_price) AS Avg_close_price 
FROM stock_prices sp
JOIN companies c
ON sp.company_id=c.company_id
GROUP BY name
HAVING Avg_close_price < 500;
```

13. Find the total number of trading records for each stock and filter stocks having more than 10 records.
```sql
SELECT name, COUNT(*) as Total_of_treadRecord
FROM stock_prices sp
JOIN companies c
ON sp.company_id=c.company_id
GROUP BY name
HAVING Total_of_treadRecord > 10;
```

14. List the top 5 stocks with the lowest average closing prices using OFFSET to skip the first 2.
```sql
SELECT name, AVG(close_price) as closing_price
FROM stock_prices sp
JOIN companies c
ON sp.company_id=c.company_id
GROUP BY name
ORDER BY closing_price ASC
LIMIT 5 OFFSET 2;
```

15. Display the stock symbols where total volume traded is between 500000 and 1000000.
```sql
SELECT symbol, SUM(volume) as Total_traded
FROM stock_prices sp
JOIN companies c
ON sp.company_id=c.company_id
GROUP BY symbol
HAVING (Total_traded BETWEEN 500000 AND 1000000);
```

16. Show the stock symbols with an average volume greater than 50000 and order them by average volume descending.
```sql
SELECT symbol, AVG(volume) as Avg_volume
FROM stock_prices sp
JOIN companies c
ON sp.company_id=c.company_id
GROUP BY symbol
HAVING Avg_volume>50000
ORDER BY Avg_volume DESC;
```

17. List the top 10 stock symbols by maximum price and use OFFSET to skip the top 5.
```sql
SELECT symbol, MAX(sp.close_price) AS max_price 
FROM stock_prices sp 
JOIN companies c ON sp.company_id = c.company_id 
GROUP BY symbol 
ORDER BY max_price DESC 
LIMIT 10 OFFSET 5;
```

18. Find the average, maximum, and minimum closing prices for each stock symbol.
```sql
SELECT symbol ,AVG(close_price), MAX(close_price), MIN(close_price)
FROM companies c
JOIN stock_prices sp
ON c.company_id=sp.company_id
GROUP BY symbol;
```

19. Display the count of trading records for stocks where the closing price was above 300.
```sql
SELECT name, COUNT(*) as Trading_record
FROM stock_prices sp
JOIN companies c
ON sp.company_id=c.company_id
WHERE close_price>300
GROUP BY name;
```

20. Show the stocks whose average traded volume is greater than the overall average traded volume of all stocks.
```sql
SELECT name, AVG(volume) as Avg_volume
FROM stock_prices sp
JOIN companies c
ON c.company_id=sp.company_id
GROUP BY name
HAVING Avg_volume>(SELECT AVG(volume) FROM stock_prices);
```

## 📌 Market Recommendations

Based on the SQL analysis of the dataset:

📈 **High Trading Volume Stocks**  
- Focus on stocks like **Apple (AAPL)** and **Tesla (TSLA)**  
- These stocks show very high trading volume (80M–90M range), indicating strong liquidity and active market participation  

💰 **Consistent Growth Stocks**  
- Invest in **Amazon (AMZN)** and **Tesla (TSLA)**  
- These stocks show continuous increase in closing prices across multiple days  
- Example: Amazon rising up to **3200**, Tesla showing steady growth trend  

⚠️ **Low Activity Stocks**  
- Avoid or be cautious with **JPMorgan (JPM)**, **Pfizer (PFE)**, **Netflix (NFLX)**, and **Ford (F)**  
- These stocks have no trading records in stock_prices table → indicates low or missing activity  

📊 **High Volatility Stocks**  
- Stocks like **Amazon (AMZN)** and **Tesla (TSLA)** show noticeable price movement  
- Suitable for short-term trading strategies due to price fluctuations  

🔍 **Diversification Strategy**  
- Technology: **Apple (AAPL), Google (GOOGL), Meta (META)**  
- Automobile: **Tesla (TSLA)**  
- Finance: **ICICI Bank (ICICIBANK)**  

- Diversifying across sectors reduces risk and improves portfolio stability  

