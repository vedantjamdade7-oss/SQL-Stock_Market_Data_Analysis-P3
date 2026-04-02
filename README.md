# 📈 Stock Market Data Analysis (SQL Project)

<p align="center">
  <img src="stock-banner.png" width="100%">
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
