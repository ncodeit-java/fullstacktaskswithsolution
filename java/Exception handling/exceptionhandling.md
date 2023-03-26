### :camel: java examples
---

#### Task1: Create a method divide which accepts two input numbers and prints the division result. Handle the exception when the one number is divided by zero and print the message 


```
public class ExceptionHandling1 {

public static void main(String[] args) {

		int result= divide(3,0);
		System.out.println("Result: "+result);

	}

	private static int divide(int i, int j) {
		int result=0;
		try {
			result= i/j;
		} catch (ArithmeticException e) {
			e.printStackTrace();
			System.out.println("Exception Occurred by dividing with number:"+j);
		}
		return result;
	}

}

```

#### Task2: Create a class inside the try block declare an array a[] and initialize with value a[5] =30/5;In each catch block show Arithmetic exception and ArrayIndexOutOfBoundsException.

```
public class ExceptionHandling2 {
	public static void main(String[] args) {

		try {

			int a[] = new int[5];
			a[5] = 30 / 5;
		} catch (ArithmeticException e) {

			System.out.println("ArithmeticException occurs");
		} catch (ArrayIndexOutOfBoundsException e) {

			System.out.println(" ArrayIndexOutOfBoundsException occurs");
		} catch (Exception e) {
			System.out.println("Parent Exception occurs");
		}
		System.out.println("Rest of the code");
	}
}

```

#### Task3: Write a method readFile from a specific location(C:/Users/source.txt) and print the exception 

```
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

public class Exception3 {
	public static void main(String args[]) {
		readFile();
	}

	private static void readFile() {
		try {
			String fileName = "C:/Users/source.txt";
			Path path = Paths.get(fileName);
			    //read file to byte array
			 byte[] bytes = Files.readAllBytes(path);
			 System.out.println("Read text file using Files class");
			    //read file to String list
			 List<String> allLines = Files.readAllLines(path, StandardCharsets.UTF_8);
			 System.out.println(new String(bytes));
		} catch (IOException e) {
			System.out.println(e);
		}
		
	}
}
```

#### Task4: Write a method findFile add FileNotFoundException using throws and call the method from main method, handle the exception using try/catch

```
import java.io.*;
public class Exception4 {
  public static void findFile() throws FileNotFoundException  {
    // code that may produce IOException
    File newFile=new File("test.txt");
    FileInputStream stream=new FileInputStream(newFile);
  }

  public static void main(String[] args) {
    try{
      findFile();
    } catch(IOException e){
      System.out.println(e);
    }
  }
}

```

#### Task5: Write a square method which calculates the square of the given number and throw ArthematicException if number is negtive
	
```
public class Exception6  { 
 public static void main(String[] args){
     square(-4);
 }
 // user defined method
 public static void square(Integer num){
     // if condition
     if(num<0){
         // java throw exception inside method
         throw new ArithmeticException("Number should not be negative!");
     }
     // else statement
     else{
         System.out.println("The square is: "+num*num);
     }
 }
}

```