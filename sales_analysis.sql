use newschema;
-- Show all customer records
select * from sales;
-- Show total number of customers
select count(*) from sales as counts;
-- selct customer_id for electronics category
select Customer_ID from sales where Most_Frequent_Category='Electronics';
-- select sales where region is asia
select * from sales where Region='Asia';
-- select all where purchase frequency greater than 9
select  *from sales where Purchase_Frequency>9;
-- perforn and operation
select Most_Frequent_Category from sales where Season='Winter' and Preferred_Purchase_Times='Evening' ;
--  perform inner join 
SELECT a.Region,b.Most_Frequent_Category FROM sales a INNER JOIN sales b  ON a.Launch_Date= b.Peak_Sales_Date ;
-- select year of peak sales 
select year(Peak_sales_Date) as Year from sales;
-- Group by region select most frequent category
select max(Most_Frequent_Category) from sales 
group by Region ;
