package br.pucpr.prog4.loja.controller;

import br.pucpr.prog4.loja.models.Produto;
import br.pucpr.prog4.loja.models.ProdutoManagerImpl;
import java.util.List;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ProdutoDetalheServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

            ProdutoManagerImpl pm = new ProdutoManagerImpl();
            int id = Integer.parseInt(request.getParameter("id"));

            Produto produto = pm.obterPorId(id);
            

            request.setAttribute("produto", produto);
            RequestDispatcher rd;
            rd = request.getRequestDispatcher("/WEB-INF/JSP/detalhe.jsp");
            rd.forward(request, response);
    }

}
