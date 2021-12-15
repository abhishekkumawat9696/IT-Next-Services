/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itnext.servlet;

import com.itnext.dao.ServiceRequestDao;
import com.itnext.entities.ServiceRequest;
import com.itnext.helper.connectionProvider;
import com.itnext.sendmail.ServiceConfirmation;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Dell
 */
@MultipartConfig
public class ServiceConfirmServlet extends HttpServlet {

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
           int id=Integer.parseInt(request.getParameter("id"));
           String nameTo=request.getParameter("nameTo");
            String emailTo=request.getParameter("emailTo");
            String serviceStatus=request.getParameter("service_status");
            String reply=request.getParameter("reply");
            
            out.println(nameTo);
            out.println(emailTo);
            out.println(reply);
             ServiceConfirmation sc= new ServiceConfirmation();
            boolean test = sc.sendReply(nameTo,emailTo,serviceStatus,reply);
            
            ServiceRequest sr=new ServiceRequest();
            sr.setStatus(serviceStatus);
            ServiceRequestDao dao=new ServiceRequestDao(connectionProvider.getConnection());
            
            if(test)
                {
                    out.println("done");
                    dao.saveServiceRequestUpdate(id,serviceStatus);
                    
                }
                else{
                    out.println("Error");
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
