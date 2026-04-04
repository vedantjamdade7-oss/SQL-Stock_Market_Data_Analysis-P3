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

## 🎯 Objectives

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

## 📋 Business Questions Solved

The following real-world analytical questions were solved using SQL:

1. Find the total traded volume for each stock symbol.  
2. Calculate the average closing price for each stock.  
3. Count the number of trading days for each stock.  
4. Find the maximum closing price recorded for each stock.  
5. List the stock symbols having an average traded volume greater than 100000.  
6. Show the top 5 stocks with the highest average closing price.  
7. Find the total traded volume for stocks traded on '2024-03-25'.  
8. Display the stock symbols with minimum closing price less than 200.  
9. List the average traded volume for each stock, sorted by volume descending.  
10. Show the top 3 stocks with the most trading records (by count).  
11. Find the total traded volume for stocks starting with the letter 'A'.  
12. Calculate the average closing price for each stock and filter those with average price less than 500.  
13. Find the total number of trading records for each stock and filter stocks having more than 10 records.  
14. List the top 5 stocks with the lowest average closing prices using OFFSET to skip the first 2.  
15. Display the stock symbols where total volume traded is between 500000 and 1000000.  
16. Show the stock symbols with an average volume greater than 50000 and order them by average volume descending.  
17. List the top 10 stock symbols by maximum price and use OFFSET to skip the top 5.  
18. Find the average, maximum, and minimum closing prices for each stock symbol.  
19. Display the count of trading records for stocks where the closing price was above 300.  
20. Show the stocks whose average traded volume is greater than the overall average traded volume of all stocks.  
