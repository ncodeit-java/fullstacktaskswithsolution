### :camel: Java examples
---

#### Task1: Write a Java program to find the maximum and minimum value of an array.

```
import java.util.*;
public class test
{
  public static void main(String[] args)
  {
       
	int[] my_array = {25, 14, 56, 15, 36, 56, 77, 18, 29, 49};
       int min=Integer.MAX_VALUE;
       int max=Integer.MIN_VALUE;
       for(int i=0;i<=9;i++)
       {
         arr[i]=sc.nextInt();
         if(arr[i]<min)
           {
           min=arr[i];
           }
         if(arr[i]>max)
         {
           max=arr[i];
         }
       }
       System.out.println("Maximum element is "+max);
       System.out.println("Minimum element is "+min);
       
       
  }
}
```

#### Task2: Write a Java program to reverse an array of integer values.

```
import java.util.Arrays; 
public class Exercise11 {
public static void main(String[] args){   
    int[] my_array1 = {
            1789, 2035, 1899, 1456, 2013, 
            1458, 2458, 1254, 1472, 2365, 
            1456, 2165, 1457, 2456};
  System.out.println("Original array : "+Arrays.toString(my_array1));  
   for(int i = 0; i < my_array1.length / 2; i++)
  {
    int temp = my_array1[i];
    my_array1[i] = my_array1[my_array1.length - i - 1];
    my_array1[my_array1.length - i - 1] = temp;
  }
    System.out.println("Reverse array : "+Arrays.toString(my_array1));
 }
}
```

#### Task3: Write a Java program to find the duplicate values of an array of integer values.

```
public class Main 

{  
    public static void main(String[] args) 

    {      
        //Initializing an array   

        int [] a1 = new int [] {1, 2, 3, 7, 2, 7, 8, 8, 9};   
       
        System.out.println("Duplicate elements in given array: ");  

        //Search for duplicate element in an array  

        for(int i = 0; i < a1.length; i++) 

        {  

            for(int j = i + 1; j < a1.length; j++) 

            {  

                if(a1[i] == a1[j])  

                    System.out.println(a1[j]);  

            }  

        }  

    }  

} 

```

#### Task4: Find the second largest element in an array

```
public class FindSecondLargest {

    static int findSecondLargest(int a[], int n) {

        /*
        Initialize the variable first_largest with the value 0 and second_largest with the value -1.
        */
        int first_largest = 0;
        int second_largest = -1;

        /*
        Now update the values of first_largest and second_largest in each iteration as per the approach.
        */
        for (int i = 0; i < n; i++) {
            if (a[i] > a[first_largest]) {
                second_largest = first_largest;
                first_largest = i;
            } else if (a[i] < a[first_largest]) {
                if (second_largest == -1 || a[second_largest] < a[i])
                    second_largest = i;
            }
        }

        return a[second_largest];
    }

    public static void main(String[] args) {
        int a[] = { 12, 35, 1, 10, 34, 1 };
        int n = a.length;

        int answer = findSecondLargest(a, n);

        System.out.println("The second largest element in the array is: " + answer);

    }
}

```

#### Task5: Find the second smallest element in an array

```
public class FindSecondSmallest {

    /* Function to print first smallest and second smallest
      elements */
    static void print2Smallest(int arr[])
    {
        int first, second, arr_size = arr.length;
 
        /* There should be atleast two elements */
        if (arr_size < 2)
        {
            System.out.println(" Invalid Input ");
            return;
        }
 
        first = second = Integer.MAX_VALUE;
        for (int i = 0; i < arr_size ; i ++)
        {
            /* If current element is smaller than first
              then update both first and second */
            if (arr[i] < first)
            {
                second = first;
                first = arr[i];
            }
 
            /* If arr[i] is in between first and second
               then update second  */
            else if (arr[i] < second && arr[i] != first)
                second = arr[i];
        }
        if (second == Integer.MAX_VALUE)
            System.out.println("There is no second" +
                               "smallest element");
        else
            System.out.println("The smallest element is " +
                               first + " and second Smallest" +
                               " element is " + second);
    }
 
    public static void main (String[] args)
    {
        int arr[] = {12, 13, 1, 10, 34, 1};
        print2Smallest(arr);
    }
}

```

#### Task6: Find all Pairs of elements in an array whose sum is equal to a specified number

```
public class Exercise22 {
static void  pairs_value(int inputArray[], int inputNumber)
  {
  System.out.println("Pairs of elements and their sum : ");
 
  for (int i =  0; i < inputArray.length; i++)
  {
  for (int j  = i+1; j < inputArray.length; j++)
  {
  if(inputArray[i]+inputArray[j] == inputNumber)
  {
  System.out.println(inputArray[i]+" + "+inputArray[j]+" =  "+inputNumber);
  }
  }
  }
  }
  
  public static void  main(String[] args)
  {
  pairs_value(new int[] {2, 7, 4, -5, 11, 5, 20}, 15);
  
  }
}


```

