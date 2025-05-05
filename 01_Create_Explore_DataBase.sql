create database db_churn;
use db_churn;
select * from customer_data;

SELECT Gender, Count(Gender) as TotalCount,
Count(Gender) * 100 / (Select Count(*) from customer_data)  as Percentage
from customer_data
Group by Gender;

SELECT Contract, Count(Contract) as TotalCount,
Count(Contract) * 1.0 / (Select Count(*) from customer_data)  as Percentage
from customer_data
Group by Contract;

SELECT Customer_Status, Count(Customer_Status) as TotalCount, Sum(Total_Revenue) as TotalRev,
Sum(Total_Revenue) / (Select sum(Total_Revenue) from customer_data) * 100  as RevPercentage
from customer_data
Group by Customer_Status;

SELECT State, Count(State) as TotalCount,
Count(State) * 1.0 / (Select Count(*) from customer_data)  as Percentage
from customer_data
Group by State
Order by Percentage desc;