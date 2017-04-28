/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import Entidades.Pessoa;
import daos.DAOEspecifico;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author mathe
 */
@WebServlet(name = "NovoServlet", urlPatterns = {"/NovoServlet"})
public class NovoServlet extends HttpServlet {

    List<Pessoa> lista = new ArrayList<>();
    DAOEspecifico controle = new DAOEspecifico();
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
            out.println("<title>Servlet NovoServlet</title>");
            out.println("</head>");
            out.println("<body>");

            lista = controle.list();
            out.println("<p>" + lista + "</p>");
            

            out.println("<h1>Servlet NovoServlet at " + request.getContextPath() + "</h1>");
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
            Pessoa pessoa = new Pessoa();
        String nome = request.getParameter("nome");
        int contato = Integer.valueOf(request.getParameter("contato"));
        String rua = request.getParameter("rua");
        String bairro = request.getParameter("bairro");
        String numero = (request.getParameter("numero"));
        String complemento = request.getParameter("complemento");
        String login = request.getParameter("login");
        String senha = request.getParameter("senha");
        
        pessoa.setNome(nome);
        pessoa.setContato(contato);
        pessoa.setBairro(bairro);
        pessoa.setLogin(login);
        pessoa.setRua(rua);
        pessoa.setNumero(numero);
        pessoa.setComplemento(complemento);
        pessoa.setSenha(senha);
        controle.inserir(pessoa);
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
