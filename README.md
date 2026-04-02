# 📈 Stock Market Data Analysis (SQL Project)

![Stock Banner](https://capsule-render.vercel.app/api?type=waving&color=0:0f2027,100:2c5364&height=200&section=header&text=Stock%20Market%20Analysis&fontSize=40&fontColor=ffffff)

---

## 📌 Project Overview

This project focuses on analyzing stock market data using SQL to extract meaningful financial insights.

It simulates real-world data analyst tasks such as analyzing stock performance, trading activity, price trends, and market behavior.

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

- 🏢 `companies` → Company details (symbol, name)  
- 📊 `stock_prices` → Daily stock data (price, volume, date)  
- 💼 `transactions` → Trading activity (quantity, price)  

---

## 🛠️ Tools & Technologies

![SQL](https://img.shields.io/badge/SQL-MySQL-blue?style=for-the-badge&logo=mysql)
![Finance](https://img.shields.io/badge/Domain-Stock%20Market-green?style=for-the-badge)
![Database](https://img.shields.io/badge/Database-Relational-orange?style=for-the-badge)

---

## 🔍 Data Exploration

Initial exploration was performed to understand the dataset:

```sql
USE assignment;

SHOW TABLES;

SELECT * FROM companies;
SELECT * FROM stock_prices;
SELECT * FROM transactions;
