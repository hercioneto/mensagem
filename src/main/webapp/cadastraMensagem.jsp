<%-- 
    Document   : cadastraMensagem
    Created on : 25 de jul. de 2024, 16:13:16
    Author     : Aluno
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.mycompany.mensagem.Mensagem"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Mensagems</h1>
        <%            
        ArrayList<Mensagem> mensagens = (ArrayList<Mensagem>) session.getAttribute("mensagens");
        if (mensagens == null) {
            mensagens = new ArrayList<>();
            session.setAttribute("mensagens", mensagens);
        }
        
            String titulo = request.getParameter("titulo");         
            String autor = request.getParameter("autor");
            String mensagem = request.getParameter("mensagem");
            
           if (titulo != null && autor != null && mensagem != null && !titulo.isEmpty() && !autor.isEmpty() && !mensagem.isEmpty()) {
            mensagens.add(new Mensagem(titulo,autor,mensagem));
            }

        
        %>
        
        <%        
    // As contas
    out.print("<h6>Mensagens enviadas:</h6>");
    for (Mensagem m : mensagens) {
    %>
        <div>
            <h3><%= m.getTitulo() %></h3>
            <p><strong>Autor:</strong> <%= m.getAutor() %></p>
            <p><strong>Mensagem:</strong> <%= m.getMensagem() %></p>
        </div>
    <%
        }
    %>
        </div>
    </body>
</html>
