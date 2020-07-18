
package MainServices.sevices;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.DriverManager;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

/**
 *
 * @author asus
 */
public class detailedView extends HttpServlet {

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
            out.println("<title>Servlet detailedView</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet detailedView at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String _email=request.getParameter("click");
        PrintWriter out = response.getWriter();
        out.print("email  :"+_email);
       out.println("<br>");
                    PreparedStatement stmt=null;
    
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/MyWeb","root","root");
                
                String sql="SELECT spname,bname,email,btype FROM sp WHERE email='"+_email.trim()+"'";
                   // out.print(sql);
                    stmt=conn.prepareStatement( sql); 
                     ResultSet rs=stmt.executeQuery(sql);
                     
                    while(rs.next()){ 
                        out.println("<div align=\"center\">");
                                             out.println("<table>");
                        
                         //category
                     
                    out.println(rs.getString("btype")); 
                     out.println("<br>");
                     
                     out.println("<td>");
                        //name of sp
                        out.print("The Service Provider's name:");
                     out.println(rs.getString("spname")); 
                      out.println("<br>");
                      
                      //Business name
                      out.print("Business Name:");
                     out.println(rs.getString("bname")); 
                      out.println("<br>");
                      
                      //email
                      out.print("Email of  service:");
                    out.println(rs.getString("email")); 
                     out.println("<br>");
                     
                                                 out.println("</table>");
                     
                     out.print("</div>");
                    }

            }
            catch(Exception e){
                
       out.print("Exception is  :  :"+e);
            }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
