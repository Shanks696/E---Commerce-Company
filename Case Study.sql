Use Case_study;


----- Data Exploration ------

Select * From Customers;
desc Customers;

Select * From Orders;
Desc Orders;

Select * From Ordersdetail;
Desc Ordersdetail;

Select * From Products;
Desc products;


------ Data Cleaning --------

Alter table Orders
Modify Column Order_date Date;


------ Data Analysis --------

#1 Identify the top 3 cities with the highest number of customers to determine key markets for targeted marketing and logistic optimization.

Select Location, Count(Customer_id) as Total_Customers From Customers
Group By Location
Order By Total_Customers DESC
Limit 3;


#2 Determine the distribution of customers by the number of orders placed. 
#  This insight will help in segmenting customers into one-time buyers, occasional shoppers, and regular customers for tailored marketing strategies.

With table_1 as (Select Customer_id,Count(Order_id) as Total_Orders From Orders Group By Customer_ID)
Select Total_Orders, Count(Customer_id) as Customer_Count From Table_1
Group BY Total_Orders
Order By Total_Orders;


#3 Identify products where the average purchase quantity per order is 2 but with a high total revenue, suggesting premium product trends.

Select Product_id,Avg(Quantity) AS Avg_Quantity,Sum(Quantity*price_per_Unit) as Total_Revenue From Ordersdetail
Group By Product_id
having Avg(Quantity) = 2
Order by Avg_Quantity DESC, Total_Revenue DESC;


#4 For each product category, calculate the unique number of customers purchasing from it. This will help understand which categories have wider appeal across the customer base.

Select Category, Count(distinct Customer_Id) As Unq_Customers From Orders O join Ordersdetail OD on O.order_id = OD.order_id Join Products P on OD.Product_id = P.Product_id
Group By Category
Order By Unq_Customers DESC;


#5 Analyze the month-on-month percentage change in total sales to identify growth trends.

With Table_1 as (Select date_format(Order_date,"%Y-%m") as `Month`, Sum(Total_amount) As Total_Sales From Orders Group By `Month` Order By `Month`)
Select *, round(((Total_Sales-lag(Total_Sales) over(Order By `Month`))/lag(Total_Sales) Over(Order By `Month`))*100,2) As MOM_Changes From Table_1;


#6 Examine how the average order value changes month-on-month. Insights can guide pricing and promotional strategies to enhance order value.

With Table_1 as(Select date_format(Order_date,"%Y-%m") as `Month`,Round(Avg(Total_Amount),2) as Avg_Sales From Orders
Group By `Month`
Order By `Month`)
select*,Avg_Sales-lag(Avg_Sales) Over(Order by `Month`) as ChangeinValue From Table_1
Order BY ChangeinValue DESC;


#7 Based on sales data, identify products with the fastest turnover rates, suggesting high demand and the need for frequent restocking.

Select Product_Id,Count(Order_id) as Sales_Freq From OrdersDetail
Group By Product_ID
Order by Sales_Freq DESC
Limit 5;


#8 List products purchased by less than 40% of the customer base, indicating potential mismatches between inventory and customer interest.

With Table_1 as (select P.Product_ID,P.`Name`,Count(Distinct Customer_ID) as Unq_Customers From Orders O Join OrdersDetail OD on O.Order_id = OD.Order_ID Join Products P on OD.Product_Id = P.Product_ID Group By P.Product_id,P.`Name`)
Select * From Table_1
Where Unq_Customers < (Select Count(Distinct Customer_id)*0.40 From Customers);


#9 Identify the months with the highest sales volume, aiding in planning for stock levels, marketing efforts, and staffing in anticipation of peak demand periods.

Select date_format(Order_date,"%Y-%m") as `Month`,Sum(Total_Amount) as total_Sales From Orders Group by `Month` Order By total_Sales DESC Limit 3;


#10 Evaluate the month-on-month growth rate in the customer base to understand the effectiveness of marketing campaigns and market expansion efforts.

With Table_1 as (select Customer_Id,Min(Order_date) as First_purchase_month from Orders group by Customer_id)
Select date_format(first_Purchase_Month,"%Y-%m") as FirstPurchaseMonth,Count(customer_Id) as TotalNewCustomers From Table_1 Group by FirstPurchaseMonth Order By FirstPurchaseMonth;



