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
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.jboss.weld.context.http.Http;

/**
 *
 * @author asus
 */
public class login1 extends HttpServlet {

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
            out.println("<title>Servlet login1</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet login1 at " + request.getContextPath() + "</h1>");
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
            String dbemail1=null;
            String dbpass1=null;
            String dbname =null;
            String dbname1=null;
            
            
            String sql="SELECT * FROM sp WHERE email=? AND psw=?";
            String sql1="SELECT * FROM user WHERE email=? AND password=?";
            
            //MySql connection
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/MyWeb","root","");
            
            //Prepared ststement for the servise provider
            PreparedStatement ps=conn.prepareStatement(sql);
            ps.setString(1,_email);
            ps.setString(2,_psw);
            ResultSet rs=ps.executeQuery();
            
            //Prepared stttement for the user table
            PreparedStatement ps1=conn.prepareStatement(sql1);
            ps1.setString(1, _email);
            ps1.setString(2,_psw);
            ResultSet rs1=ps1.executeQuery();
            
            while(rs.next()){
                dbemail=rs.getString("email");
                dbpass=rs.getString("psw");
                dbname=rs.getString("spname");
            }
            while(rs1.next()){
                dbemail1=rs1.getString("email");
                dbpass1=rs1.getString("password");
                dbname1=rs1.getString("user");
            }
            if(_email.equals(dbemail)&&_psw.equals(dbpass)){
                //service provider set;
                
//                 PrintWriter out=response.getWriter();
//                out.println("Result:Succes");
//                HttpSession session=request.getSession();
//                session.setAttribute("spname",dbname);

                Cookie userCookie = new Cookie("name", "value");
                userCookie.setMaxAge(60*60*24*365); //Store cookie for 1 year
                response.addCookie(userCookie);

                response.sendRedirect("WelcomeServiceProvider.jsp");
                
            }else if(_email.equals("adminalHead@gmail.com")&&_psw.equals("adminalHead")){
             response.sendRedirect("requestDisplay.jsp");
            }else if(_email.equals(dbemail1)&&_psw.equals(dbpass1)){
                 //User session set ;
                 
                  HttpSession session=request.getSession();
                session.setAttribute("user",dbname1);
                session.setMaxInactiveInterval(30*60);
                
                
                response.sendRedirect("welcomeUser.jsp");
            }
            else{
                
//                request.setAttribute("message","Account is Invaid");
//                request.getRequestDispatcher("form.jsp").forward(request,response);
                  response.sendRedirect("loginErrorPage.jsp");
//                PrintWriter out=response.getWriter();
//                out.println("You have not succesfully  logged");
            }
            
        }catch(Exception e){
             PrintWriter out=response.getWriter();
                out.println("You have Exception e: "+e);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
