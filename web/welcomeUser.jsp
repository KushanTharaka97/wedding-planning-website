<%-- 
    Document   : welcomeUser
    Created on : Dec 23, 2018, 6:04:31 PM
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
       <jsp:include page="header.jsp" />
        
       <div>        <a href="services.jsp"> <img src="img/welcome.jpg" align="center"></a>  </div>

       <div>
         <h1 align="center">Welcome New User :${sessionScope.user} </h1>
       </div>
        
    </body>
</html>
