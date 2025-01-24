<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>

<html>
    <head>
        <title>Excluir Classificação</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>

    <body>
        <div class="main-content">
            <h1>Excluir Classificação</h1>

            <form method="post" action="${cp}/processaClassificacao">
                <input name="acao" type="hidden" value="excluir"/>
                <input name="id" type="hidden" value="${requestScope.classificacao.id}"/>
                <table>
                    <tr>
                        <td class="alinharDireita">Descrição:</td>
                        <td>${requestScope.classificacao.descricao}</td>
                    </tr>
                    <tr>
                        <td class="button-container">
                            <a href="${cp}/formulario/classificacao/listagem.jsp" class="button-secondary"> Voltar</a>
                        </td>
                        <td class="alinharDireita">
                            <input type="submit" value="Excluir"/>
                        </td>
                    </tr>
                </table>
            </form>
        </div>

    </body>
</html>
