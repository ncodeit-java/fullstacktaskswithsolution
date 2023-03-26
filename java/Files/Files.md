### :camel: java examples
---

#### Task1: Write a Java program to get a list of all file/directory names from the given specified folder.

```
import java.io.File;

public class Exercise1 {
     public static void main(String a[])
     {
        File file = new File("D:/file");
        String[] fileList = file.list();
        for(String name:fileList){
            System.out.println(name);
        }
    }
}


```

#### Task2: Write a Java program to get specific files by extensions from a specified folder.

```
import java.io.File;
import java.io.FilenameFilter;
public class Exercise2 {
       public static void main(String a[]){
        File file = new File("D:/file");
           String[] list = file.list(new FilenameFilter() {
           @Override
            public boolean accept(File dir, String name) {
             if(name.toLowerCase().endsWith(".py")){
                    return true;
                } else {
                    return false;
                }
            }
        });
        for(String f:list){
            System.out.println(f);
        }
    }
}


```

#### Task3: Write a Java program to check if a file or directory specified by pathname exists or not. 

```
import java.io.File;
public class Exercise3 {
       public static void main(String[] args) {
        // Create a File object
        File my_file_dir = new File("D:/file/test.txt");
         if (my_file_dir.exists()) 
           {
            System.out.println("The directory or file exists.\n");
           } 
         else
          {
            System.out.println("The directory or file does not exist.\n");
          }
       }
  }

```

#### Task4: Write a Java program to check if a file or directory has read and write permission.

```
import java.io.File;
public class Exercise4 {
       public static void main(String[] args) {
        // Create a File object
        File my_file_dir = new File("D:/file/test.txt");
         if (my_file_dir.canWrite()) 
           {
            System.out.println(my_file_dir.getAbsolutePath() + " can write.\n");
           } 
         else
          {
            System.out.println(my_file_dir.getAbsolutePath() + " cannot write.\n");
          }
         if (my_file_dir.canRead()) 
           {
            System.out.println(my_file_dir.getAbsolutePath() + " can read.\n");
           } 
         else
          {
            System.out.println(my_file_dir.getAbsolutePath() + " cannot read.\n");
          }  
      }
  }
  
```

#### Task5: Write a Java program to check if given pathname is a directory or a file.
	
```
import java.io.File;
public class Exercise5 {
       public static void main(String[] args) {
        // Create a File object
        File my_file_dir = new File("D:/file/test.txt");
         if (my_file_dir.isDirectory()) 
           {
            System.out.println(my_file_dir.getAbsolutePath() + " is a directory.\n");
           } 
         else
          {
            System.out.println(my_file_dir.getAbsolutePath() + " is not a directory.\n");
          }
         if (my_file_dir.isFile()) 
           {
            System.out.println(my_file_dir.getAbsolutePath() + " is a file.\n");
           } 
         else
          {
            System.out.println(my_file_dir.getAbsolutePath() + " is not a file.\n");
          }  
      }
  }


```

#### Task6: Write Java program to read input from java console.

```
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

 public class Exercise6 {
  public static void main(String[] args) throws IOException
  {
    BufferedReader R = new BufferedReader(new InputStreamReader(System.in));
    System.out.print("Input your name: ");
    String name = R.readLine();
    System.out.println("Your name is: " + name);
  }
}


```

#### Task7: Write a Java program to get file size in bytes, kb, mb. Use length() method of File and apply formaula to get the result in kb, mb

```
import java.io.File;
 
public class Exercise7 {
 
      public static void main(String[] args) 
      {
        File file = new File("D:/file/test.txt");
        if(file.exists())
        {
        System.out.println(filesize_in_Bytes(file));
        System.out.println(filesize_in_kiloBytes(file));
        System.out.println(filesize_in_megaBytes(file));
        }
        else 
        System.out.println("File doesn't exist");
         
    }
 
    private static String filesize_in_megaBytes(File file) {
        return (double) file.length()/(1024*1024)+" mb";
    }
 
    private static String filesize_in_kiloBytes(File file) {
        return (double) file.length()/1024+"  kb";
    }
 
    private static String filesize_in_Bytes(File file) {
        return file.length()+" bytes";
    }
 }
 
```

#### Task8: Write a Java program to read contents from a file into byte array and handle any exceptions related to file

```
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
 
// Reading contents from a file into byte array.
public class Exercise8 { 
  public static void main(String a[]){       
        String file_name = "D:/file/test.txt";
        InputStream fins = null;
        try {
            fins = new FileInputStream(file_name);
            byte file_content[] = new byte[2*1024];
            int read_count = 0;
            while((read_count = fins.read(file_content)) > 0){
                System.out.println(new String(file_content, 0, read_count-1));
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try{
                if(fins != null) fins.close();
            } catch(Exception ex){
                 
            }
        }
    }
}

```

#### Task9: Write a Java program to read a file content line by line.

```
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
 
public class Exercise9 {
 
    public static void main(String a[]){
        BufferedReader br = null;
        String strLine = "";
        try {
            br = new BufferedReader( new FileReader("D:/file/test.txt"));
            while( (strLine = br.readLine()) != null){
                System.out.println(strLine);
            }
            br.close();
        } catch (FileNotFoundException e) {
            System.err.println("File not found");
        } catch (IOException e) {
            System.err.println("Unable to read the file.");
        }
     }
}

```

#### Task10: Write a Java program to append text to an existing file and print the data to the console.

```
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.FileWriter;
 
public class Exercise10 {
     public static void main(String a[]){
        StringBuilder sb = new StringBuilder();
        String strLine = "";
        try
          {
             String filename= "D:/file/test.txt";
             FileWriter fw = new FileWriter(filename,true); 
             //appends the string to the file
             fw.write("Java Exercises\n");
             fw.close();
             BufferedReader br = new BufferedReader(new FileReader("D:/file/test.txt"));
             //read the file content
             while (strLine != null)
             {
                sb.append(strLine);
                sb.append(System.lineSeparator());
                strLine = br.readLine();
                System.out.println(strLine);
            }
             br.close();
           }
           catch(IOException ioe)
           {
            System.err.println("IOException: " + ioe.getMessage());
           }
        }
  }


```