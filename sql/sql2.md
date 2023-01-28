### :camel: SQL examples
---

#### Task1: write a SQL query to find the maximum order (purchase) amount based on the combination of each customer and order date. Filter the rows for maximum order (purchase) amount is either 2000, 3000, 5760, 6000

	*table: Orders with columns Ord_no,purch_amt,ord_date,customer_id,salesman_id

```
SELECT customer_id,ord_date,MAX(purch_amt) 
FROM orders 
GROUP BY customer_id,ord_date 
HAVING MAX(purch_amt) IN(2000 ,3000,5760, 6000);

```

#### Task2: write a SQL query to find the maximum order (purchase) amount for each customer. The customer ID should be in the range 3002 and 3007(Begin and end values are included.).Filter the rows for maximum order (purchase) amount is higher than 1000

	*table: Orders with columns Ord_no,purch_amt,ord_date,customer_id,salesman_id

```
SELECT customer_id,MAX(purch_amt) 
FROM orders 
WHERE customer_id BETWEEN 3002 and 3007 
GROUP BY customer_id 
HAVING MAX(purch_amt)>1000;

```

#### Task3: write a SQL query to count all the orders generated on '2012-08-17'

	*table: Orders with columns Ord_no,purch_amt,ord_date,customer_id,salesman_id

```
SELECT COUNT(*) 
FROM orders 
WHERE ord_date='2012-08-17';
```

#### Task4: write a SQL query to count the number of employees in each department.

	*table: emp_details with columns Emp_Idno,Emp_Fname,Emp_Lname,EMP_Dept

```
SELECT emp_dept, COUNT(*)
  FROM emp_details
  GROUP BY emp_dept;

```

#### Task5: write a SQL query to find the salespeople and customers who live in the same city

	*table: salesman with columns salesman_id,name,city,commission
	*table: Customer with columns customer_id,cust_name,city,grade,salesman_id	
	
```
SELECT customer.cust_name,
salesman.name, salesman.city
FROM salesman, customer
WHERE salesman.city = customer.city;

```

#### Task6: write a SQL query to locate all the customers and the salesperson who works for them.

	*table: salesman with columns salesman_id,name,city,commission
	*table: Customer with columns customer_id,cust_name,city,grade,salesman_id	
	
```
SELECT customer.cust_name,
salesman.name, salesman.city
FROM salesman, customer
WHERE salesman.city = customer.city;

```

#### Task7: write a SQL query to find those salespeople who generated orders for their customers but are not located in the same city

	*table: Orders with columns Ord_no,purch_amt,ord_date,customer_id,salesman_id
	*table: Customer with columns customer_id,cust_name,city,grade,salesman_id

```
SELECT a.cust_name,a.city, b.ord_no,
b.ord_date,b.purch_amt AS "Order Amount" 
FROM customer a 
LEFT OUTER JOIN orders b 
ON a.customer_id=b.customer_id 
order by b.ord_date;
```

#### Task8: Write a SQL statement to make a report with customer name, city, order number, order date, and order amount in ascending order according to the order date to determine whether any of the existing customers have placed an order or not.

	*table: Orders with columns Ord_no,purch_amt,ord_date,customer_id,salesman_id
	*table: Customer with columns customer_id,cust_name,city,grade,salesman_id

```
SELECT a.cust_name,a.city, b.ord_no,
b.ord_date,b.purch_amt AS "Order Amount" 
FROM customer a 
LEFT OUTER JOIN orders b 
ON a.customer_id=b.customer_id 
order by b.ord_date;
```

#### Task9: write a SQL query to list all salespersons along with customer name, city, grade, order number, date, and amount.

	*table: salesman with columns salesman_id,name,city,commission
	*table: Customer with columns customer_id,cust_name,city,grade,salesman_id
```
SELECT a.cust_name,a.city,a.grade, 
b.name AS "Salesman", 
c.ord_no, c.ord_date, c.purch_amt 
FROM customer a 
RIGHT OUTER JOIN salesman b 
ON b.salesman_id=a.salesman_id 
RIGHT OUTER JOIN orders c 
ON c.customer_id=a.customer_id;
```

### Task10:  write a SQL query to find all the orders issued by the salesman 'Paul Adam'.

	*table: salesman with columns salesman_id,name,city,commission
	*table: Orders with columns Ord_no,purch_amt,ord_date,customer_id,salesman_id
```	
SELECT *
FROM orders
WHERE salesman_id =
    (SELECT salesman_id 
     FROM salesman 
     WHERE name='Paul Adam');
```