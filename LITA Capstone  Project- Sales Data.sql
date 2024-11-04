 select * from [dbo].[LITA Capstone Dataset pp]

select distinct * into #temp_table from [dbo].[LITA Capstone Dataset pp]

truncate table [dbo].[LITA Capstone Dataset pp]

insert into [dbo].[LITA Capstone Dataset pp] select * from #temp_table

drop table #temp_table

alter table [dbo].[LITA Capstone Dataset pp]
add Revenue decimal(10,2);

update [dbo].[LITA Capstone Dataset pp]
set revenue = quantity*unit_price;

alter table [dbo].[LITA Capstone Dataset pp]
alter column unit_price decimal (10, 2)

alter table [dbo].[LITA Capstone Dataset pp]
alter column quantity decimal (10, 2)

alter table [dbo].[LITA Capstone Dataset pp]
alter column revenue smallint

alter table [dbo].[LITA Capstone Dataset pp]
alter column unit_price tinyint

alter table [dbo].[LITA Capstone Dataset pp]
alter column quantity tinyint

select * from [dbo].[LITA Capstone Dataset pp]

---total sales of each product----
select [Product], sum(Revenue) as [Total Sales]
from [dbo].[LITA Capstone Dataset pp]
group by product
order by 2 desc

select [Product], sum(quantity) as [Total Quantity Sold]
from [dbo].[LITA Capstone Dataset pp]
group by product
order by 2 desc

---number of sale transaction in each region---
select Region, count(order_id) as [Number of Transactions]
from [dbo].[LITA Capstone Dataset pp]
group by region
order by 2 desc

---revenue generated from each region---
select Region, sum(revenue) as [Total Quantity Sold]
from [dbo].[LITA Capstone Dataset pp]
group by region
order by 2 desc

---Top selling product by total sale---
select top 1 product, sum(revenue) as [Highest selling product] 
from [dbo].[LITA Capstone Dataset pp]
group by product
order by 2 desc

--Top selling product by total quantity sold--
select top 1 product, sum(quantity) as [Highest quantity product] 
from [dbo].[LITA Capstone Dataset pp]
group by product
order by 2 desc

---total revenue of each product----
select [Product], sum(revenue) as [Total Revenue]
from [dbo].[LITA Capstone Dataset pp]
group by product
order by 2 desc

---monthly sale total for the current year---
select month(order_date) as sales_month,
	sum(quantity) as total_sales 
	from[dbo].[LITA Capstone Dataset pp]
	where year(order_date) = 2024
	group by month(order_date)
	order by total_sales desc

---monthly sale total for the current year---(to give the month name)
select datename(month, order_date) as sales_month,
	sum(quantity) as total_sales 
	from[dbo].[LITA Capstone Dataset pp]
	where year(order_date) = 2024
	group by datename(month, order_date)
	order by 2 desc

---top five customer by total purchase amount---
select top 5 customer_id, sum(revenue) as [Total Purchase Amount] 
from [dbo].[LITA Capstone Dataset pp]
group by customer_id
order by [Total Purchase Amount] desc

---percentage total sales/revenue contributed in each region---
select region, 
sum(revenue) as regional_sales, 
(sum(revenue) * 1.0 / (select sum(revenue) from [dbo].[LITA Capstone Dataset pp])) * 100 as percentage_contribution 
from [dbo].[LITA Capstone Dataset pp] 
group by region 
order by regional_sales desc
---to round the percentage to two decimal place---
select region, 
sum(revenue) as regional_sales, 
Round((sum(revenue) * 1.0 / (select sum(revenue) from [dbo].[LITA Capstone Dataset pp])) * 100, 2) as percentage_contribution 
from [dbo].[LITA Capstone Dataset pp] 
group by region 
order by 2 desc
---% contributed in each region by quantity sold--
select region, 
sum(quantity) as Total_Quantity_sold, 
(sum(quantity) * 1.0 / (select sum(quantity) from [dbo].[LITA Capstone Dataset pp])) * 100 as percentage_contribution 
from [dbo].[LITA Capstone Dataset pp] 
group by region 
order by total_quantity_sold desc

---product with no sale in the last quarter---
select distinct product from [dbo].[LITA Capstone Dataset pp] 
where product not in (select product from [dbo].[LITA Capstone Dataset pp]
where order_date >= dateadd(q, -1, getdate()))

select product from [dbo].[LITA Capstone Dataset pp]
group by product 
having max (order_date) < dateadd(q, -1, getdate())

--OTHER QUERIES--
---monthly sale total by year--- 
select month(order_date) as sales_month,
	sum(quantity) as total_sales 
	from[dbo].[LITA Capstone Dataset pp]
	group by month(order_date)
	order by sales_month

---monthly sale total by year--- (to show month name)
select datename(month,order_date) as sales_month,
	sum(quantity) as total_sales 
	from[dbo].[LITA Capstone Dataset pp]
 	group by datename(month,order_date)
	order by 2 desc
---Quantity of products sold in each region---
select product, sum(Quantity) as [South Total Quantity Sold]
from [dbo].[LITA Capstone Dataset pp]
where region = 'south'
group by product
order by 2 desc

select product, sum(Quantity) as [North Total Quantity Sold]
from [dbo].[LITA Capstone Dataset pp]
where region = 'north'
group by product
order by 2 desc

select product, sum(Quantity) as [East Total Quantity Sold]
from [dbo].[LITA Capstone Dataset pp]
where region = 'east'
group by product
order by 2 desc

select product, sum(Quantity) as [West Total Quantity Sold]
from [dbo].[LITA Capstone Dataset pp]
where region = 'west'
group by product
order by 2 desc