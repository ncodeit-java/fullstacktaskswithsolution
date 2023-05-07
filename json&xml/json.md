
### :camel: Json examples
---
### Instructions
```
Add below dependency in pom.xml

	<dependency>
		<groupId>com.fasterxml.jackson.core</groupId>
		<artifactId>jackson-databind</artifactId>
		<version>2.13.3</version>
	</dependency>

```

#### Task1: Create a Company object and convert to json and print the json string in the console
```
public class Company {

	private String companyName;
	private String description;
	private String address;

	//Add getters and setters
}
```

#### Task2: Movie is directed by a Director,Create a movie and by whom it has been directed by and convert to json and write it to file
```
public class Movie {

	private int movieId;
	private String movieName;
	private String description;
	private Director director;

	//Add getters and setters
}

public class Director {

	private int directorId;
	private String name;
	
	//Add getters and setters
	
}
```

#### Task3: Create a list of users(no. of users=2) and convert to json and write it to file
```
public class User {

	private String name;
	private int age;
	private String address;

	//Add getters and setters
}
```


#### Task4: Convert the json file - language.json to java objects by creating equivalent java class


#### Task5: Convert the json file- student.json to java object

```
public class Student{
  private int id;
  private String name;
  private int age;
  private String gender
}

```