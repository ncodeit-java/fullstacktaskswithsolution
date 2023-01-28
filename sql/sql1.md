### :camel: SQL examples
---

#### Task1: Write a SQL statement that displays all the information about all salespeople.

	*table: salesman with columns salesman_id,name,city,commission

```
SELECT * FROM salesman;

```

#### Task2: Write a SQL statement to display specific columns such as names and commissions for all salespeople.

	*table: salesman with columns salesman_id,name,city,commission

```
SELECT name, commission FROM salesman;

```

#### Task3: Write a query to display the columns in a specific order, such as order date, salesman ID, order number, and purchase amount for all orders.

	*table: salesman with columns salesman_id,name,city,commission
	*table: Orders with columns Ord_no,purch_amt,ord_date,customer_id,salesman_id

```
SELECT ord_date, salesman_id, ord_no, purch_amt FROM orders;
```

#### Task4: write a SQL query to identify the unique salespeople ID

	*table: Orders with columns Ord_no,purch_amt,ord_date,customer_id,salesman_id

```
SELECT DISTINCT salesman_id
FROM orders;

```

#### Task5: write a SQL query to locate salespeople who live in the city of 'Paris'

	*table: salesman with columns salesman_id,name,city,commission
	
```
SELECT name,city FROM salesman
WHERE city='Paris';

```

#### Task6: write a SQL query to find the Nobel Prize winners in ‘Chemistry’ between the years 1965 and 1975

	*table:  nobel_win with columns year,name,city,commission

```
SELECT year, subject, winner, country
  FROM nobel_win
 WHERE subject = 'Chemistry'
   AND year>=1965 AND year<=1975;

```

#### Task7: write a SQL query to calculate total purchase amount of all orders.

	*table: Orders with columns Ord_no,purch_amt,ord_date,customer_id,salesman_id 

```
SELECT SUM (purch_amt) 
FROM orders;
```

#### Task8: write a SQL query to count the number of customers.

	*table: Customer with columns customer_id,cust_name,city,grade,salesman_id

```
SELECT COUNT(*) 
FROM customer;
```

#### Task9: write a SQL query to find the maximum purchase amount.

	*table: Orders with columns Ord_no,purch_amt,ord_date,customer_id,salesman_id 

```
SELECT MAX (purch_amt) 
FROM orders;
```

#### Task10: write a SQL query to find the highest order (purchase) amount by each customer on a particular order date. Filter the result by highest order (purchase) amount above 2000.00

	*table: Orders with columns Ord_no,purch_amt,ord_date,customer_id,salesman_id 

```
SELECT customer_id,ord_date,MAX(purch_amt) 
FROM orders 
GROUP BY customer_id,ord_date 
HAVING MAX(purch_amt)>2000.00;

```