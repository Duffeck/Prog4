package br.pucpr.prog4.loja.controller;

import br.pucpr.prog4.loja.models.*;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ProdutoListaServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            IProdutoManager manager = new ProdutoManagerImpl();
            List<Produto> produtos;
            produtos = manager.obterTodos();

            request.setAttribute("produtos", produtos);
            RequestDispatcher rd;
            rd = request.getRequestDispatcher("/WEB-INF/JSP/ListaProdutos.jsp");
            rd.forward(request, response);
    }
}
