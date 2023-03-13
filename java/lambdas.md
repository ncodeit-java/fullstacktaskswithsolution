### :camel: Java examples
---

#### Task1: Write a program to implement Runnable Functional interface using lambda expression

	* Hint - write any few lines of code inside run method and convert to lambda expression

#### Task2: Write a Functional Interface with method signature - String reverseString(String s) and implement interface using lambda expression

#### Task3: Write a Functional Interface with method signature - String convertToUppercase(String lowercase) and implement interface using lambda expression


#### Task4: Write a program to count the empty strings in the given list using lambda expression

	*List<String> strList = Arrays.asList("abc", "", "bcd", "", "defg", "jk"); 

```
import java.util.Arrays;
import java.util.List;

public class Java8Streams1{   
	public static void main(String args[]) {   
		List<String> strList = Arrays.asList("abc", "", "bcd", "", "defg", "jk"); 
		long count = strList.stream() .filter(x -> x.isEmpty()) .count(); 
		System.out.printf("List %s has %d empty strings %n", strList, count);
	}
}

```

#### Task5: Write a program to iterate over list using lambda expression

```
import java.util.Arrays;
import java.util.List;

public class Java8lambda{   
	public static void main(String args[]) {   
		List<String> countries=Arrays.asList("USA", "Japan", "France", "Germany", "Italy", "U.K.","Canada"); 
		countries.forEach(c -> System.out.println(c));
	}
}

```

#### Task6: Write a program to create a method filter that takes list of strings and predicate(name starts with J) and filter the data using predicate and print

```
import java.util.Arrays;
import java.util.List;
import java.util.function.Predicate;

public class Java8lambda {
	public static void main(String args[]) {
		List<String> countries = Arrays.asList("USA", "Japan", "France", "Germany", "Italy", "U.K.", "Canada");
		Predicate<String> p=(str)->str.startsWith("J");
		filter(countries,p );
	}

	public static void filter(List names, Predicate condition) {
		names.stream()
		.filter((name) -> (condition.test(name)))
		.forEach((name) -> {
			System.out.println(name + " ");
		});
	}

}
```

#### Task7: Write a program to create a method filter that takes list of strings and predicate(name starts with J & length more than 4) and filter the data using predicate and print
```
import java.util.Arrays;
import java.util.List;
import java.util.function.Predicate;

public class Java8lambda {
	public static void main(String args[]) {
		List<String> countries = Arrays.asList("USA", "Japan", "France", "Germany", "Italy", "U.K.", "Canada");
		Predicate<String> nameStartWithJ=(str)->str.startsWith("J");
		Predicate<String> fourLetterLong = (n) -> n.length() > 4;
		Predicate<String> p=nameStartWithJ.and(fourLetterLong);
		filter(countries,p );
	}

	public static void filter(List names, Predicate condition) {
		names.stream()
		.filter((name) -> (condition.test(name)))
		.forEach((name) -> {
			System.out.println(name + " ");
		});
	}

}

```

#### Task8: Write a program to Create a List with String more than 2 characters

```
import java.time.LocalDateTime;
import java.util.function.Supplier;

public class SupplierDemo {

    public static void main(String[] args) {
        Supplier < LocalDateTime > supplier = () -> LocalDateTime.now();
        System.out.println(supplier.get());
    }
}

```

#### Task9: Write a program to use supplier to get the current date

```
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

public class Java8Streams{   
	public static void main(String args[]) {   
		List<String> G7 = Arrays.asList("USA", "Japan", "France", "Germany", "Italy", "U.K.","Canada"); 
		String G7Countries = G7.stream() .map(x -> x.toUpperCase()) .collect(Collectors.joining(", ")); 
		System.out.println(G7Countries);

	}
} 

```

#### Task10: Write a program to get list of products using supplier


```
public class Product {
    private int id;
    private String name;
    private float price;

    public Product(int id, String name, float price) {
        super();
        this.id = id;
        this.name = name;
        this.price = price;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "Product [id=" + id + ", name=" + name + ", price=" + price + "]";
    }
}

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Supplier;

import com.javaguides.java.tutorial.Product;

public class SupplierDemo {

    public static void main(String[] args) {
        System.out.println(productSupplier().get());
    }

    private static Supplier < List < Product >> productSupplier() {
        Supplier < List < Product >> productSupplier = () -> {
            List < Product > productsList = new ArrayList < Product > ();
            productsList.add(new Product(1, "HP Laptop", 25000 f));
            productsList.add(new Product(2, "Dell Laptop", 30000 f));
            productsList.add(new Product(3, "Lenevo Laptop", 28000 f));
            productsList.add(new Product(4, "Sony Laptop", 28000 f));
            productsList.add(new Product(5, "Apple Laptop", 90000 f));
            productsList.add(new Product(6, "Apple Laptop", 90000 f));
            productsList.add(new Product(7, "Dell Laptop", 30000 f));
            productsList.add(new Product(8, "Dell Laptop", 30000 f));
            return productsList;
        };
        return productSupplier;
    }
}

```

#### Task11: Write a program to find the length of the string using function

```
import java.util.function.Function;

public class FunctionDemo {
    public static void main(String[] args) {

        Function < String, Integer > function1 = (t) -> t.length();

        Integer integer = function1.apply("Ramesh");
        System.out.println(integer);
    }
}
```

#### Task12: Write a program to convert a list of strings to map with key as string and value as length using function

```
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Function;

public class FunctionDemo {
    public static void main(String[] args) {
         
        List<String> list = Arrays.asList("Banana", "Mango", "Apple", "Watermelon");
        
        Map<String, Integer> map = convertListToMap(list, x -> x.length());

        System.out.println(map); 
    }

    private static <T, R> Map<T, R> convertListToMap(List<T> list, Function<T, R> func) {

        Map<T, R> result = new HashMap<>();
        for (T t : list) {
            result.put(t, func.apply(t));
        }
        return result;
    }
}
```

#### Task13: Write a program to convert a list of lowercase strings to list of uppercase strings

```
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

public class MapDemo {
    public static void main(String[] args) {
         
        List<String> list = Arrays.asList("banana", "mango", "apple", "watermelon");
        
        List<String> uppercaseList = transform(list);

        System.out.println(uppercaseList); 
    }

	public static List<String> transform(List<String> listOfString) { 
		return listOfString.stream().map(String::toUpperCase).collect(Collectors.toList()); 
	}

}
```

