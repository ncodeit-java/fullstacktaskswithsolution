### :camel: Java examples
---

#### Task1: Write a Java program to iterate through all elements in a hash list.

```
import java.util.*;
import java.util.Iterator;
  public class Exercise2 {
  public static void main(String[] args) {
         // Create a empty hash set
     HashSet<String> h_set = new HashSet<String>();
   // use add() method to add values in the hash set
          h_set.add("Red");
          h_set.add("Green");
          h_set.add("Black");
          h_set.add("White");
          h_set.add("Pink");
          h_set.add("Yellow");

  // set Iterator 
    Iterator<String> p = h_set.iterator();
  // Iterate the hash set
   while (p.hasNext()) {
   System.out.println(p.next());
   }
   }
}

```

#### Task2: Write a Java program to test a hash set is empty or not.

```
import java.util.*;

  public class Exercise5 {
  public static void main(String[] args) {
         // Create a empty hash set
     HashSet<String> h_set = new HashSet();
   // use add() method to add values in the hash set
          h_set.add("Red");
          h_set.add("Green");
          h_set.add("Black");
          h_set.add("White");
          h_set.add("Pink");
          h_set.add("Yellow");
    System.out.println("Original Hash Set: " + h_set);
    System.out.println("Checking the above array list is empty or not! "+h_set.isEmpty());
    System.out.println("Remove all the elements from a Hash Set: ");
    h_set.removeAll(h_set);
    System.out.println("Hash Set after removing all the elements "+h_set);   
   }
}

```

#### Task3: Write a Java program to convert a hash set to an array.

```
import java.util.*;
  public class Exercise7 {
  public static void main(String[] args) {
         // Create a empty hash set
     HashSet<String> h_set = new HashSet<String>();
   // use add() method to add values in the hash set
          h_set.add("Red");
          h_set.add("Green");
          h_set.add("Black");
          h_set.add("White");
          h_set.add("Pink");
          h_set.add("Yellow");
      System.out.println("Original Hash Set: " + h_set);
      // Creating an Array
      String[] new_array = new String[h_set.size()];
      h_set.toArray(new_array);
 
     // Displaying Array elements
     System.out.println("Array elements: ");
      for(String element : new_array){
        System.out.println(element);
     }
   }
}

```

#### Task4: Write a Java program to convert a hash set to a List/ArrayList.

```
import java.util.*;

  public class Exercise9 {
  public static void main(String[] args) {
         // Create a empty hash set
     HashSet<String> h_set = new HashSet<String>();
   // use add() method to add values in the hash set
          h_set.add("Red");
          h_set.add("Green");
          h_set.add("Black");
          h_set.add("White");
          h_set.add("Pink");
          h_set.add("Yellow");
      System.out.println("Original Hash Set: " + h_set);
    
    // Create a List from HashSet elements
     List<String> list = new ArrayList<String>(h_set);
 
     // Display ArrayList elements
     System.out.println("ArrayList contains: "+ list);
  }
}

```

#### Task5: Write a Java program to append the specified element to the end of a hash set.

```
import java.util.HashSet;
  public class Exercise1 {
  public static void main(String[] args) {
     // Create a empty hash set
     HashSet<String> h_set = new HashSet<String>();
   // use add() method to add values in the hash set
          h_set.add("Red");
          h_set.add("Green");
          h_set.add("Black");
          h_set.add("White");
          h_set.add("Pink");
          h_set.add("Yellow");

   // print the hash set
   System.out.println("The Hash Set: " + h_set);
   }
}

```

#### Task6: Write a Java program to remove all of the elements from a hash set.

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

#### Task7: Write a Java program to compare two sets and retain elements which are same on both sets.

```
import java.util.*;
  public class Exercise11 {
  public static void main(String[] args) {
     // Create a empty hash set
        HashSet<String> h_set1 = new HashSet<String>();
     // use add() method to add values in the hash set
          h_set1.add("Red");
          h_set1.add("Green");
          h_set1.add("Black");
          h_set1.add("White");
          System.out.println("Frist HashSet content: "+h_set1);
          HashSet<String>h_set2 = new HashSet<String>();
          h_set2.add("Red");
          h_set2.add("Pink");
          h_set2.add("Black");
          h_set2.add("Orange");
          System.out.println("Second HashSet content: "+h_set2);
          h_set1.retainAll(h_set2);
          System.out.println("HashSet content:");
          System.out.println(h_set1);
     }
}

```

#### Task8: Write a Java program to create a new tree set, add some colors (string) and print out the tree set.

```
import java.util.TreeSet;
public class Exercise1 {
  public static void main(String[] args) {
  TreeSet<String> tree_set = new TreeSet<String>();
  tree_set.add("Red");
  tree_set.add("Green");
  tree_set.add("Orange");
  tree_set.add("White");
  tree_set.add("Black");
  System.out.println("Tree set: ");
  System.out.println(tree_set);
 }
}

```

#### Task9: Write a Java program to iterate through all elements in a tree set.

```
import java.util.TreeSet;
public class Exercise2 {
  public static void main(String[] args) {
  TreeSet<String> tree_set = new TreeSet<String>();
  tree_set.add("Red");
  tree_set.add("Green");
  tree_set.add("Orange");
  tree_set.add("White");
  tree_set.add("Black");
  // Print the tree list
  for (String element : tree_set) {
    System.out.println(element);
    }
 }
}

```

#### Task10: Write a Java program to get the number of elements in a tree set.

```
import java.util.TreeSet;
import java.util.Iterator;

  public class Exercise7 {
  public static void main(String[] args) {
    // create an empty tree set
     TreeSet<String> t_set = new TreeSet<String>();
   // use add() method to add values in the tree set
          t_set.add("Red");
          t_set.add("Green");
          t_set.add("Black");
          t_set.add("Pink");
          t_set.add("orange");
     System.out.println("Original tree set: " + t_set);
    System.out.println("Size of the tree set: " + t_set.size());
   }
}

```

#### Task11: Write a Java program to compare two tree sets.

```
import java.util.TreeSet;
import java.util.Iterator;

  public class Exercise8 {
  public static void main(String[] args) {
  // Create a empty tree set
        TreeSet<String> t_set1 = new TreeSet<String>();
     // use add() method to add values in the tree set
          t_set1.add("Red");
          t_set1.add("Green");
          t_set1.add("Black");
          t_set1.add("White");
          System.out.println("Free Tree set: "+t_set1);

          TreeSet<String> t_set2 = new TreeSet<String>();
          t_set2.add("Red");
          t_set2.add("Pink");
          t_set2.add("Black");
          t_set2.add("Orange");
          System.out.println("Second Tree set: "+t_set2);
          //comparison output in tree set
          TreeSet<String> result_set = new TreeSet<String>();
         for (String element : t_set1){
             System.out.println(t_set2.contains(element) ? "Yes" : "No");
          }      
     }
}
```
