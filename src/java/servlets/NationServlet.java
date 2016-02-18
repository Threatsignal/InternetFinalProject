/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import utils.DBUtilities;
import utils.Utilities;
import beans.ErrorMassage;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import beans.*;
import java.util.ArrayList;
/**
 *
 * @author Justin
 */
public class NationServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * @throws java.lang.ClassNotFoundException
     * @throws java.sql.SQLException
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        
        DBUtilities nationDB = DBUtilities.getInstance();

        ArrayList<NationValues> nationValues = new  ArrayList<NationValues>();
        ArrayList<PlayerValues> playersValues = new  ArrayList<PlayerValues>();
        ErrorMassage massage = new ErrorMassage();
        
        Utilities util = new Utilities();
              
        String nationId = request.getParameter("n");
        
        if(nationId == null){
            
            nationValues = nationDB.allNations();
            request.setAttribute("nations", nationValues);
            util.forwardRequest(request, response, "/WEB-INF/nations.jsp");
             
        }
        else if(nationDB.nationFound(nationId)){
            
            playersValues = nationDB.nationPlayers(nationId);
            request.setAttribute("players", playersValues);
            util.forwardRequest(request, response, "/WEB-INF/nations.jsp");
            
        }else{
            
             massage.setMsg("Sorry No results found !");
             request.setAttribute("ErrorMassage", massage);
             util.forwardRequest(request, response, "/WEB-INF/error.jsp");
             
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
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(PlayerServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(PlayerServlet.class.getName()).log(Level.SEVERE, null, ex);
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
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(PlayerServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(PlayerServlet.class.getName()).log(Level.SEVERE, null, ex);
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