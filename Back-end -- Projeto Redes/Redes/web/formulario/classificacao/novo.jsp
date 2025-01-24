<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:useBean id="classificacoes" class="locacaodvds.dao.ClassificacaoDAO" scope="request" />
<c:set var="cp" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
    <head>
        <title>Nova Classificação</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div class="main-content">
            <h2>Nova Classificação</h2>

            <form method="post" action="${cp}/processaClassificacao">
                <input type="hidden" name="acao" value="inserir" />

                <table class="form-table">
                    <tr>
                        <td class="alinharDireita">Descrição:</td>
                        <td>
                            <input type="text" id="descricao" name="descricao" required class="form-input"/>
                        </td>
                    </tr>
                </table>

                <div class="button-container-inline">
                    <button onclick="window.location.href = '${cp}/formulario/classificacao/listagem.jsp'" class="button-secondary">Voltar</button>
                    <input type="submit" value="Salvar" class="button-primary"/>
                </div>

            </form>
        </div>
    </body>
</html>
