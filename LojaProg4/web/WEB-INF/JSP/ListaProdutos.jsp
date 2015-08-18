<%@page import="java.util.List"%>
<%@page import="br.pucpr.prog4.loja.models.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Lista de produtos</title>
<style type="text/css">
#título {
	font-family: Consolas, "Andale Mono", "Lucida Console", "Lucida Sans Typewriter", Monaco, "Courier New", monospace;
	font-size: 36px;
	font-weight: normal;
	color: #03F;
	text-align: right;
	position: static;
	height: 60px;
	top: 0px;
}
body {
	background-color: #E9E07A;
	font-size: 36;
	text-align: left;
	position: relative;
}
#menuLateral {
	position: static;
	height: auto;
	width: 20%;
	border: thin groove #03F;
}
#menuSuperior {
	border: thin groove #03F;
	position: static;
	height: 40px;
}
#listaItens {
	position: absolute;
	height: 188px;
	width: auto;
        left: 25%;
	top: 114px;
}
</style>
</head>

    <body>
    <div id="título">
      <p>Loja Virtual</p>
    </div>
    <span style="color: #000"></span><span style="font-size: 36"></span><span style="color: #000"></span>
    <div id="menuSuperior">Menu | Menu | Menu | Menu | Menu | Menu | Menu | Menu | Menu | Menu | Menu | </div>
    <div id="menuLateral">
      <ul>
        <li>Adicionar categorias.</li>
        <li>Adicionar categorias.</li>
        <li>Adicionar categorias.</li>
        <li>Adicionar categorias.</li>
        <li>Adicionar categorias.</li>
        <li>Adicionar categorias.</li>
        <li>Adicionar categorias.</li>
        <li>Adicionar categorias.</li>
        <li>Adicionar categorias.</li>
      </ul>
    </div>
    <div id="listaItens">
        <%
                  List<Produto> produtos;
                  produtos = (List<Produto>)request.getAttribute("produtos");
                  for(Produto produto : produtos){
                      %>
                        <%=produto.getNome()%>
                        <a href="produto-detalhe?id=<%=produto.getId()%>">
                            <img src="../imagens/0<%=produto.getId()%>.jpg" width="300px" height="300px" alt="Produto 1"/>
                        </a>
                        R$ <%=produto.getPreço()%>
                      <%
                  }
                %>
    </div>

</body>
</html>
