<%@ page contentType= "text/html;charset=UTF-8" language="java"%>

<%@ taglib uri="jakarta.tags.core" prefix="c"%>

<%
    int[] valores = {1,2,3,4,5};
    request.setAttribute("valores", valores);

    int[] multiplicador = {1,2,3,4,5,6,7,8,9,10};
    request.setAttribute("mult", multiplicador);
%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Calculadora</title>
</head>
<body>
    <h1>Calculo</h1>

    <c:forEach var="item" items="${valores}">
        <c:forEach var="m" items="${mult}">
            ${item} x ${m} = ${item * m} 
            <br/>
        </c:forEach>
        <br/>
        <hr/>
    </c:forEach>
</body>
</html>