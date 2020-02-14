/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package evoting.controller;

import evoting.dao.VoteDao;
import evoting.dto.VoteDto;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author vishal
 */
public class AddVoteControllerServlet extends HttpServlet {

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
        System.out.println("Add Vote Controller Servlet");

        String userid = (String) session.getAttribute("userid");
        if (userid == null) {
            session.invalidate();
            response.sendRedirect("accessdenied.html");
            return;
        } else {

            try {
                boolean result;

                String cid = request.getParameter("candidateid");
                System.out.println("cid in adv" + cid);
                //if (cid != null) {
                String checkCid = VoteDao.getCandidateId(userid);

                if (checkCid != null) {

                    rd = request.getRequestDispatcher("votedenied.jsp");
                } else {

                    VoteDto vote = new VoteDto(cid, userid);
                    result = VoteDao.addVote(vote);
                    request.setAttribute("result", result);
                    rd = request.getRequestDispatcher("verifyvote.jsp");

                }
                //}
            } catch (Exception e) {
                System.out.println("Exception in Voting Controller.." + e);
                rd = request.getRequestDispatcher("showexception.jsp");
            } finally {
                rd.forward(request, response);
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
