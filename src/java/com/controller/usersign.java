/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author asus
 */
public class usersign extends HttpServlet {

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
            out.println("<title>Servlet usersign</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet usersign at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

  

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try{
            //getting variables from the form
            String _uname=request.getParameter("uname");
            String _email=request.getParameter("email");
            String _psw=request.getParameter("psw");
            
            String sql="INSERT INTO user(user,email,password)VALUES(?,?,?)";
             Class.forName("com.mysql.jdbc.Driver");
             Connection conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/MyWeb","root","");
             
             PreparedStatement ps=conn.prepareStatement(sql);
               ps.setString(1, _uname);
                ps.setString(2, _email);
                ps.setString(3, _psw);
                
                ps.executeUpdate();
                 response.sendRedirect("welcomeUser.jsp");
             
        }
        catch(Exception e){
            PrintWriter out=response.getWriter();
           out.println("Failed, you  have a user account");
            
        }
            
            
            
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
