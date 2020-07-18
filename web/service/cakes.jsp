<%-- 
    Document   : phto
    Created on : Dec 27, 2018, 2:38:41 AM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Wedding Cakes Providers</title>
    </head>
    <body background="../img/services/cakes.jpg"></body>
          <jsp:include page="../header.jsp" />
         
         <%@ page import="java.sql.ResultSet" %>
        <%@ page import="java.sql.Statement" %>
        <%@ page import="java.sql.Connection" %>
        <%@ page import="java.sql.DriverManager" %>
        <%@page import="java.sql.*" %>
   
        
       
       
        
         <h1 align="center">Wedding Cakes Providers</h1>
        
         <table border="2" align="center">
                <tr bgcolor="#00FF00">

                    <td>Service Provider Business Name</td>
                    <td>Service Provider email</td>
                    
                </tr>
                
         <%
                    try{
                    //Creating database connection in the .jsp page
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/MyWeb","root","root");
                    
                    
                    String sql="SELECT bname,email FROM sp WHERE btype='WeddingCakes' " ;
                    
                    Statement stmt=conn.createStatement();
                    ResultSet rs=stmt.executeQuery(sql);
                    while(rs.next()){

                %>
               
                 <tr>
                 <form method="GET" action="../detailedView">
                    <td align="center"><%out.println(rs.getString("bname")); %></td>
                    <td align="center"><%out.println(rs.getString("email")); %></td>
                    <td>     
                       
                        <input type="hidden" name="click" value="<%out.println(rs.getString("email"));%>" >
                           
                                
                       <%
                            Cookie spemail=new Cookie("abc",rs.getString("bname"));
                            spemail.setMaxAge(60*60*24);
                            response.addCookie(spemail);
                        %>
                        
                        <input type="submit" name="submit" value="View More-> ">
                          </form>
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
