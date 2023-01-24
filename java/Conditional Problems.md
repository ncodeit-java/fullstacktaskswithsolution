### :camel: Java examples
---

#### Task1: Write a Java program to get a number from the user and print whether it is positive or negative.

```
import java.util.Scanner;
public class Exercise1 {

    
  public static void main(String[] args)
    {
        Scanner in = new Scanner(System.in);
        System.out.print("Input number: ");
        int input = in.nextInt();

        if (input > 0)
        {
            System.out.println("Number is positive");
        }
        else if (input < 0)
        {
            System.out.println("Number is negative");
        }
        else
        {
            System.out.println("Number is zero");
        }
    }
}
```

#### Task2: Take three numbers from the user and print the greatest number.

```
import java.util.Scanner;
public class Exercise3 {

    
  public static void main(String[] args) {
  Scanner in = new Scanner(System.in);
   
  System.out.print("Input the 1st number: ");
  int num1 = in.nextInt();
   
  System.out.print("Input the 2nd number: ");
  int num2 = in.nextInt();
   
  System.out.print("Input the 3rd number: ");
  int num3 = in.nextInt();
   
   
  if (num1 > num2)
   if (num1 > num3)
    System.out.println("The greatest: " + num1);
   
  if (num2 > num1)
   if (num2 > num3)
    System.out.println("The greatest: " + num2);
   
  if (num3 > num1)
   if (num3 > num2)
    System.out.println("The greatest: " + num3);
 }
}
```

#### Task3: Write a Java program that keeps a number from the user and generates an integer between 1 and 7 and displays the name of the weekday.

```
import java.util.Scanner;
public class Exercise5 {

    
  public static void main(String[] args)
    {
        Scanner in = new Scanner(System.in);
        System.out.print("Input number: ");
        int day = in.nextInt();

        System.out.println(getDayName(day));
    }

    // Get the name for the Week
    public static String getDayName(int day) {
        String dayName = "";
        switch (day) {
            case 1: dayName = "Monday"; break;
            case 2: dayName = "Tuesday"; break;
            case 3: dayName = "Wednesday"; break;
            case 4: dayName = "Thursday"; break;
            case 5: dayName = "Friday"; break;
            case 6: dayName = "Saturday"; break;
            case 7: dayName = "Sunday"; break;
            default:dayName = "Invalid day range";
        }

        return dayName;
    }
}

```

#### Task4: Write a Java program to find the number of days in a month.

```
import java.util.Scanner;
public class Exercise7 {

    
  public static void main(String[] strings) {

        Scanner input = new Scanner(System.in);

        int number_Of_DaysInMonth = 0; 
        String MonthOfName = "Unknown";

        System.out.print("Input a month number: ");
        int month = input.nextInt();

        System.out.print("Input a year: ");
        int year = input.nextInt();

        switch (month) {
            case 1:
                MonthOfName = "January";
                number_Of_DaysInMonth = 31;
                break;
            case 2:
                MonthOfName = "February";
                if ((year % 400 == 0) || ((year % 4 == 0) && (year % 100 != 0))) {
                    number_Of_DaysInMonth = 29;
                } else {
                    number_Of_DaysInMonth = 28;
                }
                break;
            case 3:
                MonthOfName = "March";
                number_Of_DaysInMonth = 31;
                break;
            case 4:
                MonthOfName = "April";
                number_Of_DaysInMonth = 30;
                break;
            case 5:
                MonthOfName = "May";
                number_Of_DaysInMonth = 31;
                break;
            case 6:
                MonthOfName = "June";
                number_Of_DaysInMonth = 30;
                break;
            case 7:
                MonthOfName = "July";
                number_Of_DaysInMonth = 31;
                break;
            case 8:
                MonthOfName = "August";
                number_Of_DaysInMonth = 31;
                break;
            case 9:
                MonthOfName = "September";
                number_Of_DaysInMonth = 30;
                break;
            case 10:
                MonthOfName = "October";
                number_Of_DaysInMonth = 31;
                break;
            case 11:
                MonthOfName = "November";
                number_Of_DaysInMonth = 30;
                break;
            case 12:
                MonthOfName = "December";
                number_Of_DaysInMonth = 31;
        }
        System.out.print(MonthOfName + " " + year + " has " + number_Of_DaysInMonth + " days\n");
    }
}

```

#### Task5: Write a Java program that takes the user to provide a single character from the alphabet. Print Vowel of Consonant, depending on the user input. If the user input is not a letter (between a and z or A and Z), or is a string of length > 1, print an error message.

```
import java.util.Scanner;
public class Exercise8 {

    
  public static void main(String[] args)
    {
        Scanner in = new Scanner(System.in);

        System.out.print("Input an alphabet: ");
        String input = in.next().toLowerCase();

        boolean uppercase = input.charAt(0) >= 65 && input.charAt(0) <= 90;
        boolean lowercase = input.charAt(0) >= 97 && input.charAt(0) <= 122;
        boolean vowels = input.equals("a") || input.equals("e") || input.equals("i")
                || input.equals("o") || input.equals("u");

        if (input.length() > 1)
        {
            System.out.println("Error. Not a single character.");
        }
        else if (!(uppercase || lowercase))
        {
            System.out.println("Error. Not a letter. Enter uppercase or lowercase letter.");
        }
        else if (vowels)
        {
            System.out.println("Input letter is Vowel");
        }
        else
        {
            System.out.println("Input letter is Consonant");
        }
    }
}

```

#### Task6: Write a program in Java to display n terms of natural numbers and their sum.

```
Input the number: 2
Expected Output :

Input number: 2                                                                                
The first n natural numbers are :                                                                                                                               
1                                                                                
2                                                                                
The Sum of Natural Number upto n terms : 3
```

```
import java.util.Scanner;
public class Exercise11 {

    
  public static void main(String[] args)

{
   int i, n, sum=0;
   {
   Scanner in = new Scanner(System.in);  
        System.out.print("Input number: ");  
         n = in.nextInt();
}
  System.out.println("The first n natural numbers are : "+n);
  
 for(i=1;i<=n;i++)
   {
     System.out.println(i);
     sum+=i;
   }
System.out.println("The Sum of Natural Number upto "+n+ " terms : " +sum);

}
}

```

#### Task7: Write a program in Java to display the multiplication table of a given integer.

```
import java.util.Scanner;
public class Exercise14 {

   public static void main(String[] args)

{
   int j,n;

   System.out.print("Input the number(Table to be calculated): ");
{
   System.out.print("Input number of terms : ");
    Scanner in = new Scanner(System.in);
		    n = in.nextInt();

   System.out.println ("\n");
   for(j=0;j<=n;j++)
  
     System.out.println(n+" X "+j+" = " +n*j);
   }
}
}

```

#### Task8: Write a program in Java to display the pattern like right angle triangle with a number.

```
Expected output:
Input number of rows : 10                                                                                     
1                                                                                                       
12                                                                                                       
123                                                                                                       
1234                                                                                                       
12345                                                                                                       
123456                                                                                                       
1234567                                                                                                       
12345678                                                                                                      
123456789                                                                                                     
12345678910 
```

```
import java.util.Scanner;
public class Exercise16 {

   public static void main(String[] args)

{
   int i,j,n;
   System.out.print("Input number of rows : ");
 Scanner in = new Scanner(System.in);
		    n = in.nextInt();

   for(i=1;i<=n;i++)
   {
	for(j=1;j<=i;j++)
	  System.out.print(j);

    System.out.println("");
    }
}
}

```

#### Task9: A company decided to give bonus of 5% to employee if his/her year of service is more than 5 years.Ask user for their salary and year of service and print the net bonus amount.

```
```

