
### :camel: Spring Core examples
---

#### Task1: Write a Car class which has an Engine, Brakes, Gear classes as a dependencies which can be injected by using constructor, setter and field


#### Task2: Create a new instance of Mobile using @Bean and @Configuration annotations and print the value of the instance variable like mobileType which is passed as a constructor argument.

#### Task3: Take a Bank Class with BankName (String) and Address(Class) as instance variables and show Address autowired by Name , Type and Constructor

```
package com.ncodeit.springcore;

public class Address {
	
	private String state;
	private String city;
	
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}

}

package com.ncodeit.springcore;

import org.springframework.beans.factory.annotation.Autowired;

public class Bank {
	
	private String bankName;
	
	@Autowired
	private Address address;
	
	public String getBankName() {
		return bankName;
	}
	public void setBankName(String bankName) {
		this.bankName = bankName;
	}
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}

}

package com.ncodeit.springcore;

import org.springframework.beans.factory.annotation.Autowired;

public class BankByConstructor {
	
	private String bankName;
	private Address address;
	
	@Autowired
	public BankByConstructor(String bankName, Address address) {
		super();
		this.bankName = bankName;
		this.address = address;
	}
	
	public String getBankName() {
		return bankName;
	}
	public void setBankName(String bankName) {
		this.bankName = bankName;
	}
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}

}

package com.ncodeit.springcore;

import org.springframework.beans.factory.annotation.Autowired;

public class BankByType {
	
	private String bankName;
	
	@Autowired
	private Address address;
	
	public String getBankName() {
		return bankName;
	}
	public void setBankName(String bankName) {
		this.bankName = bankName;
	}
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}

}

package com.ncodeit.springcore;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


public class App 
{
    public static void main( String[] args )
    {
    	AbstractApplicationContext context = new ClassPathXmlApplicationContext("spring.xml");
		
    	Bank employerByName = (Bank) context.getBean("bankByName");
		System.out.println("Autowire ByName");
		System.out.println("Employer Name : "+employerByName.getBankName());
		System.out.println("City : "+employerByName.getAddress().getCity());
		System.out.println("State : "+employerByName.getAddress().getState());
		
		
		System.out.println("Autowire ByType");
		BankByType bankByType = (BankByType) context.getBean("bankByType");
		System.out.println("Employer Name : "+bankByType.getBankName());
		System.out.println("City : "+bankByType.getAddress().getCity());
		System.out.println("State : "+bankByType.getAddress().getState());
		
		
		System.out.println("Autowire usingConstructor");
		BankByConstructor bankByCustructor = (BankByConstructor) context.getBean("bankByConstructor");
		System.out.println("Employer Name : "+bankByCustructor.getBankName());
		System.out.println("City : "+bankByCustructor.getAddress().getCity());
		System.out.println("State : "+bankByCustructor.getAddress().getState());
		
		context.close();
    }
}
```


#### Task4: Take a School Class and show all the 3 ways of creating Movie bean a. using xml config b. using @Bean and @Configuration c. Using @Component


#### Task5: Write a Movie class showing before and after initialization using MovieBeanPostProcessor by implementing BeanPostProcessor Interface


#### Task6: Write a Password class and create a password and destroy the password - using @PostConstruct and @PreDestroy annotations

```
package com.ncodeit.springcore.password;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;

public class Password {
	
	private String password;
	
	
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@PostConstruct
	private void init() {
		System.out.println("Password : Verifying Resources Post Construction");
		this.password="tempPassword";
	}

	@PreDestroy
	private void shutdown() {
		System.out.println("Password : Shutdown All Resources Pre Destroying");
		this.password=null;
		System.out.println("Password in shut down:"+this.password);
		
	}

}

package com.ncodeit.springcore.password;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Scope;

@Configuration
public class MyConfiguration {

	@Bean
	@Scope(value = "singleton")
	public Password passwordBean() {
		return new Password();
	}
	
	

}

package com.ncodeit.springcore.password;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


public class App 
{
    public static void main( String[] args )
    {
    	AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext(MyConfiguration.class);
    
    	Password passObj = context.getBean(Password.class);
		System.out.println("Password : " + passObj.getPassword());
    
		context.close(); // predestroy will get called when the bean instance is getting removed from context
    }
}

```

#### Task7: Write a Software Class and show the life cycle methods of Software Bean by implementing Initializing Bean and Disposable Bean interfaces


#### Task8: Write a Coffeshop Class and add 2 branch Address bean definitions in xml file for Hyderabad and Secunderabad and use a Qualifier annotation to pick each Address


#### Task9: Write a Bike Class and create beans with singleton and prototype scopes


#### Task10: Write an example program for @Value annotation used for injecting property values into Television Class (with name as property)

