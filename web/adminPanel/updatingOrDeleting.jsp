<%-- 
    Document   : updatingOrDeleting
    Created on : Jan 13, 2019, 9:15:32 PM
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
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
            <link rel="stylesheet" type="text/css" href="../css/cssForRequestDetailsTables.css">
        <title>Requests from Services Providers</title>
    </head>
    <body bgcolor="#ffe4e1">
    <marquee> <h1 align="center">Requests from Services Providers!</h1>  </marquee>
        
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
                    <th><h3>updateOrDelete</h3></td>
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
                       <div class="w3-container" align="center"> <form method="POST" action="../adminDelete">
                            <input type="hidden" name="update" value="<%out.println(rs.getString("email")); %>">
                            <input type="submit" name="submit" value="delete" ID="button" class="w3-button w3-ripple w3-red">
                                                  </form>
                            <br>
                             <a href="adminUpdate.jsp">
                                  <button class="w3-button w3-ripple w3-yellow">updating</button>
                            </a>
                       </div>
                    </td>
                </tr>
                
               
      
                
                <% }%>

            </table>
                
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
