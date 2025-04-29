create database sale;

use sale;

create table orders
(order_date date,amount int not null,
product_id char(10));

insert into orders (order_date, amount, product_id)
values
('2023-06-27', 15000, 'B-2140'),
('2024-12-27', 20000, 'C-5142'),
('2021-07-25', 11000, 'C-5472'),
('2023-06-27', 23000, 'C-2801'),
('2024-12-27', 10000, 'B-2679'),
('2021-07-25', 22000, 'C-5654'),
('2024-05-11', 14000, 'C-1496'),
('2021-10-09', 16000, 'C-5681'),
('2022-11-18', 19000, 'C-1542'),
('2022-11-18', 17000, 'C-5492'),
('2023-11-12', 13000, 'C-1462'),
('2023-03-23', 10000, 'C-3113'),
('2020-05-04', 55000, 'B-3214');

SELECT * FROM orders;
SELECT 
  EXTRACT(YEAR FROM order_date) AS year,
  EXTRACT(MONTH FROM order_date) AS month,
  SUM(amount) AS amount
FROM orders
GROUP BY year, month
ORDER BY amount DESC
LIMIT 10;