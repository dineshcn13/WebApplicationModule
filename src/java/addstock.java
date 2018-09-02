/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author DINESH
 */
public class addstock extends HttpServlet {

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
                    
        try {
               String a=request.getParameter("prname");
               String b=request.getParameter("dealer");
               String j=request.getParameter("dealermob");
               int c=Integer.parseInt(request.getParameter("pmrp"));
               double d=Double.parseDouble(request.getParameter("psell"));
               int e=Integer.parseInt(request.getParameter("hcode"));
               double f=Double.parseDouble(request.getParameter("fgst"));
               int g=Integer.parseInt(request.getParameter("quan"));
               int h=Integer.parseInt(request.getParameter("nstock"));
               Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/test","abc","123");
               PreparedStatement ps=con.prepareStatement("insert into item values(?,?,?,?,?,?,?,?,?)");
               ps.setString(1,a);
               ps.setInt(2,e);
               ps.setInt(3,c);
               ps.setInt(4,h);
               ps.setDouble(5,d);
               ps.setInt(7,g);
               ps.setDouble(6,f);
               ps.setString(8,b);
               ps.setString(9,j);
               ps.executeUpdate();
            } catch (Exception ex) {
                
            }
            
                out.println("PRODUCT ADDED SUCCESSFULLY!!");
                request.getRequestDispatcher("addviewstock.jsp").include(request, response);
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
            Logger.getLogger(addstock.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(addstock.class.getName()).log(Level.SEVERE, null, ex);
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
