<%-- 
    Document   : requestDisplay
    Created on : Dec 25, 2018, 1:02:41 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
           #button:active{
                                background:olive;
                            }
                            
            #button:focus{
                            background:olive;
                        }                
</style>
            
            <link rel="stylesheet" type="text/css" href="css/cssForRequestDetailsTables.css">
        <title>Requests from Services Providers</title>
    </head>
    <body bgcolor="#ffe4e1">
        <h1 align="center">Requests from Services Providers!</h1>
        
        <%@ page import="java.sql.ResultSet" %>
        <%@ page import="java.sql.Statement" %>
        <%@ page import="java.sql.Connection" %>
        <%@ page import="java.sql.DriverManager" %>
        <%@page import="java.sql.*" %>
        
   
            
            <table border="2" align="center" class="container">
                <tr bgcolor="#98fb98">
                    <th><h1>service Provider Name</h1></th>
                    <th><h1>Service Provider Business Name</h1></th>
                    <th><h1>Service Provider email</h1></th>
                    <th><h1>Service Provider Business Type</h1></th>
                    <th>Aceptence</td>
                </tr>
                <%
                    try{
                    //Creating database connection in the .jsp page
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/MyWeb","root","root");
                    String sql="SELECT * FROM sp WHERE ID!='1'";
                    Statement stmt=conn.createStatement();
                    ResultSet rs=stmt.executeQuery(sql);
                    while(rs.next()){

                %>
                
                <tr>
                    <td><%out.println(rs.getString("spname")); %></td>
                    <td><%out.println(rs.getString("bname")); %></td>
                    <td><%out.println(rs.getString("email")); %></td>
                    <td><%out.println(rs.getString("btype")); %></td>
                    <td>
                        <form method="POST" action="acceptUser">
                            <input type="hidden" name="update" value="<%out.println(rs.getString("email")); %>">
                            <input type="submit" name="submit" value="submit" ID="button" >
                        </form>
                    </td>
                </tr>
                
               
      
                
                <% }%>

            </table>
    <marquee>
                <div align="center">
                    <a >
                        <img src="img/services/money.jpg" style="border-radius: 100%;" width="30%" height="20%">
                    </a>
                     <a>
                        <img src="img/mainPage/img5.jpg" style="border-radius: 100%;" width="30%" height="20%">
                    </a>
                    
                    
                </div>
     </marquee>           
                <% 
                    rs.close();
                    stmt.close();
                    conn.close();
                    }
                            catch(Exception e)
                            {
                            e.printStackTrace();
                            }

                    
                %>
     
    </body>
</html>
