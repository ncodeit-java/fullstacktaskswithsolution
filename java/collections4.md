### :camel: Java examples
---

#### Task1: Write a Java program to search a key in a Tree Map.

```
import java.util.*;  
public class Example3 {  
   public static void main(String args[]){  
  
  // Create a tree map
   TreeMap<String,String> tree_map1=new TreeMap<String,String>();      
  
  // Put elements to the map 
  tree_map1.put("C1", "Red");
  tree_map1.put("C2", "Green");
  tree_map1.put("C3", "Black");
  tree_map1.put("C4", "White"); 
    
  System.out.println(tree_map1);
        if(tree_map1.containsKey("C1")){
            System.out.println("The Tree Map contains key C1");
        } else {
            System.out.println("The Tree Map does not contain key C1");
        }
        if(tree_map1.containsKey("C5")){
            System.out.println("The Tree Map contains key C5");
        } else {
            System.out.println("The TreeMap does not contain key C5");
        }
    }
}

```

#### Task2: Write a Java program to search a value in a Tree Map.

```
import java.util.*;  
public class Example4 {  
   public static void main(String args[]){  
  
  // Create a tree map
   TreeMap<String,String> tree_map1=new TreeMap<String,String>();      
  
  // Put elements to the map 
  tree_map1.put("C1", "Red");
  tree_map1.put("C2", "Green");
  tree_map1.put("C3", "Black");
  tree_map1.put("C4", "White"); 
    
 if(tree_map1.containsValue("Green")){
            System.out.println("The TreeMap contains value Green");
        } else {
            System.out.println("The TreeMap does not contain value Green");
        }
        if(tree_map1.containsValue("Pink")){
            System.out.println("The TreeMap contains value Pink");
        } else {
            System.out.println("The TreeMap does not contain value Pink");
        }
    }
}

```

#### Task3: Write a Java program to get all keys from the given a Tree Map.

```
import java.util.*;  
public class Example5 {  
   public static void main(String args[]){  
   // Create a tree map
   TreeMap<String,String> tree_map1=new TreeMap<String,String>();      
   // Put elements to the map 
  tree_map1.put("C1", "Red");
  tree_map1.put("C2", "Green");
  tree_map1.put("C3", "Black");
  tree_map1.put("C4", "White"); 
    
 Set<String> keys = tree_map1.keySet();
        for(String key: keys){
            System.out.println(key);
        }
    }
}

```

#### Task4: Write a Java program to sort keys in Tree Map by using comparator.

```
import java.util.*;
import java.util.Map.Entry;  
public class Example7 {  
    public static void main(String args[]){  
  TreeMap<String,String> tree_map1 = new TreeMap<String,String>(new sort_key());
   // Put elements to the map 
  tree_map1.put("C2", "Red");
  tree_map1.put("C4", "Green");
  tree_map1.put("C3", "Black");
  tree_map1.put("C1", "White"); 
  System.out.println(tree_map1); 
    }
}
 class sort_key implements Comparator<String>{
     @Override
    public int compare(String str1, String str2) {
        return str1.compareTo(str2);
    }
     
}

```

#### Task5: Write a Java program to Convert An Array To ArrayList

```
import java.util.*;

public class ConvertArrayToArrayList {
    public static void main(String args[]) {
      // Declaring and initializing Array
      String[] cities={"Boston", "Dallas", "New York", "Chicago"};

      //Converting Array to ArrayList using Arrays.asList()
      ArrayList<String> list= new ArrayList<>(Arrays.asList(cities));
      
      // Add more elements to the converted list
      list.add("San Francisco");
      list.add("San jose");
      
      // Print arraylist elements using for-each loop
      for(String s : list) {
        System.out.println(s);      
      }
    }
}

```

#### Task6: Write a program to iterate the HashMap using Iterator

```
import java.util.*;

 public class HashMapLoopExample {
    public static void main(String args[]) {
        
    // Creating a HashMap of String keys and String values
    HashMap<String, String> hashmap = new HashMap<String, String>();
    hashmap.put("Key1", "Value1");
    hashmap.put("Key2", "Value2");
    System.out.println("Iterating or looping map using keySet Iterator");
    // Iterating or looping using keySet() method
    Set<String> keySet = hashmap.keySet();
    Iterator<String> keySetIterator = keySet.iterator();
    while (keySetIterator.hasNext()) {
        String key = keySetIterator.next();
        System.out.println("key: " + key + " value: " + hashmap.get(key));
    }
  }
}

```

#### Task7: Write a program to iterate the HashMap using entrySet()

```
import java.util.*;

 public class HashMapLoopExample {
    public static void main(String args[]) {
        
    // Creating a HashMap of String keys and String values
    HashMap<String, String> hashmap = new HashMap<String, String>();
    hashmap.put("Key1", "Value1");
    hashmap.put("Key2", "Value2");
    System.out.println("Iterating or looping map using entrySet and foreach loop");
    // Iterating or looping using entrySet() method
    Set<Map.Entry<String, String>> entrySet = hashmap.entrySet();
    for (Map.Entry entry : entrySet) {
        System.out.println("key: " + entry.getKey() + " value: " + entry.getValue());
    }
  }
}

```

#### Task8:  Write a program to sort ArrayList using Comparable

```
public class Student implements Comparable {
    private String studentname;
    private int rollno;
    private int studentage;

    public Student(int rollno, String studentname, int studentage) {
        this.rollno = rollno;
        this.studentname = studentname;
        this.studentage = studentage;
    }
    ...
    //getter and setter methods same as the above example 
    ...
    @Override
    public int compareTo(Student comparestu) {
        int compareage=((Student)comparestu).getStudentage();
        /* For Ascending order*/
        return this.studentage-compareage;

        /* For Descending order do like this */
        //return compareage-this.studentage;
    }

    @Override
    public String toString() {
        return "[ rollno=" + rollno + ", name=" + studentname + ", age=" + studentage + "]";
    }
}

import java.util.*;

 public class ArrayListSort {
    public static void main(String args[]) {
        
       ArrayList<Student> arraylist = new ArrayList<Student>();
    arraylist.add(new Student(222, "Messi", 29));
    arraylist.add(new Student(333, "Ronaldo", 31));
    arraylist.add(new Student(111, "john", 23));

    Collections.sort(arraylist);

    for(Student str: arraylist){
   System.out.println(str);
    }
     }
}

```

#### Task9: Write a program to sort ArrayList of Students using Comparator

```
import java.util.Comparator;
public class Student  {
    private String studentname;
    private int rollno;
    private int studentage;

    public Student(int rollno, String studentname, int studentage) {
        this.rollno = rollno;
        this.studentname = studentname;
        this.studentage = studentage;
    }
    ...
    //Getter and setter methods same as the above examples
    ...
    /*Comparator for sorting the list by Student Name*/
    public static Comparator<Student> StuNameComparator = new Comparator<Student>() {

 public int compare(Student s1, Student s2) {
    String StudentName1 = s1.getStudentname().toUpperCase();
    String StudentName2 = s2.getStudentname().toUpperCase();

    //ascending order
    return StudentName1.compareTo(StudentName2);

    //descending order
    //return StudentName2.compareTo(StudentName1);
    }};

    /*Comparator for sorting the list by roll no*/
    public static Comparator<Student> StuRollno = new Comparator<Student>() {

 public int compare(Student s1, Student s2) {

    int rollno1 = s1.getRollno();
    int rollno2 = s2.getRollno();

    /*For ascending order*/
    return rollno1-rollno2;

    /*For descending order*/
    //rollno2-rollno1;
   }};
    @Override
    public String toString() {
        return "[ rollno=" + rollno + ", name=" + studentname + ", age=" + studentage + "]";
    }

}

import java.util.*;
public class ArrayListSort  {

 public static void main(String args[]){
    ArrayList<Student> arraylist = new ArrayList<Student>();
    arraylist.add(new Student(111, "John", 30));
    arraylist.add(new Student(333, "Ronaldo", 31));
    arraylist.add(new Student(222, "Messi", 29));

    /*Sorting based on Student Name*/
    System.out.println("Student Name Sorting:");
    Collections.sort(arraylist, Student.StuNameComparator);

    for(Student str: arraylist){
   System.out.println(str);
    }

    /* Sorting on Rollno property*/
    System.out.println("RollNum Sorting:");
    Collections.sort(arraylist, Student.StuRollno);
    for(Student str: arraylist){
   System.out.println(str);
    }
 }
}
```

#### Task10: Write a program to sort ArrayList of Person by age, name using Comparator

```
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

class Person {
    private String name;
    private Integer age;

    public Person(String name, Integer age) {
        this.name = name;
        this.age = age;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    @Override
    public String toString() {
        return "{" +
                "name='" + name + '\'' +
                ", age=" + age +
                '}';
    }
}

public class ArrayListObjectSortExample {
    public static void main(String[] args) {
        List<Person> people = new ArrayList<>();
        people.add(new Person("Sachin", 47));
        people.add(new Person("Chris", 34));
        people.add(new Person("Rajeev", 25));
        people.add(new Person("David", 31));

        System.out.println("Person List : " + people);

        // Sort People by their Age
        people.sort((person1, person2) -> {
            return person1.getAge() - person2.getAge();
        });

        // A more concise way of writing the above sorting function
        people.sort(Comparator.comparingInt(Person::getAge));

        System.out.println("Sorted Person List by Age : " + people);

        // You can also sort using Collections.sort() method by passing the custom Comparator
        Collections.sort(people, Comparator.comparing(Person::getName));
        System.out.println("Sorted Person List by Name : " + people);
    }
}

```

