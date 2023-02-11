### :camel: HTML examples
---

#### Task1: Create a class Dog, that has 3 properties (class fields) breed, age and colour with behaviours (class method) bark and sleep.Write a class with main method and create the dog object and invoke the methods

```
<!DOCTYPE HTML>
<!-- This is how HTML comments look like -->
<html>
<!-- the title will appear on the page-->
<head>
<title>Employee Interests Survey</title>
</head>
<body>
<!-- as it is a survey form, we will need to submit the details, hence we use form -->
<!-- We can give absolute url, or relative url like /nextpage.jsp, and specify POST or GET method -->
<form action="http://google.co.in">
<!-- If we remove this, every thing will move to the left of the page-->
<div align="center">
<!--Adds a heading to the form-->
<h1>Employee Interests Survey form</h1>
Enter your name:
<!-- Input type text for small texts, specify size -->
<input type="text" name="UserName" size=35 maxlength=35 value="">
<!--Adds spaces - remove and see what happens -->
</br></br>
Enter your department:
<input type="text" name="Deptt" size=35 maxlength=35 value=""> </br> </br>
Tell us a little about yourself:
<!-- For writing lot of text like descriptions with text wrapping,
if you dont want text wrapping, you can add wrap = "off" (horizontal scrollbar -->
<textarea name="Comments" cols=30 rows=4></textarea> </br> </br>
Do you exercise at home?
<!-- Radio buttons help you choose one out of the many values -->
<input type="radio" name="exe" value=1>Yes
<input type="radio" name="exe" value=2>No
</p>
How do you like to read about your favorite topics?
<p>
<!--Checkbox lets you select multiple options -->
<input type="checkbox" name="Books">Books
<input type="checkbox" name="Web">Online resources
<input type="checkbox" name="Phone">Phone apps
<input type="checkbox" name="Magazines">Magazines
</p>
What genre of movies do you like?
<!--Select box lets you choose one of the multiple dropdown options-->
<select name="moviepref" ><option>
<option value=1 selected = "true">comedy
<option value=2 >romance
<option value=3 >thriller
<option value=4 >horror
<option value=5 >biopic
</select>
</br></br>
<!--submits the information entered in the form by the user -->
<input type=submit value="Submit form">
</div>
</form>
</body>
</html>

```

#### Task2: There is a car, which has attributes model and price, and the car has functionalities start, stop and move. Also, there is a driver, having attributes name and age, and the behaviour drive.Model the classes Car and Driver.

	*table: salesman with columns salesman_id,name,city,commission

```
<html>
<head>
<title></title>
<!-- Apply styles to html elements -->
<style>
*{
margin:0; padding:0; boxsizing:border-box;
}
header{
width: 100%; height: 100vh;
background-color: white;
background-repeat: no-repeat;
background-size: cover;
}
nav{
width: 100%; height: 15vh;
background: black;
display: flex; justify-content: space-between;
align-items: center;
}
nav .mainmenu{
width: 40%;
display: flex; justify-content: space-around;
}
main{
width: 100%; height: 85vh;
display: flex; justify-content: center;
align-items: center;
text-align: center;
}
section h3{
letter-spacing: 3px; font-weight: 200;
}
section h1{
text-transform: uppercase;
}
section div{
animation:changeborder 10s infinite linear;
border: 7px solid red;
}
@keyframes changeborder{
0%
20%
40%
}
</style>
</head>
<body>
<!--Let us create a simple menu using the navigation tags-->
<!--Use header to indicate that manu will be a part of header -->
<header>
<nav>
<div class = "logo" <h3 style="color:white;">MYLOGO</h3></div>
<!--Lets define the menu items now-->
<div class = "mainmenu">
<a href="https://hackr.io/tutorials/learn-html-5">Home</a>
<a href="https://hackr.io/tutorials/learn-html-5">About Us</a>
<a href="https://hackr.io/tutorials/learn-html-5">Contact Us</a>
</div>
</nav>
<!--Let us create the main section now, if you are not using html5, use div tags-->
<main>
<section>
<!--Check out the styling elements for this div class - change_text -->
<div class = "change_text"><b>WELCOME TO XXX ELECTRONICS</b></div>
<!--make text italic-->
<p><i>All your electronics needs in one place</i></p><br>
<!--create a button, if there is a form, you can specify an action on click-->
<input type = button value = "view more">
</section>
</main>
</header>
</body>
</html>

```

#### Task3: Create a class called circle with two variables radius and colour and add default constructor and constructor with arguments and add methods getRadius() and getArea() (Area formaula - radius*radius*Math.PI). Create a main class to create a circle object and print the data

```
<html>
    <head>
        <script>
            function GEEKFORGEEKS() {
                var name =
                    document.forms.RegForm.Name.value;
                var email =
                    document.forms.RegForm.EMail.value;
                var phone =
                    document.forms.RegForm.Telephone.value;
                var what =
                    document.forms.RegForm.Subject.value;
                var password =
                    document.forms.RegForm.Password.value;
                var address =
                    document.forms.RegForm.Address.value;
                var regEmail=/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/g;  //Javascript reGex for Email Validation.
                var regPhone=/^\d{10}$/;                                        // Javascript reGex for Phone Number validation.
                var regName = /\d+$/g;                                    // Javascript reGex for Name validation
 
                if (name == "" || regName.test(name)) {
                    window.alert("Please enter your name properly.");
                    name.focus();
                    return false;
                }
 
                if (address == "") {
                    window.alert("Please enter your address.");
                    address.focus();
                    return false;
                }
                 
                if (email == "" || !regEmail.test(email)) {
                    window.alert("Please enter a valid e-mail address.");
                    email.focus();
                    return false;
                }
                  
                if (password == "") {
                    alert("Please enter your password");
                    password.focus();
                    return false;
                }
 
                if(password.length <6){
                    alert("Password should be atleast 6 character long");
                    password.focus();
                    return false;
 
                }
                if (phone == "" || !regPhone.test(phone)) {
                    alert("Please enter valid phone number.");
                    phone.focus();
                    return false;
                }
 
                if (what.selectedIndex == -1) {
                    alert("Please enter your course.");
                    what.focus();
                    return false;
                }
 
                return true;
            }
        </script>
 
        <style>
            div {
                box-sizing: border-box;
                width: 100%;
                border: 100px solid black;
                float: left;
                align-content: center;
                align-items: center;
            }
 
            form {
                margin: 0 auto;
                width: 600px;
            }
        </style>
    </head>
 
    <body>
        <h1 style="text-align: center;">REGISTRATION FORM</h1>
        <form name="RegForm" onsubmit="return GEEKFORGEEKS()" method="post">
             
<p>Name: <input type="text"
                            size="65" name="Name" /></p>
 
            <br />
             
<p>Address: <input type="text"
                            size="65" name="Address" />
        </p>
 
            <br />
             
<p>E-mail Address: <input type="text"
                            size="65" name="EMail" /></p>
 
            <br />
             
<p>Password: <input type="text"
                        size="65" name="Password" /></p>
 
            <br />
             
<p>Telephone: <input type="text"
                        size="65" name="Telephone" /></p>
 
            <br />
 
             
<p>
                SELECT YOUR COURSE
                <select type="text" value="" name="Subject">
                    <option>BTECH</option>
                    <option>BBA</option>
                    <option>BCA</option>
                    <option>B.COM</option>
                    <option>GEEKFORGEEKS</option>
                </select>
            </p>
 
            <br />
            <br />
             
<p>Comments: <textarea cols="55"
                            name="Comment"> </textarea></p>
 
             
<p>
                <input type="submit"
                    value="send" name="Submit" />
                <input type="reset"
                    value="Reset" name="Reset" />
            </p>
 
        </form>
    </body>
</html>
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