/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package evoting.controller;

import evoting.dao.UserDao;
import evoting.dto.UserDetails;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author prashoo
 */
public class DeleteUserControllerServlet extends HttpServlet {

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
        RequestDispatcher rd = null;
        HttpSession session = request.getSession();
        String userid = (String) session.getAttribute("userid");
        String data = request.getParameter("data");
        String user_id = request.getParameter("uid");
        if (userid == null) {
            session.invalidate();
            response.sendRedirect("accessdenied.html");
            return;

        }
        try {
            if (data != null && data.equals("uid")) {

                ArrayList<String> userId = UserDao.getUserId();
                System.out.println("ducs:"+userId);
                request.setAttribute("result", "userId");
                request.setAttribute("userId", userId);
            
            }else if(user_id!=null)
            {
                System.out.println("uid"+user_id);
                boolean result = UserDao.deleteUserById(user_id);
                System.out.println("result"+result);
                request.setAttribute("result", "deleteresponse");
                request.setAttribute("deleteresponse", result);
 
            }
            else {
                System.out.println("userId:" + data);
                UserDetails userDetails = UserDao.getUserDetailsById(data);
                request.setAttribute("result", "userDetails");
                request.setAttribute("userDetails", userDetails);

            }
            rd = request.getRequestDispatcher("userdeleteresponse.jsp");

        } catch (Exception e) {
            request.setAttribute("exception", e);
            rd = request.getRequestDispatcher("showexception.jsp");
            e.printStackTrace();
            System.out.println(e);
        } finally {
            rd.forward(request, response);

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
        processRequest(request, response);
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
        processRequest(request, response);
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
