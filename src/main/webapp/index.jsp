<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<%@ taglib uri="jakarta.tags.core" prefix="c"%>

<%
    int valores[] = {1,2,3,4};
    request.setAttribute("valores", valores);

    int opcao = 1;
    request.setAttribute("opcao", opcao);
%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
    <p>teste</p>
    <!-- scripters -->
    <%
        for(int i = 0; i<=3; i++){
            out.println(valores[i]);
        }
    %>
    <!-- jstl -->
    <c:forEach var="item" items="${valores}">
        ${item} <br/>
        <c:if test="${item == 4}"> Acabou</c:if>
    </c:forEach>

    <c:choose>
        <c:when test="${opcao == 2}">sim</c:when>
        <c:otherwise>não</c:otherwise>
    </c:choose>





</body>
</html>