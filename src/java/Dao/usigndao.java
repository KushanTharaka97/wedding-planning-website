/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.*;

/**
 *
 * @author asus
 */
public class usigndao {
 String  url="jdbc:mysql://localhost:3306/MyWeb";
 String username="root";
 String password="";
 
 public void input(String _uname,String _email,String _psw)
         throws Exception{
     Class.forName("com.mysql.jdbc.Driver");
     Connection conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/MyWeb","root","");
     
     String quary="INSERT INTO user(user,email,password)VALUES(?,?,?)";
      PreparedStatement st=conn.prepareStatement(quary);
      
      
      
      st.setString(1, _uname);
      st.setString(2, _email);
      st.setString(3, _psw);
      
       st.executeUpdate();
    
     
    
      
 }
  
 public String getServeletInfo(){

    return "short description";

}
}
