<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!--
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
-->
<html>
<body>

<c:choose>
    <c:when test="${form.id=='0'}">
        <h1>
            Add new book
        </h1>
    </c:when>
    <c:otherwise>
        <h1>
            Edit book
        </h1>
    </c:otherwise>
</c:choose>


<%--@elvariable id="form" type="form"--%>
<form:form modelAttribute="form" method="post" action="/books/save">
    <form:errors path="" element="div"/>
    <div>
            <%--                <c:if test="condition"></c:if>--%>
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
        <input type="submit" value="Save"/>
    </div>
</form:form>
</body>
</html>