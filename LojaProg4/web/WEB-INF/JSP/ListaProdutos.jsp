<%@page import="java.util.List"%>
<%@page import="br.pucpr.prog4.loja.models.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
<head>
<style>
body{
	color:#ababab;
	background-color: #232323;
}
#cabeçalho {
	display: block;
	background-color: #232323;
	margin-top: 0px;
	text-align: right;
	font-size: 85px;
	font-family:Impact, Haettenschweiler, "Franklin Gothic Bold", "Arial Black", sans-serif;
	height: auto;
}
#menu {
	display: block;
	background-color: #232323;
	padding-bottom: 10px;
	font-family:Impact, Haettenschweiler, "Franklin Gothic Bold", "Arial Black", sans-serif;
	height: 30px;
}
#menuLateral {
	float: left;
	display: block;
	background-color: #232323;
	padding: 10px 0;
	font-family:Impact, Haettenschweiler, "Franklin Gothic Bold", "Arial Black", sans-serif;
	height: auto;
	width: 15%;
	font-size: 20px;
}

ul.nav{
	list-style: none;
	margin: 0px;
	padding: 0px;
	border-top: 1px solid #666;
}

ul.nav li {
	border-bottom: 1px solid #666;
}

a, a:visited{
	text-decoration: none;
	color: #ffffff;
	padding: 5px 5px 5px 15px;
}

a:hover,a:active,a:focus{
	color: #cdcdcd;
}

#produtos{
	display: block;
	width: 80%;
	float: right;
	height: auto;
	background-color: #BBB;
	color: #000;
	border: 3px;
	border-style: solid;
	border-radius: 15px;
}
#prodCaixa{
    border: 2px;
    border-style: solid;
    position: relative;
    float: left;
    width: 325px;
    height: 350px;
    border-radius: 15px;
    margin: 10px;
    padding-left: 25px;
}
.prodClass{
    border: 1px;
    border-style: solid;
    border-radius: 15px;
    border-color: white;
    width: 300px;
    height: 300px;
}
#detalhes{
    width: 100%;
    height: 600px;
}
</style>
<meta charset="utf-8">
<title>Loja Virtual</title>
</head>

<body>
    <a href="lista"><header id="cabeçalho">
    	Loja Virtual
    </header>
    </a>
    <header id="menu">
    	asdasdasdasdasdasdasdasdasd
    </header>
    <div id="menuLateral">
    	<ul class="nav">
            <li><a href="#">Link um</a></li>
            <li><a href="#">Link dois</a></li>
            <li><a href="#">Link três</a></li>
            <li><a href="#">Link quatro</a></li>
    	</ul>
    </div>
	<div id="produtos">
	    <c:forEach var="produto" items="${produtos}">
                        <div id="prodCaixa">
                            <c:out value="${produto.nome}" />
                            <br />
                        R$ <c:out value="${produto.preço}" />
                        <a target="_self" onclick="load_home('produto-detalhe?id=<c:out value="${produto.id}"/>')" href="produto-detalhe?id=<c:out value="${produto.id}"/>">
                            <img class="prodClass" src="../imagens/0<c:out value="${produto.id}" />.jpg" alt="Produto 1"/>
                        </a>
                        </div>
            </c:forEach>
    </div>
</body>
</html>
