<%@page import="br.pucpr.prog4.loja.models.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <% Produto produto;
            produto = (Produto)request.getAttribute("produto");
        %>
        Produto: <%=produto.getNome()%>
        Preço: <%=produto.getPreço()%>
        <img src="../imagens/0<%=produto.getId()%>.jpg" alt=""/> 
    </body>
</html>
