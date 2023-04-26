### challenges 
**scenario1:** You are designing a multi-threaded application that needs to download and process multiple files simultaneously. Write a program to download three files at the same time, and then merge the contents of these files into a single file.
```
import java.io.*;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class DownloadFiles {
    private static final int NUM_THREADS = 3;

    public static void main(String[] args) throws IOException {
        List<Thread> threads = new ArrayList<>();
        ExecutorService executorService = Executors.newFixedThreadPool(NUM_THREADS);
        for (int i = 1; i <= NUM_THREADS; i++) {
            String url = "http://www.example.com/file" + i + ".txt";
            threads.add(new Thread(new DownloadRunnable(url)));
        }

        for (Thread thread : threads) {
            executorService.submit(thread);
        }

        executorService.shutdown();
    }

    private static class DownloadRunnable implements Runnable {
        private final String url;

        public DownloadRunnable(String url) {
            this.url = url;
        }

        @Override
        public void run() {
            try {
                URL url = new URL(this.url);
                try (InputStream in = url.openStream()) {
                    byte[] buffer = new byte[4096];
                    int n = -1;
                    while ((n = in.read(buffer)) != -1) {
                        // process the data
                    }
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
}

```
---
**scenario2:** 
You have a list of 1000 tasks that need to be executed. The tasks are independent and can be executed in parallel. Write a program to execute all these tasks using the Executor Framework.
```
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class ExecuteTasks {
    private static final int NUM_THREADS = 10;

    public static void main(String[] args) {
        List<Runnable> tasks = new ArrayList<>();
        for (int i = 0; i < 1000; i++) {
            tasks.add(new Task(i));
        }

        ExecutorService executorService = Executors.newFixedThreadPool(NUM_THREADS);

        for (Runnable task : tasks) {
            executorService.submit(task);
        }

        executorService.shutdown();
    }

    private static class Task implements Runnable {
        private final int id;

        public Task(int id) {
            this.id = id;
        }

        @Override
        public void run() {
            System.out.println("Task " + id + " is running on thread " + Thread.currentThread().getName());
        }
    }
}

```
---
**scenario3:** 
You have a queue of 1000 tasks that need to be executed in order. Each task takes a random amount of time to execute. Write a program to execute all these tasks using the Executor Framework while maintaining the order.
```
import java.util.concurrent.*;

public class ExecuteTasksInOrder {
    private static final int NUM_THREADS = 10;
    private static final int NUM_TASKS = 1000;

    public static void main(String[] args) throws InterruptedException {
        ExecutorService executorService = Executors.newFixedThreadPool(NUM_THREADS);
        BlockingQueue<Future<Integer>> queue = new LinkedBlockingQueue<>();

        for (int i = 0; i < NUM_TASKS; i++) {
            Callable<Integer> task = new Task(i);
            Future<Integer> future = executorService.submit(task);
            queue.put(future);
        }

        executorService.shutdown();

        while (!queue.isEmpty()) {
            Future<Integer> future = queue.take();
            Integer result = future.get();
            System.out.println("Task " + result + " is done on thread " + Thread.currentThread().getName());
        }
    }

    private static class Task implements Callable<Integer> {
        private final int id;

        public Task(int id) {
            this.id = id;
        }

        @Override
        public Integer call() throws Exception {
            int sleepTime = (int) (Math.random() * 1000);
            Thread.sleep(sleepTime);
            System.out.println("Task " + id + " is running on thread " + Thread.currentThread().getName());
            return id;
        }
    }
}


```
---
**scenario4:** 
You have a list of tasks, and each task can be executed in parallel. However, you need to limit the number of threads used to execute these tasks to a fixed number, say 5. Write a program to execute these tasks using the Executor Framework, ensuring that no more than 5 tasks are executed in parallel.
```
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

public class LimitedConcurrencyExecutor {
    private static final int NUM_THREADS = 5;
    private static final int NUM_TASKS = 10;

    public static void main(String[] args) throws InterruptedException {
        ExecutorService executorService = Executors.newFixedThreadPool(NUM_THREADS);

        List<Task> tasks = new ArrayList<>();
        for (int i = 0; i < NUM_TASKS; i++) {
            tasks.add(new Task(i));
        }

        for (Task task : tasks) {
            executorService.execute(task);
        }

        executorService.shutdown();
        executorService.awaitTermination(Long.MAX_VALUE, TimeUnit.NANOSECONDS);
    }

    private static class Task implements Runnable {
        private final int id;

        public Task(int id) {
            this.id = id;
        }

        @Override
        public void run() {
            System.out.println("Task " + id + " started on thread " + Thread.currentThread().getName());
            try {
                Thread.sleep(1000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            System.out.println("Task " + id + " finished on thread " + Thread.currentThread().getName());
        }
    }
}


```
---
**scenario5:** 
You have a collection of 1000 URLs that need to be downloaded in parallel. However, you need to limit the number of concurrent downloads to 10. Write a program to download all these URLs using the Executor Framework, ensuring that no more than 10 downloads are done in parallel.
```
import java.io.BufferedInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Semaphore;

public class ConcurrentDownloadManager {
    private static final int NUM_DOWNLOADS = 1000;
    private static final int MAX_CONCURRENT_DOWNLOADS = 10;

    public static void main(String[] args) throws InterruptedException {
        ExecutorService executorService = Executors.newFixedThreadPool(MAX_CONCURRENT_DOWNLOADS);
        Semaphore semaphore = new Semaphore(MAX_CONCURRENT_DOWNLOADS);

        List<Runnable> tasks = new ArrayList<>();
        for (int i = 0; i < NUM_DOWNLOADS; i++) {
            tasks.add(new DownloadTask(i, semaphore));
        }

        for (Runnable task : tasks) {
            executorService.execute(task);
        }

        executorService.shutdown();
        while (!executorService.isTerminated()) {
            Thread.sleep(100);
        }
    }

    private static class DownloadTask implements Runnable {
        private final int id;
        private final Semaphore semaphore;

        public DownloadTask(int id, Semaphore semaphore) {
            this.id = id;
            this.semaphore = semaphore;
        }

        @Override
        public void run() {
            try {
                semaphore.acquire();
                System.out.println("Downloading file " + id + " on thread " + Thread.currentThread().getName());
                URL url = new URL("https://example.com/file" + id + ".txt");
                BufferedInputStream in = new BufferedInputStream(url.openStream());
                FileOutputStream fileOutputStream = new FileOutputStream("file" + id + ".txt");

                byte[] dataBuffer = new byte[1024];
                int bytesRead;
                while ((bytesRead = in.read(dataBuffer, 0, 1024)) != -1) {
                    fileOutputStream.write(dataBuffer, 0, bytesRead);
                }

                fileOutputStream.close();
                in.close();
                System.out.println("Download of file " + id + " completed on thread " + Thread.currentThread().getName());
            } catch (InterruptedException | IOException e) {
                e.printStackTrace();
            } finally {
                semaphore.release();
            }
        }
    }
}


```
