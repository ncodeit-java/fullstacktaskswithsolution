### :camel: Servlet examples
---

#### Task1: Write a servlet program to print the current date and time.

```
import java.io.*;
import javax.servlet.*;

@WebServlet("/DateServlet")
public class DateServlet extends HttpServlet
{
     
     public void doGet(ServletRequest req, ServletResponse res) throws IOException, ServletException
     {
          //set response content type
          res.setContentType("text/html");
          //get stream obj
          PrintWriter pw = res.getWriter();
          //write req processing logic
          java.util.Date date = new java.util.Date();
          pw.println("<h2>"+"Current Date & Time: " +date.toString()+"</h2>");
          //close stream object
          pw.close();
     }
}

```

#### Task2: Write a servlet program to capture the values of User Registration form using doGet method

```
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>

<h1> User Registration Form</h1>
 <form action="" method="post">
  First Name: <input type="text" name="firstName">
  <br> <br> 
  
  Last Name: <input type="text" name="lastName">
  <br> <br> 
  
  Email ID: <input type="email" name="emailId">
  <br> <br> 
  
  Password: <input type="password" name="password"><br>
  
  <br> 
  <input type="submit" value="register">
 </form>
</body>
</html>

```

```
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/userRegistrationServlet")
public class UserRegistrationServlet extends HttpServlet {

    private static final long serialVersionUID = 1 L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String firstName = req.getParameter("firstName");
        String lastName = req.getParameter("lastName");
        String emailId = req.getParameter("emailId");
        String password = req.getParameter("password");

        resp.setContentType("text/html");
        PrintWriter printWriter = resp.getWriter();
        printWriter.print("<html>");
        printWriter.print("<body>");
        printWriter.print("<h1>User Resistration Form Data</h1>");
        printWriter.print("<p> firstName :: " + firstName + "</p>");
        printWriter.print("<p> lastName :: " + firstName + "</p>");
        printWriter.print("<p> firstName :: " + firstName + "</p>");
        printWriter.print("<p> firstName :: " + firstName + "</p>");
        printWriter.print("</body>");
        printWriter.print("</html>");
        printWriter.close();

        System.out.println("firstName :: " + firstName);
        System.out.println("lastName :: " + lastName);
        System.out.println("emailId :: " + emailId);
        System.out.println("password :: " + password);
    }
}

```

#### Task3: Write a servlet program to capture the values of Student Registration form using doPost method

```
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>

<h1> Student Registration Form</h1>
 <form action="" method="post">
  First Name: <input type="text" name="firstName">
  <br> <br> 
  
  Last Name: <input type="text" name="lastName">
  <br> <br> 
  
  Email ID: <input type="email" name="emailId">
  <br> <br> 
  
  Password: <input type="password" name="password"><br>
  
  <br> 
  <input type="submit" value="register">
 </form>
</body>
</html>

```

```
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/studentRegistrationServlet")
public class studentRegistrationServlet extends HttpServlet {

    private static final long serialVersionUID = 1 L;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String firstName = req.getParameter("firstName");
        String lastName = req.getParameter("lastName");
        String emailId = req.getParameter("emailId");
        String password = req.getParameter("password");

        resp.setContentType("text/html");
        PrintWriter printWriter = resp.getWriter();
        printWriter.print("<html>");
        printWriter.print("<body>");
        printWriter.print("<h1>Student Resistration Form Data</h1>");
        printWriter.print("<p> firstName :: " + firstName + "</p>");
        printWriter.print("<p> lastName :: " + firstName + "</p>");
        printWriter.print("<p> firstName :: " + firstName + "</p>");
        printWriter.print("<p> firstName :: " + firstName + "</p>");
        printWriter.print("</body>");
        printWriter.print("</html>");
        printWriter.close();

        System.out.println("firstName :: " + firstName);
        System.out.println("lastName :: " + lastName);
        System.out.println("emailId :: " + emailId);
        System.out.println("password :: " + password);
    }
}

```

#### Task4: Create a servlet program to read the webinitparam("customerSupportEmail","CustomerCare@NcodeIT.com")  

```
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(
        value = "/example",
        initParams = {
                @WebInitParam(name = "email", value = "webmaster@domain.com", description = "Email from webmaster"),
                @WebInitParam(name = "phone", value = "xxxx/xx.xx.xx", description = "Phone webmaster")
        },
        description = "Servlet 3 initialisation parameter annotation example: @WebInitParam")
public class ExampleServlet extends HttpServlet{

    private String email;


    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		email=getServletConfig().getInitParameter("customerSupportEmail");
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        out.write("<h2>Servlet initialisation parameter annotation example: @WebInitParam</h2>");
        out.write("<p><strong>E-mail: </strong>" + email + "</p>");
    }

}
```

#### Task5: Create a Filter to get username and password from headers, validate the user and forward to WelcomeServlet and print welcome username

```
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

/**
 * Servlet Filter implementation class RequestLoggingFilter
 */
@WebFilter("/*")
public class AuthenticationFilter implements Filter {


	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		boolean authResult=false;
		HttpServletRequest req = (HttpServletRequest) request;
		
		String userName= req.getHeader("userName");
		String password= req.getHeader("password");
		
		authResult=userName.equals(userName) && password.equals(password);
		
		if(authResult){
			chain.doFilter(request, response);
		}
	}

	public void destroy() {

	}

}

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/welcomeServlet")
public class WelcomeServlet extends HttpServlet {

    private static final long serialVersionUID = 1 L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String userName= req.getHeader("userName");

        resp.setContentType("text/html");
        PrintWriter printWriter = resp.getWriter();
        printWriter.print("<html>");
        printWriter.print("<body>");
        printWriter.print("<h1>Welcome "+userName+"</h1>");
        printWriter.print("</body>");
        printWriter.print("</html>");
        printWriter.close();

    }
}

```

#### Task6: Create a servlet program to forward the SuccessServlet if username and password validation is succeed in Login Servlet and forward to FailureServlet if validation fails
```
<!DOCTYPE html>
<html>
<head>
 <meta charset="ISO-8859-1">
 <title>Insert title here</title>
</head>
<body>
 <form action="servlet1" method="post"> Name:
  <input type="text" name="userName" />
  <br/> Password:
  <input type="password" name="userPass" />
  <br/>
  <input type="submit" value="login" /> </form>
</body>
</html>

```

```
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

@WebServlet("/loginServlet")
public class Login extends HttpServlet
{
    public void doPost (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        response.setContentType ("text/html");
        PrintWriter out = response.getWriter ();
        String n = request.getParameter ("userName");
        String p = request.getParameter ("userPass");
        if (p.equals ("servlet"))
        {
         RequestDispatcher rd = request.getRequestDispatcher ("successServlet");
         rd.forward (request, response);
        }
        else
        {
         out.print ("Sorry UserName or Password Error!");
         RequestDispatcher rd = request.getRequestDispatcher ("/index.html");
         rd.include (request, response);
        }
    }
}

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

@WebServlet("/successServlet")
public class SuccessServlet extends HttpServlet
{
    public void doPost (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        response.setContentType ("text/html");
        PrintWriter out = response.getWriter ();
        String n = request.getParameter ("userName");
        out.print ("Welcome " + n);
    }
}

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

@WebServlet("/failureServlet")
public class FailureServlet extends HttpServlet
{
    public void doPost (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        response.setContentType ("text/html");
        PrintWriter out = response.getWriter ();
        out.print ("Incorrect username or password ");
    }
}
```

