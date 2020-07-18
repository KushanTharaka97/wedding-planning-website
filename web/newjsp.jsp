<%-- 
    Document   : newjsp
    Created on : Dec 24, 2018, 9:31:16 AM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <form action="login1" method="POST">
    <label for="fname">email</label>
    <input type="text"  name="email" placeholder="Your registered email...">
    <br><br>
    <label >Password</label><br>
    <input type="password"  name="psw" placeholder="Your account password...">
    <br><br>
    <input type="submit" value="Submit">
  </form>
    </body>
</html>
