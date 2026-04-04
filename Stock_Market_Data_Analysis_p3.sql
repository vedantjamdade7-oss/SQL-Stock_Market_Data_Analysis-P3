# STOCK MARKET ANALYSIS

use stock_market_db;

-- 1. Find the total traded volume for each stock symbol.

SELECT symbol,SUM(quantity) AS Total_trand_volume
FROM companies c
JOIN transactions t
ON t.company_id=c.company_id
GROUP BY symbol;


-- 2. Calculate the average closing price for each stock.

SELECT name , ROUND(AVG(close_price),2) AS Avg_close_price
From stock_prices sp
JOIN companies c 
ON sp.company_id=c.company_id
GROUP BY name;

-- 3. Count the number of trading days for each stock.

SELECT name,count(*) as Trading_day
From stock_prices sp
JOIN companies c 
ON sp.company_id=c.company_id
GROUP BY name;

-- 4. Find the maximum closing price recorded for each stock.
SELECT name , ROUND(MAX(close_price),2) AS Max_close_price
From stock_prices sp
JOIN companies c 
ON sp.company_id=c.company_id
GROUP BY name;

-- 5. List the stock symbols having an average traded volume greater than 100000.
SELECT symbol,AVG(volume) AS Total_trand_volume
FROM stock_prices sp
JOIN companies c 
ON sp.company_id=c.company_id
GROUP BY symbol
HAVING Total_trand_volume>100000;

-- 6. Show the top 5 stocks with the highest average closing price.
SELECT name, AVG(close_price) as closing_price
FROM stock_prices sp
JOIN companies c
ON sp.company_id=c.company_id
GROUP BY name
ORDER BY closing_price
LIMIT 5;

-- 7. Find the total traded volume for stocks traded on '2024-03-25'.
SELECT SUM(volume) as total_trade_volume 
FROM stock_prices
WHERE date='2024-03-25';

-- 8. Display the stock symbols with minimum closing price less than 200.
SELECT symbol, MIN(close_price) as min_closing_price
FROM companies c
JOIN stock_prices sp
ON c.company_id=sp.company_id
GROUP BY symbol
HAVING  min_closing_price<200;

-- 9. List the average traded volume for each stock, sorted by volume descending.
SELECT name, AVG(volume) as Avg_volume
FROM stock_prices sp
JOIN companies c
ON sp.company_id=c.company_id
GROUP BY name
ORDER BY Avg_volume Desc;

-- 10. Show the top 3 stocks with the most trading records (by count).
SELECT name , count(*) as most_trading_records
From companies c
JOIN stock_prices sp
ON c.company_id=sp.company_id
GROUP BY name 
ORDER BY most_trading_records DESC
LIMIT 3;

-- 11. Find the total traded volume for stocks starting with the letter 'A'.
SELECT 	name, SUM(volume) as Total_traded_volume
FROM stock_prices sp
JOIN companies c
ON sp.company_id=c.company_id
WHERE name LIKE 'A%'
GROUP BY name;

-- 12. Calculate the average closing price for each stock and filter those with average price less than 500.
SELECT name, AVG(close_price) AS Avg_close_price 
FROM stock_prices sp
JOIN companies c
ON sp.company_id=c.company_id
GROUP BY name
HAVING Avg_close_price < 500;

-- 13. Find the total number of trading records for each stock and filter stocks having more than 10 records.
SELECT name, COUNT(*) as Total_of_treadRecord
FROM stock_prices sp
JOIN companies c
ON sp.company_id=c.company_id
GROUP BY name
HAVING Total_of_treadRecord > 10;

-- 14. List the top 5 stocks with the lowest average closing prices using OFFSET to skip the first 2.
SELECT name, AVG(close_price) as closing_price
FROM stock_prices sp
JOIN companies c
ON sp.company_id=c.company_id
GROUP BY name
ORDER BY closing_price ASC
LIMIT 5 OFFSET 2;

-- 15. Display the stock symbols where total volume traded is between 500000 and 1000000.
SELECT symbol, SUM(volume) as Total_traded
FROM stock_prices sp
JOIN companies c
ON sp.company_id=c.company_id
GROUP BY symbol
HAVING (Total_traded BETWEEN 500000 AND 1000000);

-- 16. Show the stock symbols with an average volume greater than 50000 and order them by average volume descending.
SELECT symbol, AVG(volume) as Avg_volume
FROM stock_prices sp
JOIN companies c
ON sp.company_id=c.company_id
GROUP BY symbol
HAVING Avg_volume>50000
ORDER BY Avg_volume DESC;

-- 17. List the top 10 stock symbols by maximum price and use OFFSET to skip the top 5.
SELECT symbol, MAX(price) as Max_price
FROM companies c
JOIN transactions t
ON c.company_id=t.company_id
GROUP BY symbol
ORDER BY Max_price DESC
LIMIT 10 OFFSET 5;

-- 18. Find the average, maximum, and minimum closing prices for each stock symbol.
SELECT symbol ,AVG(close_price), MAX(close_price), MIN(close_price)
FROM companies c
JOIN stock_prices sp
ON c.company_id=sp.company_id
GROUP BY symbol;

-- 19. Display the count of trading records for stocks where the closing price was above 300.
SELECT name, COUNT(*) as Trading_record
FROM stock_prices sp
JOIN companies c
ON sp.company_id=c.company_id
WHERE close_price>300
GROUP BY name;

-- 20. Show the stocks whose average traded volume is greater than the overall average traded volume of all stocks.

SELECT name, AVG(volume) as Avg_volume
FROM stock_prices sp
JOIN companies c
ON c.company_id=sp.company_id
GROUP BY name
HAVING Avg_volume>(SELECT AVG(volume) FROM stock_prices);
