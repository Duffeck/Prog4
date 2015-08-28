<%-- 
    Document   : cadastroCliente
    Created on : 28/08/2015, 18:18:04
    Author     : lucas.duffeck
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <h1>Meu Cadastro</h1>
            <form action="cadastro" method="POST">
                    <input type="radio" name="tipo" value="fisico" /><label for="fisico">Pessoa Física</label>
                    <input type="radio" name="tipo" value="juridico" /><label for="juridico">Pessoa Jurídica</label>
                    <label for="nome">Nome Completo:</label><input type="text" name="nome" />
                    <label for="cpf">CPF:</label><input type="text" name="cpf" />
                    <label for="datanasc">Data Nascimento:</label><input type="date" name="datanasc" />
                    <label for="sexo">Sexo:</label>
                    <select name="sexo" id="Sexo">
                        <option value="Selecione">Selecione</option>
                        <option value="M">Masculino</option>
                        <option value="F">Feminino</option>
                    </select>
                    <label for="comentario">Comentário:</label>
                    <textarea name="comentario" width="30" height="5" ></textarea>
                    <input type="submit" value="salvar" />
            </form>
    </body>
</html>
