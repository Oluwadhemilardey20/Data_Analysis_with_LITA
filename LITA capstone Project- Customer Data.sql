select * from [dbo].[LITA Capstone Dataset 2]

select distinct * into #temp_table from [dbo].[LITA Capstone Dataset 2]

truncate table [dbo].[LITA Capstone Dataset 2]

insert into [dbo].[LITA Capstone Dataset 2] select * from #temp_table

drop table #temp_table

select * from [dbo].[LITA Capstone Dataset 2]
where revenue = '2638' and customername = 'john'

---total number of customers from each region---
select region, count(customerid) as total_customers
from [dbo].[LITA Capstone Dataset 2]
group by region 
order by 2 desc

---most popular subscription type by number of customers---
select subscriptiontype, count(customerid) as total_subscription
from [dbo].[LITA Capstone Dataset 2]
group by subscriptiontype
order by 2 desc

---customers who cancelled within 6months---
select customerid, subscriptionstart, subscriptionend, canceled 
from [dbo].[LITA Capstone Dataset 2]
where canceled = 1 and subscriptionend <=dateadd(month,6,subscriptionstart)

---average subscription for all customers---
select avg(datediff(month, subscriptionstart, subscriptionend)) as avg_subscription_duration
from [dbo].[LITA Capstone Dataset 2] where canceled = 1 

select avg(datediff(month, subscriptionstart, 
case
when subscriptionend is null then getdate()
else subscriptionend 
end))
as avg_subscription_duration 
from [dbo].[LITA Capstone Dataset 2]

---customers with subscription longer than 12months
select customerid, subscriptionstart, subscriptionend, 
datediff(month, subscriptionstart, subscriptionend) as subscriptiom_duration
from [dbo].[LITA Capstone Dataset 2]
where datediff(month, subscriptionstart, subscriptionend) > 12

---total revenue by subscription type---
select subscriptiontype, sum(revenue) as [Total Subscription Revenue]
from [dbo].[LITA Capstone Dataset 2]
group by subscriptiontype 
order by 2 desc

---top three region by subscription cancellation---
select top 3 region, count (*) as cancellation_count
from [dbo].[LITA Capstone Dataset 2] 
where canceled = 1
group by region 
order by 2 desc

---total number of active and cancelled subscription 

Select COUNT(canceled) as [Canceled Subscription] from [dbo].[LITA Capstone Dataset 2] 
where canceled = 'True'

Select COUNT(canceled) as [Active Subscription] from [dbo].[LITA Capstone Dataset 2] 
where canceled = 'False'

SELECT * FROM [dbo].[LITA Capstone Dataset 2]