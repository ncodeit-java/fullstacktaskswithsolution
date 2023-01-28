### :camel: Java examples
---

#### Task1: Write a program to count empty strings in a list

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

#### Task2: Write a program to Count String with length more than 3

```
import java.util.Arrays;
import java.util.List;

public class Java8Streams{   
	public static void main(String args[]) {   
		List<String> strList = Arrays.asList("abc", "", "bcd", "", "defg", "jk"); 
		long num = strList.stream() .filter(x -> x.length()> 3) .count(); 
		System.out.printf("List %s has %d strings of length more than 3 %n", strList, num);

	}
}

```

#### Task3: Write a program to Count number of String which startswith "a"

```
import java.util.Arrays;
import java.util.List;

public class Java8Streams{   
	public static void main(String args[]) {   
		List<String> strList = Arrays.asList("abc", "", "bcd", "", "defg", "jk"); 
		long count = strList.stream() .filter(x -> x.startsWith("a")) .count(); 
		System.out.printf("List %s has %d strings which startsWith 'a' %n", strList, count);
	}
}
```

#### Task4: Write a program to Remove all empty Strings from List
```
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

public class Java8Streams{   
	public static void main(String args[]) {   
		List<String> strList = Arrays.asList("abc", "", "bcd", "", "defg", "jk"); 
		List<String> filtered = strList.stream() .filter(x -> !x.isEmpty()) .collect(Collectors.toList()); 
		System.out.printf("Original List : %s, List without Empty Strings : %s %n", strList, filtered);
	}
}

```

#### Task5: Write a program to Create a List with String more than 2 characters

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

#### Task6: Write a program to Convert String to Uppercase and join them using coma

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

#### Task7: Write a program to Create List of square of all distinct numbers

*List<Integer> numbers = Arrays.asList(9, 10, 3, 4, 7, 3, 4); 

```
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

public class Java8Streams{   
	public static void main(String args[]) {   
		List<Integer> numbers = Arrays.asList(9, 10, 3, 4, 7, 3, 4); 
		List<Integer> distinct = numbers.stream() .map( i -> i*i).distinct() .collect(Collectors.toList()); 
		System.out.printf("Original List : %s, Square Without duplicates : %s %n", numbers, distinct);
	}
}
```

#### Task8: Write a program to convert a list of list into list of elements

```
import java.util.ArrayList; 
import java.util.Arrays; 
import java.util.List; 
import java.util.stream.Collectors;
public class FlatMapExample1 { 
	public static void main(String[] args) {  
		List<Integer> even = Arrays.asList( 2, 4, 6, 8, 10); 
		List<Integer> odd = Arrays.asList( 3, 5, 7, 9, 11); 
		List<Integer> primes = Arrays.asList(17, 19, 23, 29, 31); 
		List<List<Integer>> listOfNumbers = new ArrayList<>(); 
		listOfNumbers.add(even); 
		listOfNumbers.add(odd); 
		listOfNumbers.add(primes); 
		System.out.println("list of numbers: " + listOfNumbers); 
		
		List<Integer> flattenedList = listOfNumbers.stream()
				.flatMap(l -> l.stream())
				.collect(Collectors.toList()); 
		System.out.println("list of numbers (flattend) : " + flattenedList); 
		} 
}
```

#### Task9: Create a class Author with name and set of books, now write a program to create a list of authors with books and get the set of books for all authors 

```
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

public class FlatMapExample2 {

public static void main(String[] args) {

		List<Author> listOfAuthors = new ArrayList<>();
		
		Author joshBloch = new Author("Joshua Bloch");
		joshBloch.add("Effective Java");
		joshBloch.add("Java Puzzlers");;
		
		Author uncleBob = new Author("Robert C. Martin");
		uncleBob.add("Clean Code");
		uncleBob.add("Clean Coder");
		uncleBob.add("Clean Architecure");
		
		
		listOfAuthors.add(joshBloch);
		listOfAuthors.add(uncleBob);
		
		Set<String> books = listOfAuthors.stream()
		.flatMap(author -> author.getBooks().stream())
		.collect(Collectors.toSet());
		
		System.out.println("List of Books from all the authors");
		System.out.println(books);

	}

}

class Author {

	private final String name;
	private final Set<String> books;
	
	public Author(String name) {
		this.books = new HashSet<>();
		this.name = name;
	}
	
	public void add(String book) {
		this.books.add(book);
	}
	
	public Set<String> getBooks() {
		return books;
	}
}
```