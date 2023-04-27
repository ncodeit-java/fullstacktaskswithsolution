
### :camel: Spring Core examples
---
### Instructions

```
Create a Maven Project
Go to Eclipse, File->New-> Maven Project
In New Maven Project,click on Next
Enter org.apache.maven.archetypes in Filter text box
Choose Artifact Id 'maven-archetype-quickstart' and click on next
Enter Artifact Id (any name) ,this will be your project name
Click Finish
Copy the contents of pom.xml from any earlier spring project(springautowiring)

```


#### Task1: Make the necessary changes to make the below code run, add missing code

```
package com.ncodeit;

public class A {
	
	private B obj;
	
	public void printMessage() {
		String msg=obj.getMessage();
		System.out.println(msg);
	}

	public B getObj() {
		return obj;
	}

	public void setObj(B obj) {
		this.obj = obj;
	}
}

package com.ncodeit;

public class B {
	
	public String getMessage() {
		return "Hello World from Spring";
	}

}

package com.ncodeit;

import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestMain {

	public static void main(String[] args) {
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("test.xml");
		A objA = (A) context.getBean("createBean");
		objA.printMessage();
		
		context.close();
	}
}
```


#### Task2: Make the necessary changes to make the below code run,add missing code

```
package com.ncodeit;

public class A {
	
	private B obj;
	
	public void printMessage() {
		String msg=obj.getMessage();
		System.out.println(msg);
	}

	public B getObj() {
		return obj;
	}

	public void setObj(B obj) {
		this.obj = obj;
	}
}

package com.ncodeit;

public class B {
	
	public String getMessage() {
		return "Hello World from Spring";
	}

}

package com.ncodeit;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.encodeit.CoreBean;

public class TestMain {

	public static void main(String[] args) {
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.register(MyConfiguration.class);
		context.refresh();

		A objA = context.getBean(A.class);
		objA.printMessage();

		context.close();

	}
}
```

#### Task3: Make the necessary changes to make the below code run,add missing code

```
package com.ncodeit.springExample;

import org.springframework.beans.factory.annotation.Autowired;

public class Student {
	
	private String name;
	
	@Autowired
	private Address address;

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}

package com.ncodeit.springExample;

public class Address {
	
	private String city;

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

}

package com.ncodeit.springExample;

import org.springframework.context.support.ClassPathXmlApplicationContext;


public class App 
{
    public static void main( String[] args )
    {
        ClassPathXmlApplicationContext context=new ClassPathXmlApplicationContext("test-example.xml");
        Student st=(Student)context.getBean("student");
        String stName=st.getName();
        System.out.println("student Name:"+stName);
        System.out.println("Student City: "+st.getAddress().getCity());
        context.close();
    }
}

```

#### Task4: Create a Employee class with fields empId, empName,age and salary and make it spring bean using xml,set the properties and print the values in java main class

#### Task5: Create a Student class with fields studentId, studentName,age and make it spring bean using Annotations,set the properties and print the values in java main class


