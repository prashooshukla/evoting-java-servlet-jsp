/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package evoting.controller;

import evoting.dao.CandidateDao;
import evoting.dto.AddCandidateDto;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;
import org.apache.tomcat.util.http.fileupload.servlet.ServletRequestContext;

/**
 *
 * @author vishal
 */
public class UpdateNewCandidateControllerServlet extends HttpServlet {

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
            DiskFileItemFactory dif = new DiskFileItemFactory();

            ServletRequestContext srq = new ServletRequestContext(request);

            ServletFileUpload sfu = new ServletFileUpload(dif);

            List<FileItem> multiparts = sfu.parseRequest(srq);

            ArrayList<String> objValues = new ArrayList<>();

            InputStream fileContent = null;

            for (FileItem item : multiparts) {

                if (item.isFormField()) {

                    String fieldName = item.getFieldName();
                    String fieldValue = item.getString();
                    System.out.println(fieldName + ":" + fieldValue);
                    objValues.add(fieldValue);

                } else {
                    String fieldName = item.getFieldName();
                    String fileName = item.getName();
                    System.out.println(fieldName + ":" + fileName);
                    fileContent = item.getInputStream();
                    System.out.println("content:" + fileContent);
                    System.out.println(fileName);

                }

            }

            AddCandidateDto candidate = new AddCandidateDto(objValues.get(0), objValues.get(3), objValues.get(4), objValues.get(1), fileContent);
            boolean result = CandidateDao.updateCandidate(candidate);
            System.out.println("result in unc:"+result);
            if (result) {
                rd = request.getRequestDispatcher("success.jsp");
            } else {
                rd = request.getRequestDispatcher("failure.jsp");

            }

        } catch (Exception ex) {
            request.setAttribute("exception", ex);
            rd = request.getRequestDispatcher("showexception.jsp");
            ex.printStackTrace();
            System.out.println("exception :" + ex);
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
