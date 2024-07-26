<%-- 
    Document   : index
    Created on : 25 de jul. de 2024, 16:07:28
    Author     : Aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Cadastrar Mensagem!</h1>
        <form action="cadastraMensagem.jsp" method="post">
        <label for="titulo">Título 
            <input type="text" name="titulo" id="titulo" required="">                
        </label>
        <label for="autor">Autor
            <input type="text" name="autor" id="autor" required="">                
        </label>
        <label for="mensagem">Mesagem 
            <textarea name="mensagem" id="mensagem"></textarea>              
        </label>
        <input type="submit" value="Enviar">
        </form>
    </body>
</html>
