### :camel: Java examples
---

#### Task1: create a generic class with get and set methods which can accept String or integer

```
class MyGenericClass<T>
{  
    T obj;  
    void add(T obj)
    {
           this.obj=obj;
    }  
    T get()
    {
           return obj;
    }  
}  
 
class Main
{  
     public static void main(String args[])
     {  
           MyGenericClass<Integer> mint=new MyGenericClass<Integer>();  
           m_int.add(2);
           MyGenericClass<String> mstr=new MyGenericClass<String>();  
           mstr.add("SoftwaretestingHelp");
 
           System.out.println("Member of MyGenericClass<Integer>:" + m_int.get());
           System.out.println("Member of MyGenericClass<String>:" + mstr.get());
     }
} 
```

#### Task2: create a generic class to create any type of instance

```
public class GenericClassExample {
	public static void main(String[] args) throws IllegalAccessException, InstantiationException {
		GenericFactory<ProductA> factory = new GenericFactory<ProductA>(ProductA.class);
		ProductA productA = factory.createInstance();
		System.out.println(productA.getProductName());

		GenericFactory<ProductB> factoryB = new GenericFactory<ProductB>(ProductB.class);
		ProductB productB = factoryB.createInstance();
		System.out.println(productB.getProductName());
		
		GenericFactory<ProductC> factoryC = new GenericFactory<ProductC>(ProductC.class);
		ProductC productC = factoryC.createInstance();
		System.out.println(productC.getProductName());
	}
}

class ProductA {
	public String getProductName() {
		return "Product A";
	}
}

class ProductB {
	public String getProductName() {
		return "Product B";
	}
}

class ProductC {
	public String getProductName() {
		return "Product C";
	}
}

class GenericFactory<T> {

	Class theClass = null;

	public GenericFactory(Class theClass) {
		this.theClass = theClass;
	}

	public T createInstance() throws IllegalAccessException, InstantiationException {
		return (T) this.theClass.newInstance();
	}
}
```

#### Task3: Let's say you have an integer array and a string array. You have to write a single method printArray that can print all the elements of both arrays. The method should be able to accept both integer arrays or string arrays.

```
package com.example;

class Printer
{
   public <T> void printArray(T[] arr){
       for(T obj:arr){
           System.out.println(obj);
       }
   }
 
}

public class Solution {
    public static void main( String args[] ) {
        Printer myPrinter = new Printer();
        Integer[] intArray = { 1, 2, 3 };
        String[] stringArray = {"Hello", "World"};
        myPrinter.printArray(intArray);
        myPrinter.printArray(stringArray);
    }
} 

```

#### Task4: Create a generic method to draw the shape of the class, the classes will implement the shape interface

```
abstract class Shape{  
abstract void draw();  
}  
```

```
class Rectangle extends Shape{  
void draw(){System.out.println("drawing rectangle");}  
}  
class Circle extends Shape{  
void draw(){System.out.println("drawing circle");}  
}  
class GenericTest{  
//creating a method that accepts only child class of Shape  
public static void drawShapes(List<? extends Shape> lists){  
for(Shape s:lists){  
s.draw();//calling method of Shape class by child class instance  
}  
}  
public static void main(String args[]){  
List<Rectangle> list1=new ArrayList<Rectangle>();  
list1.add(new Rectangle());  
  
List<Circle> list2=new ArrayList<Circle>();  
list2.add(new Circle());  
list2.add(new Circle());  
  
drawShapes(list1);  
drawShapes(list2);  
}}  

```

#### Task5: Write a generic method to count the occurrence of the given element in an array of any type 

```
public class Util<T> {
 
public static <T> int count(T[] array, T item) {
    int count = 0;
 
    if (item == null) {
        for (T element : array) {
            if (element == null) count++;
        }
    } else {
        for (T element : array) {
            if (item.equals(element)) {
                count++;
            }
        }
    }
 
    return count;
 
}
}
```