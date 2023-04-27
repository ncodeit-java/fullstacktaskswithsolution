
### :camel: Junit examples
---
### Instructions


#### Task1: Add junit test cases with param1="2",param2=5 and another test case with param1="4",param2=15

```
package de.ncodeit.demo;

public class MyTestClass {
	public int doSomething(String param1, int param2) {
		if (param2 < 10) {
			return param2;
		} else {
			return Integer.parseInt(param1);
		}
	}
}
```


#### Task2: Add junit test case for exception,for method-setBasicSalary

```
package com.ncodeit;


public class BasicSalaryCalculator {
  private double basicSalary;
 
  public double getBasicSalary() {
    return basicSalary;
  }
 
  public void setBasicSalary(double basicSalary) {
    if (basicSalary < 0) {
      throw new IllegalArgumentException("Negative salary is invalid.");
    }
    this.basicSalary = basicSalary;
  }
 
  public double getGrossSalary() {
    return this.basicSalary + getSocialInsurance() + getAdditionalBonus();
  }
 
  public double getSocialInsurance() {
    return this.basicSalary * 25 / 100;
  }
 
  public double getAdditionalBonus() {
    return this.basicSalary / 10;
  }
}
```

#### Task3: Add junit test case using verify method,for method-setBasicSalary

```
package com.ncodeit;


public class BasicSalaryCalculator {
  private double basicSalary;
 
  public double getBasicSalary() {
    return basicSalary;
  }
 
  public void setBasicSalary(double basicSalary) {
    if (basicSalary < 0) {
      throw new IllegalArgumentException("Negative salary is invalid.");
    }
    this.basicSalary = basicSalary;
  }
 
  public double getGrossSalary() {
    return this.basicSalary + getSocialInsurance() + getAdditionalBonus();
  }
 
  public double getSocialInsurance() {
    return this.basicSalary * 25 / 100;
  }
 
  public double getAdditionalBonus() {
    return this.basicSalary / 10;
  }
}
```

#### Task4: Add junit test case ,for method-getAdditionalBonus

```
package com.ncodeit;


public class BasicSalaryCalculator {
  private double basicSalary;
 
  public double getBasicSalary() {
    return basicSalary;
  }
 
  public void setBasicSalary(double basicSalary) {
    if (basicSalary < 0) {
      throw new IllegalArgumentException("Negative salary is invalid.");
    }
    this.basicSalary = basicSalary;
  }
 
  public double getGrossSalary() {
    return this.basicSalary + getSocialInsurance() + getAdditionalBonus();
  }
 
  public double getSocialInsurance() {
    return this.basicSalary * 25 / 100;
  }
 
  public double getAdditionalBonus() {
    return this.basicSalary / 10;
  }
}
```
#### Task5: Add junit test case for below class-HelloApp, Use mockito to mock the method call -hello.getMessage(msg)

```
package com.ncodeit.junitExamples.hello;

public class HelloApp {

	private HelloService hello;
	
	public String getMessageFromHello(String msg) {
		return hello.getMessage(msg);
	}
	
}

package com.ncodeit.junitExamples.hello;

public class HelloService {
	
	public String getMessage(String msg) {
		return msg;
	}

}
```

