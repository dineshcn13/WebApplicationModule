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
import javax.servlet.http.HttpSession;

/**
 *
 * @author DINESH
 */
public class register extends HttpServlet {

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
            String name = request.getParameter("fullname");
		String mob = request.getParameter("mob");
		String pass = request.getParameter("pass");
                String ad = request.getParameter("addr");
		String cpass = request.getParameter("cpass");
		int caid = Integer.parseInt(request.getParameter("id"));
		
		if(name.equals("")||mob.equals("")||pass.equals("")||cpass.equals("")||ad.equals(""))
		{
			request.getRequestDispatcher("registerone.jsp").include(request, response);
			out.println("<font color=red>PLEASE FILL ALL FIELDS!!</font>");
			
		}
                else if(!(mob.startsWith("9")||(mob.startsWith("8"))||(mob.startsWith("7")))||(mob.length()!=10)||(!mob.matches("[0-9]{10}")))
		{
			request.getRequestDispatcher("registerone.jsp").include(request, response);
			out.println("<font color=red>PLEASE ENTER MOBILE NUMBER IN CORRECT FORMAT!!</font>");
			
		}
                else if(!(pass.equals(cpass)))
		{
			request.getRequestDispatcher("registerone.jsp").include(request, response);
			out.println("<font color=red>PASSWORD YOU ENTERED IS INCORRECT!!</font>");
			
		}
		else
		{       
                        
                        Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/test","abc","123");
                        PreparedStatement ps=con.prepareStatement("insert into cashier_register values(?,?,?,?,?)");
                        ps.setInt(1,caid);
                        ps.setString(2,name);
                        ps.setString(3,mob);
                        ps.setString(4,ad);
                        ps.setString(5,pass);
                        ps.executeUpdate();
                        out.println("CASHIER ADDED SUCCESS!!");
			request.getRequestDispatcher("index.html").include(request, response);
		
		}
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
            Logger.getLogger(register.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(register.class.getName()).log(Level.SEVERE, null, ex);
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
