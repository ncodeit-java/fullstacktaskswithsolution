### :camel: Java examples
---

#### Task1: Create threads t1 and t2 using class which extends Thread class and execute the task to loop and print integers from 1 to 10 

```
public class InstantiateUsingOnlyThread {
	
	public static void main(String[] args) {
		
		System.out.println("Thread main started");
		
		Thread thread1 = new MyTask();	
		Thread thread2 = new MyTask();
		thread1.start();
		thread2.start();
		
		System.out.println("Thread main finished");
	}
}

class MyTask extends Thread {
	
	public MyTask() {
		
	}
	
	public void run() {
		for (int i = 0; i < 10; i++) {
			System.out.println("[" + Thread.currentThread().getName() + "]" + i);
			try {
				Thread.sleep(200);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
	}
}
```

#### Task2: Create a runnable task to print integers from 1 to 10 

```
public class InstantiateUsingRunnable {
	
	public static void main(String[] args) {
		
		System.out.println("Thread main started");
		
		Thread thread1 = new Thread(new MyTask());	
		Thread thread2 = new Thread(new MyTask());	
		thread1.start();
		thread2.start();
		
		System.out.println("Thread main finished");
	}
}

class MyTask implements Runnable {
	
	public MyTask() {
	}
	
	public void run() {
		for (int i = 0; i < 10; i++) {
			System.out.println("[" + Thread.currentThread().getName() + "]" + i);
			try {
				Thread.sleep(200);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
	}
}
```

#### Task3: Create a task to sum all n numbers using Executor Service, check if task is finished and if finished print the result

```
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

/*
 * Checks whether the task has finished or not using Executors
 * When it's finished, print the result
 */

public class CheckIfTaskIsDoneUsingExecutors {
	
	public static void main(String[] args) throws InterruptedException, ExecutionException {
		
		System.out.println("Thread main started");
		
		ExecutorService executorService = Executors.newSingleThreadExecutor();
		Future<Integer> result = executorService.submit(new SumFirstNumbers(50));
		
		while (!result.isDone()) {
			System.out.println("Task is still processing");
			Thread.sleep(500l);
		}
		
		System.out.println("Task is finished: " + result.isDone());
		System.out.println("Task result is: " + result.get());
		
		executorService.shutdown();
		
		System.out.println("Thread main finished");
	}
}

class SumFirstNumbers implements Callable<Integer> {
	private int n;
	
	public SumFirstNumbers(int n) {
		this.n = n;
	}
	
	public Integer call() {
		int sum = 0;
		for (int i = 1; i <= n; i++) {
			System.out.println("[" + Thread.currentThread().getName() + "] Adding " + i);
			sum += i;
			try {
				Thread.sleep(200);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
		return sum;
	}
}

```

#### Task4: Cacel the task while calculating the sum of n numbers using Executor Service

```
package com.example;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

/*
 * Terminates a TASK by using the Future.cancel(true) call.
 * Note that the task will not terminate immediately (that's why we put main to sleep for a while)
 * Comment the cancel() invocation to see the task finishing its job.
 * 
 * Internally, it uses the same mechanism in one of the previous examples using Thread.interrupt() method.
 * 
 * After the task is cancelled, the thread is again available in the thread pool.
 */

public class TerminateTaskUsingFuture {

	public static void main(String[] args) throws InterruptedException, ExecutionException {

		System.out.println("Thread main started");
		
		ExecutorService executorService = Executors.newCachedThreadPool();

		SumFirstNumbers sumTask = new SumFirstNumbers(5000);
		Future<Integer> result = executorService.submit(sumTask);

		Thread.sleep(5);
		result.cancel(true);
		
		executorService.shutdown();

		System.out.println("Thread main finished");
	}
}

class SumFirstNumbers implements Callable<Integer> {
	private int n;
	
	public SumFirstNumbers(int n) {
		this.n = n;
	}
	
	public Integer call() {
		int sum = 0;
		for (int i = 1; i <= n; i++) {
			System.out.println("[" + Thread.currentThread().getName() + "] Adding " + i);
			sum += i;
			
			if (Thread.interrupted()) {
				System.out.println("Cancelling the task...");
				return -1;
			}
		}
		return sum;
	}
}

```

#### Task5: Terminate all tasks using shutdownNow method using Executor Service

```
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/*
 * Terminates all tasks assigned to ExecutorService by using ExecutorService.shutdownNow() method
 * This method terminates immediately the running tasks and retrieves the list of tasks that hasn't 
 * started yet
 * 
 * As in this example the thread pool has size 5 and 8 tasks where assigned, then it must return 3 
 * tasks that were queued
 */

public class TerminateAllTasksInExecutorService {

	public static void main(String[] args) throws InterruptedException {

		System.out.println("Thread main started");

		ExecutorService executorService = Executors.newFixedThreadPool(5);
		executorService.submit(new SumFirstNumbers(400000));
		executorService.submit(new SumFirstNumbers(300000));
		executorService.submit(new SumFirstNumbers(200000));
		executorService.submit(new SumFirstNumbers(100000));
		executorService.submit(new SumFirstNumbers(100000));
		executorService.submit(new SumFirstNumbers(100000));
		executorService.submit(new SumFirstNumbers(100000));
		executorService.submit(new SumFirstNumbers(100000));
		
		Thread.sleep(1000l);

		List<Runnable> queudTasks = executorService.shutdownNow();
		
		System.out.println("Tasks that hasn't started: " + queudTasks.size());
		System.out.println("Thread main finished");
	}
}

class SumFirstNumbers implements Callable<Integer> {
	private int n;

	public SumFirstNumbers(int n) {
		this.n = n;
	}

	public Integer call() {
		int sum = 0;
		for (int i = 1; i <= n; i++) {
			try {
				System.out.println("[" + Thread.currentThread().getName() + "] Adding " + i);
				sum += i;
				Thread.sleep(100l);
			} catch (InterruptedException e) {
				System.out.println("Interrupting the thread while it was sleeping...");
				break;
			}
		}
		return sum;
	}
}
```

#### Task6: Create class which extends Thread, override run method and throw RuntimeException and use setDefaultUncaughtExceptionHandler to catch the exception

```
import java.lang.Thread.UncaughtExceptionHandler;

/*
 * Instantiates an UncaughtExceptionHandler to handle exceptions that may rise in
 * all the threads of the application (including those in a Thread Pool)
 * 
 * It's also possible to set an UncaughtExceptionHandler directly to an specific thread object.
 * 
 * You may also use a combination of both strategies as specific handlers overrides the global one
 */

public class HandlingExceptionsInThreadAPI {
	
	public static void main(String[] args) {
		
		System.out.println("Thread main started");
		
		Thread.setDefaultUncaughtExceptionHandler(new UncaughtExceptionHandler() {
			public void uncaughtException(Thread t, Throwable e) {
				System.out.println("Handling the Exception occured in thread " + t.getName());
			}
		});
		
		new MyTask().start();
		new MyTask().start();	
		
		System.out.println("Thread main finished");
	}
}

class MyTask extends Thread {
	public void run() {
		throw new RuntimeException();
	}
}
```

#### Task7: Write a generic method to find the largest of three comparable object using multiple bound parameters

```
public class GenericsTester {
   public static void main(String[] args) {
      System.out.printf("Max of %d, %d and %d is %d\n\n", 
         3, 4, 5, maximum( 3, 4, 5 ));

      System.out.printf("Max of %.1f,%.1f and %.1f is %.1f\n\n",
         6.6, 8.8, 7.7, maximum( 6.6, 8.8, 7.7 ));
   }

   public static <T extends Number 
      & Comparable<T>> T maximum(T x, T y, T z) {
      T max = x;      
      if(y.compareTo(max) > 0) {
         max = y;   
      }

      if(z.compareTo(max) > 0) {
         max = z;                    
      }
      return max;      
   }
```

#### Task8: create class cat which extends animal, dog extends animal and create a generic method to add cat objects using lower bound 

```
import java.util.ArrayList;
import java.util.List;

public class GenericsTester {

   public static void addCat(List<? super Cat> catList) {
      catList.add(new RedCat());
      System.out.println("Cat Added");
   }

   public static void main(String[] args) {
      List<Animal> animalList= new ArrayList<Animal>();
      List<Cat> catList= new ArrayList<Cat>();
     
      List<Dog> dogList= new ArrayList<Dog>();

      //add list of super class Animal of Cat class
      addCat(animalList);

      //add list of Cat class
      addCat(catList);

      //compile time error
      //can not add list of subclass Dog of Superclass Animal of Cat class
      //addCat.addMethod(dogList); 
   }
}
class Animal {}

class Cat extends Animal {}

class Dog extends Animal {}
```

