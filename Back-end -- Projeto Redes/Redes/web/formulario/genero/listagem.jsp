<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
<c:set var="prefixo" value="processaGenero?acao=preparar"/>

<!DOCTYPE html>
<html>
    <head>
        <title>Gêneros e Classificações</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <!-- Main content -->
        <div class="main-content">
            <h2>Gêneros Cadastrados</h2>

            <table class="tabelaListagem">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Descrição</th>
                        <th>Alterar</th>
                        <th>Excluir</th>
                    </tr>
                </thead>
                <tbody>

                    <jsp:useBean id="servicos" scope="page" class="locacaodvds.servicos.GeneroServices"/>

                    <c:forEach items="${servicos.todos}" var="genero">
                        <tr>
                            <td>${genero.id}</td>
                            <td>${genero.descricao}</td>
                            <td>
                                <a href="${cp}/${prefixo}Alteracao&id=${genero.id}" class="button-secondary"><i class="fas fa-edit"></i> Alterar</a>
                            </td>
                            <td>
                                <a href="${cp}/${prefixo}Exclusao&id=${genero.id}" class="button-danger"><i class="fas fa-trash"></i> Excluir</a>
                            </td>
                        </tr>
                    </c:forEach>

                </tbody>
            </table>

            <!-- Botões "Tela Principal" e "Novo Gênero" na mesma linha -->
            <div class="button-container-inline">
                <a href="${cp}/index.jsp" class="button-primary"><i class="fas fa-home"></i> Tela Principal</a>
                <a href="${cp}/formulario/genero/novo.jsp" class="button-primary"><i class="fas fa-plus-circle"></i> Novo Gênero</a>
            </div>

        </div>
    </body>
</html>
