### :camel: Java examples
---

#### Task1: Write a Java program to create a new array list, add some elements (string) and print out the collection.

```
import java.util.*;
public class Exercise1 {
  public static void main(String[] args) {
  List<String> list_Strings = new ArrayList<String>();
  list_Strings.add("Red");
  list_Strings.add("Green");
  list_Strings.add("Orange");
  list_Strings.add("White");
  list_Strings.add("Black");
  System.out.println(list_Strings);
 }
}
```

#### Task2: Write a Java program to iterate through all elements in a array list.

```
import java.util.*;
  public class Exercise2 {
  public static void main(String[] args) {
  // Creae a list and add some colors to the list
  List<String> list_Strings = new ArrayList<String>();
  list_Strings.add("Red");
  list_Strings.add("Green");
  list_Strings.add("Orange");
  list_Strings.add("White");
  list_Strings.add("Black");
  // Print the list
  for (String element : list_Strings) {
    System.out.println(element);
    }
 }
}
```

#### Task3: Write a Java program to remove the third element from a array list.

```
import java.util.*;
  public class Exercise6 {
  public static void main(String[] args) {
  // Creae a list and add some colors to the list
  List<String> list_Strings = new ArrayList<String>();
  list_Strings.add("Red");
  list_Strings.add("Green");
  list_Strings.add("Orange");
  list_Strings.add("White");
  list_Strings.add("Black");
  // Print the list
  System.out.println(list_Strings);
  // Remove the third element from the list.
  list_Strings.remove(2);
  // Print the list again
  System.out.println("After removing third element from the list:\n"+list_Strings);
 }
}

```

#### Task4: Write a Java program to sort a given array list.

```
import java.util.*;
  public class Exercise8 {
  public static void main(String[] args) {
  // Creae a list and add some colors to the list
  List<String> list_Strings = new ArrayList<String>();
  list_Strings.add("Red");
  list_Strings.add("Green");
  list_Strings.add("Orange");
  list_Strings.add("White");
  list_Strings.add("Black");
  System.out.println("List before sort: "+list_Strings);
  Collections.sort(list_Strings);
  System.out.println("List after sort: "+list_Strings);    
 }
}

```

#### Task5: Write a Java program to extract a portion of a array list.

```
import java.util.*;
  public class Exercise12 {
  public static void main(String[] args) {
  // Creae a list and add some colors to the list
  List<String> list_Strings = new ArrayList<String>();
  list_Strings.add("Red");
  list_Strings.add("Green");
  list_Strings.add("Orange");
  list_Strings.add("White");
  list_Strings.add("Black");
  System.out.println("Original list: " + list_Strings);
  List<String> sub_List = list_Strings.subList(0, 3);
  System.out.println("List of first three elements: " + sub_List);
 }
}
```

#### Task6: Write a Java program to test an array list is empty or not.

```
import java.util.ArrayList;
import java.util.Collections;
  public class Exercise18 {
  public static void main(String[] args) {
          ArrayList<String> c1= new ArrayList<String>();
          c1.add("Red");
          c1.add("Green");
          c1.add("Black");
          c1.add("White");
          c1.add("Pink");
          System.out.println("Original array list: " + c1);
          System.out.println("Checking the above array list is empty or not! "+c1.isEmpty());
          c1.removeAll(c1);
          System.out.println("Array list after remove all elements "+c1);   
          System.out.println("Checking the above array list is empty or not! "+c1.isEmpty());
   }
}
```

#### Task7: Write a Java program to append the specified element to the end of a linked list.

```
import java.util.LinkedList;
  public class Exercise1 {
  public static void main(String[] args) {
     // create an empty linked list
     LinkedList<String> l_list = new LinkedList<String>();
   // use add() method to add values in the linked list
          l_list.add("Red");
          l_list.add("Green");
          l_list.add("Black");
          l_list.add("White");
          l_list.add("Pink");
          l_list.add("Yellow");
	
   // print the list
   System.out.println("The linked list: " + l_list);
   }
}
```

#### Task8: Write a Java program to iterate through all elements in a linked list starting at the specified position.

```
import java.util.LinkedList;
import java.util.Iterator;
  public class Exercise3 {
  public static void main(String[] args) {
    // create an empty linked list
     LinkedList<String> l_list = new LinkedList<String>();
   // use add() method to add values in the linked list
          l_list.add("Red");
          l_list.add("Green");
          l_list.add("Black");
          l_list.add("White");
          l_list.add("Pink");
// set Iterator at specified index
   Iterator p = l_list.listIterator(1);

   // print list from second position
   while (p.hasNext()) {
   System.out.println(p.next());
   }
   }
}
```

#### Task9: Write a Java program to check if a particular element exists in a linked list.

```
import java.util.*;
public class Exercise22 {
 public static void main(String[] args) {
  // create an empty linked list
  LinkedList <String> c1 = new LinkedList <String> ();
            c1.add("Red");
          c1.add("Green");
          c1.add("Black");
          c1.add("White");
          c1.add("Pink");
          System.out.println("Original linked list: " + c1);
           
     // Checks whether the color "Green" exists or not.
    if (c1.contains("Green")) {
       System.out.println("Color Green is present in the linked list.");
    } else {
       System.out.println("Color Green is not present in the linked list.");
     }
    
     // Checks whether the color "Orange" exists or not.
    if (c1.contains("Orange")) {
       System.out.println("Color Orange is present in the linked list.");
    } else {
       System.out.println("Color Orange is not present in the linked list.");
     }
    
 }
}

```

