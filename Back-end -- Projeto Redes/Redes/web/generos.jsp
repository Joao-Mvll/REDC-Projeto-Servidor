<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Projeto de Redes</title>
    <link rel="stylesheet" href="${cp}/css/generos/generos.css">
    <script src="${cp}/js/generos/generos.js"></script>
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
</head>
<body>
    <header>
        <div class="navbar">Redes - Projeto Servidor</div>
    </header>
 
    <div class="sidebar">
        <button class="menu-toggle"><i class="fa fa-bars"></i></button>
        <nav>
            <ul>
                <li><a href="${cp}\index.jsp">Classificações</a></li>
                <li><a href="${cp}\generos.jsp">Gêneros</a></li>
            </ul>
        </nav>
    </div>
    
    <div class="content">
        <h1>Bem-vindo ao Sistema</h1>
        <div id="classificacoesContent">
            <h2>Generos</h2>
            <button class="btn-new"><i class="fa fa-plus"></i> Novo</button>
                    <button class="btn-edit"><i class="fa fa-edit"></i> Editar</button>
                    <button class="btn-delete"><i class="fa fa-trash"></i> Excluir</button>
                </li>
            </ul>
        </div>
    </div>

</body>
</html>
