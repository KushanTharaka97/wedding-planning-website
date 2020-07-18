/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller.adminalPanal;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;


/**
 *
 * @author asus
 */
public class adminDelete extends HttpServlet {

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
            out.println("<title>Servlet adminDelete</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet adminDelete at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        String k=request.getParameter("update");
          PrintWriter out=response.getWriter();
//        out.println("value Passes:"+k);
           String email=request.getParameter("update");
            
            try{
                 
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/MyWeb","root","root");
//                out.print("Sucess");
                
                String sql="DELETE FROM sp WHERE email='"+email.trim()+"'";
                PreparedStatement ps =conn.prepareStatement(sql);
                
                //ps.setString(1,email);
                
                
                ps.executeUpdate();
                
                response.sendRedirect("adminPanel/updatingOrDeleting.jsp");
                
                
            }catch(Exception e){
                out.println("Your Error Exception is :"+ e+"<br>+get helps from your website Developer");
            }
        
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
