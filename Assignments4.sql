USE OrderDb
GO

--Print the Total price of orders which have the products supplied by 'Exotic Liquids' if the price is > 50 and also print it by Shipping company's Name

SELECT SUM(UnitPrice) As Total,CompanyName 
FROM ProductTable 
GROUP BY CompanyName
having ProductSupplied ='exotic liquids' and UnitPrice >50;

--Display the first word of all the company name

select SUBSTRING(CompanyName,1,4) as MyFirstWord from Company;

--Display the employee details whose joined at first

SELECT * FROM Employee
group by DOJ
having count(*)=1

--Display the employee details whose joined at recently

SELECT * FROM Employee
group by DOJ
HAVING MAX(DOJ)

--Write a query to get most expense and least expensive Product list (name and unit price).

SELECT ProductName,MAX(UnitPrice) AS MOST_EXPENSE,
MIN(UnitPrice) AS LEAST_EXPENCE
FROM ProductTable
GROUP BY ProductName, UnitPrice
HAVING count(unitprice)>1 

--Display the list of products that are out of stock

SELECT  * FROM ProductTable
WHERE OutOfStock ='yes'

--Display the list of products whose unitinstock is less than unitonorder

SELECT * FROM ProductTable
WHERE InStock < UnitsOrder

--Display list of categories and suppliers who supply products within those categories

SELECT Categories,Suppliers
FROM ProductTable
GROUP BY Categories,Suppliers
HAVING count(Categories)>=1 

--Write  query that determines the customer who has placed the maximum number of orders

SELECT * FROM Customer
where CustomerId=
(SELECT CustomerId FROM OrderTable
GROUP BY CUSTOMERID
HAVING MAX(CUSTOMERID)>0)

--Display the customerid whose name has substring ‘RA’


