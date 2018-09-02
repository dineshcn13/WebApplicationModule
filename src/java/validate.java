/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author DINESH
 */
public class validate extends HttpServlet {

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
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String cid=request.getParameter("casid");
            String cpw=request.getParameter("psw");
            
            
            Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/test","abc","123");
                Statement st=con.createStatement();
                ResultSet rs=st.executeQuery("select * from cashier_register where cashier_id="+cid+" and cashier_password='"+cpw+"'");
                if(rs.next())
                {
                    HttpSession cas=request.getSession();
                    cas.setAttribute("crid",rs.getInt(1));
                    cas.setAttribute("crun",rs.getString(2));
                    cas.setAttribute("crmob",rs.getString(3));
                    out.println("<b>Welcome CASHIER !!!</b>[<b>D"+rs.getInt(1)+"</b>]--"+rs.getString(2));
                    out.println("<br>");
                    request.getRequestDispatcher("loginmain.html").include(request, response);
                    
                }
                
                else
                {
                    out.println("<b><font face=\"Garamond\" color=\"red\"><span style=\"background-color: yellow\">[ERROR]  Invalid Cus ID/Password</span></font></b>");
                    request.getRequestDispatcher("index.html").include(request, response);
                }
                out.close();
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(validate.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(validate.class.getName()).log(Level.SEVERE, null, ex);
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
