<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
    <head>
        <title>Aplicação Simples</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h1>Bem-vindo ao Sistema</h1>
        <ul>
            <li><a href="${cp}/formulario/classificacao/listagem.jsp">Classificações</a></li>
            <li><a href="${cp}/formulario/genero/listagem.jsp">Gêneros</a></li>
        </ul>
    </body>
</html>
