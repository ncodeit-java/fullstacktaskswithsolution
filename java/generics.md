### :camel: Java examples
---

#### Task1: Write a program to create a integer list and add, remove integers and iterate the list  

```
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class GenericsTester {
   public static void main(String[] args) {

      List<Integer> integerList = new ArrayList<Integer>();
  
      integerList.add(Integer.valueOf(10));
      integerList.add(Integer.valueOf(11));

      for(Integer data: integerList) {
         System.out.printf("Integer Value :%d\n", data);
      }
   }  
}
```

#### Task2: Write a program to create a map with key as integer and value as integer, add integers and iterate 

```
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class GenericsTester {
   public static void main(String[] args) {

        Map<Integer,Integer> integerMap 
        = new HashMap<Integer,Integer>();
 
     integerMap.put(1, 10);
     integerMap.put(2, 11);

     // iterate keys.
     Iterator<Integer> integerIterator   = integerMap.keySet().iterator();

     while(integerIterator.hasNext()) {
    	 int key=integerIterator.next();
        System.out.printf("Key :%d\n", key);
        System.out.printf("Value :%d\n", integerMap.get(key));

   }  
}
```

#### Task3: create a generic class with get and set methods which can accept String or integer

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

#### Task4: create a generic class to create any type of instance

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

#### Task5: Let's say you have an integer array and a string array. You have to write a single method printArray that can print all the elements of both arrays. The method should be able to accept both integer arrays or string arrays.

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

#### Task6: Create a generic method to draw the shape of the class, the classes will implement the shape interface

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

#### Task7: Write a generic method to count the occurrence of the given element in an array of any type 

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

#### Task8: Write a generic method to find the largest of three comparable object

```
public class MaximumTest {
   // determines the largest of three Comparable objects
   
   public static <T extends Comparable<T>> T maximum(T x, T y, T z) {
      T max = x;   // assume x is initially the largest
      
      if(y.compareTo(max) > 0) {
         max = y;   // y is the largest so far
      }
      
      if(z.compareTo(max) > 0) {
         max = z;   // z is the largest now                 
      }
      return max;   // returns the largest object   
   }
   
   public static void main(String args[]) {
      System.out.printf("Max of %d, %d and %d is %d\n\n", 
         3, 4, 5, maximum( 3, 4, 5 ));

      System.out.printf("Max of %.1f,%.1f and %.1f is %.1f\n\n",
         6.6, 8.8, 7.7, maximum( 6.6, 8.8, 7.7 ));

      System.out.printf("Max of %s, %s and %s is %s\n","pear",
         "apple", "orange", maximum("pear", "apple", "orange"));
   }
}
```

#### Task9: Write a generic method to find the largest of three comparable object using multiple bound parameters

```
public class GenericsTester {
   public static void main(String[] args) {
      System.out.printf("Max of %d, %d and %d is %d\n\n", 
         3, 4, 5, maximum( 3, 4, 5 ));

      System.out.printf("Max of %.1f,%.1f and %.1f is %.1f\n\n",
         6.6, 8.8, 7.7, maximum( 6.6, 8.8, 7.7 ));
   }

   public static <T extends Number 
      & Comparable<T>> T maximum(T x, T y, T z) {
      T max = x;      
      if(y.compareTo(max) > 0) {
         max = y;   
      }

      if(z.compareTo(max) > 0) {
         max = z;                    
      }
      return max;      
   }
```

#### Task10: create class cat which extends animal, dog extends animal and create a generic method to add cat objects using lower bound 

```
import java.util.ArrayList;
import java.util.List;

public class GenericsTester {

   public static void addCat(List<? super Cat> catList) {
      catList.add(new RedCat());
      System.out.println("Cat Added");
   }

   public static void main(String[] args) {
      List<Animal> animalList= new ArrayList<Animal>();
      List<Cat> catList= new ArrayList<Cat>();
     
      List<Dog> dogList= new ArrayList<Dog>();

      //add list of super class Animal of Cat class
      addCat(animalList);

      //add list of Cat class
      addCat(catList);

      //compile time error
      //can not add list of subclass Dog of Superclass Animal of Cat class
      //addCat.addMethod(dogList); 
   }
}
class Animal {}

class Cat extends Animal {}

class Dog extends Animal {}
```

