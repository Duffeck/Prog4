/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.pucpr.prog4.loja.controller;

import br.pucpr.prog4.loja.models.Cliente;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author lucas.duffeck
 */
public class ClienteServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        RequestDispatcher rd;
        rd = request.getRequestDispatcher("/WEB-INF/JSP/cadastroCliente.jsp");
        rd.forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Cliente cliente = new Cliente();
        
        cliente.setTipo(request.getParameter("tipo"));
        cliente.setNome(request.getParameter("nome"));
        String cpf = request.getParameter("cpf");
        long CPF2 = Long.parseLong(cpf);
        cliente.setCPF(CPF2);
        cliente.setComentario(request.getParameter("comentario"));
        cliente.setSexo(request.getParameter("sexo"));
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        java.util.Date dataAux;
        try{
            dataAux = sdf.parse(request.getParameter("datanasc"));
            cliente.setDataNasc(dataAux);
        }catch(ParseException e){
            
        }
        cliente.getCPF();
    }

}
