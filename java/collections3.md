### :camel: Java examples
---

#### Task1: Write a Java program to associate the specified value with the specified key in a HashMap.

```
import java.util.*;  
public class Example1 {  
  public static void main(String args[]) {  
  HashMap<Integer,String> hash_map= new HashMap<Integer,String>();  
  hash_map.put(1, "Red");
  hash_map.put(2, "Green");
  hash_map.put(3, "Black");
  hash_map.put(4, "White");
  hash_map.put(5, "Blue");
  for(Map.Entry x:hash_map.entrySet()){  
   System.out.println(x.getKey()+" "+x.getValue());  
  }  
 }  
}

```

#### Task2: Write a Java program to count the number of key-value (size) mappings in a map.

```
import java.util.*;  
public class Example2 {  
   public static void main(String args[]){  
  HashMap<Integer,String> hash_map= new HashMap<Integer,String>();  
  hash_map.put(1, "Red");
  hash_map.put(2, "Green");
  hash_map.put(3, "Black");
  hash_map.put(4, "White");
  hash_map.put(5, "Blue");
  System.out.println("Size of the hash map: "+hash_map.size());
 }
}

```

#### Task3: Write a Java program to copy all of the mappings from the specified map to another map.

```
import java.util.*;  
public class Example3 {  
   public static void main(String args[]) {
  // create two hash maps
  HashMap <Integer,String> hash_map1 = new HashMap <Integer,String> ();
  HashMap <Integer,String> hash_map2 = new HashMap <Integer,String> ();
  // populate hash maps
  hash_map1.put(1, "Red");
  hash_map1.put(2, "Green");
  hash_map1.put(3, "Black");
  System.out.println("\nValues in first map: " + hash_map1);
  hash_map2.put(4, "White");
  hash_map2.put(5, "Blue");
  hash_map2.put(6, "Orange");
  System.out.println("\nValues in second map: " + hash_map2);

  // put all values in secondmap
  hash_map2.putAll(hash_map1);
  System.out.println("\nNow values in second map: " + hash_map2);
 }
}

```

#### Task4: Write a Java program to check whether a map contains key-value mappings (empty) or not.

```
import java.util.*;  
public class Example5 {  
   public static void main(String args[]) {
  HashMap <Integer,String> hash_map = new HashMap <Integer,String> ();
  hash_map.put(1, "Red");
  hash_map.put(2, "Green");
  hash_map.put(3, "Black");
  hash_map.put(4, "White");
  hash_map.put(5, "Blue");
  // check if map is empty
  boolean result = hash_map.isEmpty();
  // check the result
  System.out.println("Is hash map empty: " + result);
  // Removing all the elements from the linked map
  hash_map.clear();
  // check if map is empty
  result = hash_map.isEmpty();
  // check the result
  System.out.println("Is hash map empty: " + result);
 }
}

```

#### Task5: Write a Java program to test if a map contains a mapping for the specified key.

```
import java.util.*;  
public class Example7 {  
   public static void main(String args[]) {
  HashMap < String, Integer > hash_map = new HashMap < String, Integer > ();
  hash_map.put("Red", 1);
  hash_map.put("Green", 2);
  hash_map.put("Black", 3);
  hash_map.put("White", 4);
  hash_map.put("Blue", 5);
  // print the map
  System.out.println("The Original map: " + hash_map);
  System.out.println("1. Is key 'Green' exists?");
  if (hash_map.containsKey("Green")) {
   //key exists
   System.out.println("yes! - " + hash_map.get("Green"));
  } else {
   //key does not exists
   System.out.println("no!");
  }

  System.out.println("\n2. Is key 'orange' exists?");
  if (hash_map.containsKey("orange")) {
   System.out.println("yes! - " + hash_map.get("orange"));
  } else {
   System.out.println("no!");
  }
 }
}

```

#### Task6: Write a Java program to test if a map contains a mapping for the specified value.

```
import java.util.*;  
public class Example8 {  
   public static void main(String args[]) {
  HashMap < Integer, String > hash_map = new HashMap < Integer, String > ();
  hash_map.put(1, "Red");
  hash_map.put(2, "Green");
  hash_map.put(3, "Black");
  hash_map.put(4, "White");
  hash_map.put(5, "Blue");
  // print the map
  System.out.println("The Original map: " + hash_map);
  System.out.println("1. Is value \'Green\' exists?");
  if (hash_map.containsValue("Green")) {
   //value exists
   System.out.println("Yes! ");
  } else {
   //value does not exists
   System.out.println("no!");
  }

  System.out.println("\n2. Is value \'orange\' exists?");
  if (hash_map.containsValue("orange")) {
   System.out.println("yes! - " );
  } else {
   System.out.println("No!");
  }
 }
}

```

#### Task7: Write a Java program to create a set view of the mappings contained in a map.

```
import java.util.*;  
public class Example9 {  
    public static void main(String args[]) {
  HashMap < Integer, String > hash_map = new HashMap < Integer, String > ();
  hash_map.put(1, "Red");
  hash_map.put(2, "Green");
  hash_map.put(3, "Black");
  hash_map.put(4, "White");
  hash_map.put(5, "Blue");
  // create set view for the map
  Set set = hash_map.entrySet();
  // check set values
  System.out.println("Set values: " + set);
 }
}


```

#### Task8: Write a Java program to get the value of a specified key in a map.

```
import java.util.*;  
public class Example10 {  
    public static void main(String args[]){  
   HashMap<Integer,String> hash_map= new HashMap<Integer,String>();  
   hash_map.put(1,"Red");
  hash_map.put(2,"Green");
  hash_map.put(3,"Black");
  hash_map.put(4,"White");
  hash_map.put(5,"Blue");
     // get value of key 3
   String val=(String)hash_map.get(3); 
   // check the value
   System.out.println("Value for key 3 is: " + val);
 }
}

```

#### Task9: Write a Java program to get a set view of the keys contained in this map.

```
import java.util.*;  
public class Example11 {  
     public static void main(String args[]){  
 
  HashMap<Integer,String> hash_map= new HashMap<Integer,String>();  
  
  hash_map.put(1,"Red");
  hash_map.put(2,"Green");
  hash_map.put(3,"Black");
  hash_map.put(4,"White");
  hash_map.put(5,"Blue");
  
  // get keyset value from map
   Set keyset = hash_map.keySet();
      
  // check key set values
   System.out.println("Key set values are: " + keyset);  
 }
}

```

#### Task10: Write a Java program to get a collection view of the values contained in this map.

```
import java.util.*;  
public class Example12 {  
     public static void main(String args[]){  
 
  HashMap<Integer,String> hash_map= new HashMap<Integer,String>();  
    hash_map.put(1,"Red");
  hash_map.put(2,"Green");
  hash_map.put(3,"Black");
  hash_map.put(4,"White");
  hash_map.put(5,"Blue");
       
   // checking collection view of the map
   System.out.println("Collection view is: "+ hash_map.values());
 }
}


```

