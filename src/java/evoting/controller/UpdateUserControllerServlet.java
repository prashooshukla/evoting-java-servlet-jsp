/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package evoting.controller;

import evoting.dao.UserDao;
import evoting.dto.UserDetails;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;
import org.apache.tomcat.util.http.fileupload.servlet.ServletRequestContext;

/**
 *
 * @author vishal
 */
public class UpdateUserControllerServlet extends HttpServlet {

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
        try {

            HttpSession session = request.getSession();
            System.out.println("Update User Controller Servlet");

            String userid = (String) session.getAttribute("userid");
            if (userid == null) {
                session.invalidate();
                response.sendRedirect("accessdenied.html");
                return;
            }

            String data = request.getParameter("data");
            if (data != null && data.equals("updateprofile")) {
                UserDetails userdetails = UserDao.getUserDetailsById(userid);
                request.setAttribute("result", userdetails);
                rd = request.getRequestDispatcher("updateuserdetails.jsp");
            } else {

                String uid = request.getParameter("uid");
                String vname = request.getParameter("vname");
                String address = request.getParameter("address");
                String city = request.getParameter("city");
                String email = request.getParameter("email");
                String phone = request.getParameter("phone");

                UserDetails user = new UserDetails();
                user.setUserid(uid);
                user.setUsername(vname);
                user.setAddress(address);
                user.setCity(city);
                user.setEmail(email);
                user.setMobile(Long.parseLong(phone));

                boolean result = UserDao.updateUser(user);
                System.out.println("result in unc:" + result);
                if (result) {
                    rd = request.getRequestDispatcher("success.jsp");
                } else {
                    rd = request.getRequestDispatcher("failure.jsp");

                }
            }
            }catch (Exception ex) {
            request.setAttribute("exception", ex);
            rd = request.getRequestDispatcher("showexception.jsp");
            ex.printStackTrace();
            System.out.println("exception :" + ex);
        }finally {
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
        protected void doGet
        (HttpServletRequest request, HttpServletResponse response)
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
        protected void doPost
        (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            processRequest(request, response);
        }

        /**
         * Returns a short description of the servlet.
         *
         * @return a String containing servlet description
         */
        @Override
        public String getServletInfo
        
            () {
        return "Short description";
        }// </editor-fold>

    }
