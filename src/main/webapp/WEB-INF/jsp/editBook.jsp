<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!--
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
-->
<html>
<head>
    <title>My books</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <%--    <link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"--%>
    <%--          rel="stylesheet">--%>
    <%--    <script src="webjars/jquery/1.9.1/jquery.min.js"></script>--%>
    <%--    <script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>--%>
</head>
<body>
<section>
    <div>
<c:choose>
    <c:when test="${form.id=='0'}">
        <h1 class="text-info">
            Add new book
        </h1>
    </c:when>
    <c:otherwise>
        <h1 class="text-info">
            Edit book
        </h1>
    </c:otherwise>
</c:choose>


<%--@elvariable id="form" type="form"--%>
<form:form modelAttribute="form" method="post" action="/books/save">
    <form:errors path="" element="div"/>
    <div class="jumbotron">
        <c:choose>
            <c:when test="${form.id!='0'}">
                <form:hidden path="id"/>
            </c:when>
        </c:choose>

        <form:label path="title">Title</form:label>
        <form:input path="title"/>
        <form:errors path="title"/>
    </div>
    <br>
    <div>
        <input type="submit" value="Save" class="btn-success"/>
    </div>
</form:form>
    </div>
</section>
</body>
</html>