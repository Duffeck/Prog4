<%@page import="java.util.List"%>
<%@page import="br.pucpr.prog4.loja.models.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Listaaaaaaaaaaaaaaaaaaaaaa!</h1>
        <div>
            <%
              List<Produto> produtos;
              produtos = (List<Produto>)request.getAttribute("produto");
              for(Produto produto : produtos){
                  %>
                    <p><%=produto.getNome()%></p>
                    <a href="produto-detalhe?id=<%=produto.getId()%>">
                    <img src="../../imagens/0<%=produto.getId()%>.jpg" alt="Produto 1"/>
            </a>
            <p>R$ <%=produto.getPreço()%></p>
                  <%
              }
            %>
        </div>
    </body>
</html>
