<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
<c:set var="prefixo" value="processaClassificacao?acao=preparar"/>

<!DOCTYPE html>
<html>
    <head>
        <title>Classificações Cadastradas</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div class="main-content">
            <h2>Classificações Cadastradas</h2>

            <div class="button-container">
                <a href="${cp}/formulario/classificacao/novo.jsp" class="button-primary-ator"><i class="fas fa-plus-circle"></i> Nova Classificação</a>
            </div>

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

                    <jsp:useBean id="servicos" scope="page" class="locacaodvds.servicos.ClassificacaoServices"/>

                    <c:forEach items="${servicos.todos}" var="classificacao">
                        <tr>
                            <td>${classificacao.id}</td>
                            <td>${classificacao.descricao}</td>
                            <td>
                                <a href="${cp}/${prefixo}Alteracao&id=${classificacao.id}" class="button-secondary"><i class="fas fa-edit"></i> Alterar</a>
                            </td>
                            <td>
                                <a href="${cp}/${prefixo}Exclusao&id=${classificacao.id}" class="button-danger"><i class="fas fa-trash"></i> Excluir</a>
                            </td>
                        </tr>
                    </c:forEach>

                </tbody>
            </table>
            <div class="button-container-inline">
                <a href="${cp}/index.jsp" class="button-primary"><i class="fas fa-home"></i> Tela Principal</a>
                <a href="${cp}/formulario/classificacao/novo.jsp" class="button-primary"><i class="fas fa-plus-circle"></i> Nova Classificação</a>
            </div>

        </div>
    </body>
</html>
