SELECT * FROM mydb.`supplement_sales_weekly_expanded1 (1)`;
SELECT Product_Name FROM mydb.`supplement_sales_weekly_expanded1 (1)`;

select * from mydb.`supplement_sales_weekly_expanded1 (1)`
where category = "amino acid" ;

select extract( year from date) as year,
sum( revenue) as total_revenue
from mydb.`supplement_sales_weekly_expanded1 (1)`
group by year
order by year;

select product_name, sum(revenue) as total_revenue
from mydb.`supplement_sales_weekly_expanded1 (1)`
group by Product_Name
order by total_revenue desc
limit 5;

select product_name,
avg(discount) as avg_discount,
avg(units_sold) as avg_units_sold
from mydb.`supplement_sales_weekly_expanded1 (1)`
group by Product_Name;


 select product_name, avg( revenue) as avg_revenue
 from mydb.`supplement_sales_weekly_expanded1 (1)`
 group by Product_Name
 order by avg_revenue desc;
 
 select product_name, avg(discount) as avg_discount
 from mydb.`supplement_sales_weekly_expanded1 (1)`
 group by Product_Name
 order by avg_discount desc;
 