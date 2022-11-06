<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!--
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
-->
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>

<c:choose>
    <c:when test="${form.id=='0'}">
        <h1 class="text-info">
            Add new expense
        </h1>
    </c:when>
    <c:otherwise>
        <h1 class="text-danger">
            Edit expense
        </h1>
    </c:otherwise>
</c:choose>


<%--@elvariable id="form" type="form"--%>
<form:form modelAttribute="form" method="post" action="/expenses/save">
    <form:errors path="" element="div"/>
    <div>
            <%--                <c:if test="condition"></c:if>--%>
        <c:choose>
            <c:when test="${form.id!='0'}">
                <form:hidden path="id"/>
            </c:when>
        </c:choose>
        <form:label path="name">Name</form:label>
        <form:input path="name" class="form-control"/>
        <form:errors path="name"/>
    </div>
    <div>
        <form:label path="cost">Value</form:label>
        <form:input type="number" path="cost" class="form-control"/>
        <form:errors path="cost"/>
    </div>
    <br>
    <div>
        <input type="submit" value="Save" class="btn btn-primary"/>
    </div>
</form:form>
</body>
</html>