
package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.http.HttpSession;


/**
 *
 * @author asus
 */
public class login extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet login</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet login at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try{
            String _email=request.getParameter("email");
            String _psw=request.getParameter("psw");
            
            //local variables for checking
            String dbemail=null;
            String dbpass=null;
            String dbname=null;
            
            
            String sql="SELECT * FROM user WHERE email=? AND password=?";
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/MyWeb","root","");
            
            PreparedStatement ps=conn.prepareStatement(sql);
            ps.setString(1,_email);
            ps.setString(2,_psw);
            ResultSet rs=ps.executeQuery();
            
            while(rs.next()){
                dbemail=rs.getString("email");
                dbpass=rs.getString("password");
                dbname=rs.getString("user");
                
            }
            if(_email.equals(dbemail)&&_psw.equals(dbpass)){
                 response.sendRedirect("welcomeUser.jsp");
                 HttpSession session = request.getSession();
                 session.setAttribute("user",dbname);
//                 response.sendRedirect("welcomeUser.jpg");
                 
            }else{
                PrintWriter out=response.getWriter();
                out.println("You have not succesfully  logged");
            }
            
        }catch(Exception e){
             PrintWriter out=response.getWriter();
                out.println("You have Exception e: "+e);
        }
        
        
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
