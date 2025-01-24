<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>

<html>
    <head>
        <title>Alterar Classificação</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div class="main-content">
            <h1>Alterar Classificação</h1>

            <form method="post" action="${cp}/processaClassificacao">
                <input name="acao" type="hidden" value="alterar"/>
                <input name="id" type="hidden" value="${requestScope.classificacao.id}"/>

                <table class="form-table">
                    <tr>
                        <td class="alinharDireita">Descrição:</td>
                        <td>
                            <input name="descricao" type="text" size="20" maxlength="30" value="${requestScope.classificacao.descricao}" class="form-input"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="button-container-inline">
                            <a href="${cp}/formulario/classificacao/listagem.jsp" class="button-secondary"><i class="fas fa-arrow-left"></i> Voltar</a>
                        </td>
                        <td class="alinharDireita">
                            <input type="submit" value="Alterar" class="button-primary"/>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>
