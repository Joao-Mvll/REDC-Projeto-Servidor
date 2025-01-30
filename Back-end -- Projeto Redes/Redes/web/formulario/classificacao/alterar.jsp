<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>

<html>
    <head>
        <title>Alterar Gênero</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #121212;
                color: white;
                text-align: center;
                padding: 20px;
            }
            h1 {
                color: #ff9800;
            }
            .form-table {
                margin: auto;
                color: white;
            }
            td {
                padding: 10px;
            }
            .button-secondary {
                padding: 10px 15px;
                margin: 5px;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                text-decoration: none;
                background-color: #555;
                color: white;
            }
            .button-primary {
                padding: 10px 15px;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                background-color: #ff9800;
                color: black;
            }
        </style>
    </head>
    <body>
        <div class="main-content">
            <h1>Alterar Gênero</h1>

            <form method="post" action="${cp}/processaGenero">
                <input name="acao" type="hidden" value="alterar"/>
                <input name="id" type="hidden" value="${requestScope.genero.id}"/>

                <table class="form-table">
                    <tr>
                        <td><strong>Descrição:</strong></td>
                        <td>
                            <input name="descricao" type="text" size="20" maxlength="30" value="${requestScope.genero.descricao}" class="form-input"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="button-container-inline">
                            <a href="${cp}/formulario/genero/listagem.jsp" class="button-secondary"><i class="fas fa-arrow-left"></i> Voltar</a>
                        </td>
                        <td>
                            <input type="submit" value="Alterar" class="button-primary"/>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>