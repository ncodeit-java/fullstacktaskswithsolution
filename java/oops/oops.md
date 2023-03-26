### :camel: OOPs examples
---

#### Task1: Create a class Dog, that has 3 properties (class fields) breed, age and colour with behaviours (class method) bark and sleep.Write a class with main method and create the dog object and invoke the methods

```
class Dog {

	// Properties
	String breed;
	int age;
	String colour;

	// Behaviors ( methods)

	public void bark() {
		system.out.println("barking");
	}

	public void sleep() {
		system.out.println("sleep");
	}
}

```

#### Task2: There is a car, which has attributes model and price, and the car has functionalities start, stop and move. Also, there is a driver, having attributes name and age, and the behaviour drive.Model the classes Car and Driver.

	*table: salesman with columns salesman_id,name,city,commission

```
class Car {
	private int price;
	private String model;

	public void start() {
		System.out.println("Car Start");
	}

	public void stop() {
		System.out.println("Car stop");
	}

	public void move() {
		System.out.println("Car move");
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

}

class Driver {
	private String name;
	private int age;

	public void drive() {

		System.out.println("Driver drive car");
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}
}

```

#### Task3: Create a class called circle with two variables radius and colour and add default constructor and constructor with arguments and add methods getRadius() and getArea() (Area formaula - radius*radius*Math.PI). Create a main class to create a circle object and print the data

```
public class Circle {  
   // private instance variable, not accessible from outside this class
   private double radius;
   private String color;
   

   public Circle() {  // 1st (default) constructor
      radius = 1.0;
      color = "red";
   }
   
   /** Constructs a Circle instance with the given radius and default color */
   public Circle(String c,double r) {  // 2nd constructor
      radius = r;
      color = c;
   }
   
   /** Returns the radius */
   public double getRadius() {
     return radius; 
   }
   
   /** Returns the area of this Circle instance */
   public double getArea() {
      return radius*radius*Math.PI;
   }
}
```

#### Task4: Design a class called Rectangle, which models a rectangle with a length and a width (in float). Create a method getArea to calculate the area of the rectangle


```
public class Rectangle  { 
	private int length;
	private int width;
	
	public Rectangle(int length, int width) {
		this.length = length;
		this.width = width;
	}
	
	public int getArea(){
		return this.length*this.width;
	}
}

```

#### Task5: Design a class called Employee, which models an employee with an ID, name and salary. Create a method raiseSalary(percent) increases the salary by the given percentage. Write the Employee class.
	
```
public class Employee  { 
	private int id;
	private int name;
	private float salary;
	
	public Employee(int id, int name, float salary) {
		super();
		this.id = id;
		this.name = name;
		this.salary = salary;
	}
	
	public float raiseSalary(int percent){
		return (this.salary+this.salary*(10/100));
	}
	

}

```

#### Task6: Design a class called InvoiceItem, which models an item of an invoice, with ID, description, quantity and unit price. Add a method to getTotalPrice (unit price * quantity) and add toString method to print below msg

	*InvoiceItem [id=?,desc=?,qty=?,unitPrice=?]

```
public class InvoiceItem  {
	
	private int id;
	private String desc;
	private int qty;
	private float unitPrice;
	
	public InvoiceItem(int id, String desc, int qty, float unitPrice) {
		super();
		this.id = id;
		this.desc = desc;
		this.qty = qty;
		this.unitPrice = unitPrice;
	}
	
	public float getTotal(){
		return this.unitPrice*this.qty;
	}

	@Override
	public String toString() {
		return "InvoiceItem [id=" + id + ", desc=" + desc + ", qty=" + qty + ", unitPrice=" + unitPrice + "]";
	}

}

```

#### Task7: A class called Account, which models a bank account of a customer. The methods credit(amount) and debit(amount) add or subtract the given amount to the balance. The method transferTo(anotherAccount, amount) transfers the given amount from this Account to the given anotherAccount. Write the Account class.

	*table: Orders with columns Ord_no,purch_amt,ord_date,customer_id,salesman_id 

```
public class Account  {
	
	private int id;
	private String name;
	private int balance;
	
	public Account(int id, String name, int balance) {
		this.id = id;
		this.name = name;
		this.balance = balance;
	}
	
	public int credit(int amount){
		this.balance=this.balance+amount;
		return this.balance;
	}
	
	public int debit(int amount){
		if(amount<=this.balance){
			this.balance=this.balance-amount;
		}else{
			System.out.println("Amount exceeded balance");
		}
		return this.balance;		
	}
	public int transfer(Account a2,int amount){
		if(amount<=this.balance){
			this.balance=this.balance-amount;
			a2.credit(amount);
		}else{
			System.out.println("Amount exceeded balance");
		}
		return this.balance;		
	}

	@Override
	public String toString() {
		return "Account [id=" + id + ", name=" + name + ", balance=" + balance + "]";
	}	
	
}
```

#### Task8: A class called Author (as shown in the class diagram) is designed to model a book's author. It contains:

	*Three private instance variables: name (String), email (String), and gender (char of either 'm' or 'f');
	*One constructor to initialize the name, email and gender with the given values; - public Author (String name, String email, char gender) {......}
	*(There is no default constructor for Author, as there are no defaults for name, email and gender.)
	*public getters/setters: getName(), getEmail(), setEmail(), and getGender();
	*(There are no setters for name and gender, as these attributes cannot be changed.)
	*A toString() method that returns "Author[name=?,email=?,gender=?]"
	###A class called Book is designed (as shown in the class diagram) to model a book written by one author. It contains:

	*Four private instance variables: name (String), author (of the class Author you have just created, assume that a book has one and only one author), price (double), and qty (int);
	*Two constructors:
		*public Book (String name, Author author, double price) { ...... }
		*public Book (String name, Author author, double price, int qty) { ...... }
	*public methods getName(), getAuthor(), getPrice(), setPrice(), getQty(), setQty().
	*A toString() that returns "Book[name=?,Author[name=?,email=?,gender=?],price=?,qty=?".  You should reuse Author’s toString()
```
public class Author {
	
	private String name;
	private String email;
	private char gender;
	
	public Author(String name, String email, char gender) {
		super();
		this.name = name;
		this.email = email;
		this.gender = gender;
	}

	public String getName() {
		return name;
	}

	public String getEmail() {
		return email;
	}

	public char getGender() {
		return gender;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "Author [name=" + name + ", email=" + email + ", gender=" + gender + "]";
	}
	
}

public class Book {
	private String name;
	private Author author;
	private double price;
	private int qty;
	
	public Book(String name, Author author, double price) {
		super();
		this.name = name;
		this.author = author;
		this.price = price;
	}

	public Book(String name, Author author, double price, int qty) {
		super();
		this.name = name;
		this.author = author;
		this.price = price;
		this.qty = qty;
	}

	public String getName() {
		return name;
	}

	public Author getAuthor() {
		return author;
	}

	public double getPrice() {
		return price;
	}

	public int getQty() {
		return qty;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public void setQty(int qty) {
		this.qty = qty;
	}

	@Override
	public String toString() {
		return "Book [name=" + name + ", author=" + author + ", price=" + price + ", qty=" + qty + "]";
	}
	
}
```

#### Task9: Design a class customer with id,name & gender and account class with id,customer & balance. Add the methods credit(amount) and debit(amount) add or subtract the given amount to the balance.Also add toString method

	*table: Orders with columns Ord_no,purch_amt,ord_date,customer_id,salesman_id 

```
public class Customer {
	
	private int id;
	private String name;
	private char gender;
	
	public Customer(int id, String name, char gender) {
		super();
		this.id = id;
		this.name = name;
		this.gender = gender;
	}

	@Override
	public String toString() {
		return "Customer [id=" + id + ", name=" + name + ", gender=" + gender + "]";
	}
}

public class Account  {
	
	private int id;
	private Customer customer;
	private int balance;
	
	public Account(int id, Customer customer, int balance) {
		this.id = id;
		this.customer = customer;
		this.balance = balance;
	}
	
	public int credit(int amount){
		this.balance=this.balance+amount;
		return this.balance;
	}
	
	public int debit(int amount){
		if(amount<=this.balance){
			this.balance=this.balance-amount;
		}else{
			System.out.println("Amount exceeded balance");
		}
		return this.balance;		
	}
	public int transfer(Account a2,int amount){
		if(amount<=this.balance){
			this.balance=this.balance-amount;
			a2.credit(amount);
		}else{
			System.out.println("Amount exceeded balance");
		}
		return this.balance;		
	}

	@Override
	public String toString() {
		return "Account [id=" + id + ", customer=" + customer + ", balance=" + balance + "]";
	}

}
```

#### Task10: Create a Shape interface having methods area () and perimeter (). Create 2 subclasses, Circle and Rectangle that implement the Shape interface. Create a class Sample with main method and demonstrate the area and perimeters of both the shape classes. You need to handle the values of length, breath, and radius in respective classes to calculate their area and perimeter.

	*table: Orders with columns Ord_no,purch_amt,ord_date,customer_id,salesman_id 

```
interface Shape {
	double area();
	double perimeter();
}

class Rectangle implements Shape {

	private double length;
	private double breadth;

	public Rectangle(double length, double breadth) {
		this.length = length;
		this.breadth = breadth;
	}

	@Override
	public double area() {

		return length * breadth;
	}

	@Override
	public double perimeter() {

		return 2 * (length + breadth);
	}
}

class Circle implements Shape {

	private double radius;

	public Circle(double radius) {
		this.radius = radius;

	}

	@Override
	public double area() {

		return Math.PI * radius * radius;
	}

	@Override
	public double perimeter() {

		return 2 * Math.PI * radius;
	}
}


public class Sample {

	public static void main(String[] args) {
		// Rectangle area and parameter
		double length = 2.0;
		double breadth = 3.0;
		Rectangle r = new Rectangle(length, breadth);

		System.out.println("Rectangle - Area: " + r.area());
		System.out.println("Rectangle - perimeter: " + r.perimeter());

		// Circle area and parameter
		double radius = 2.0;
		Circle c = new Circle(radius);
		System.out.println("Circle - Area: " + c.area());
		System.out.println("Circle - perimeter: " + c.perimeter());

	}
}

```