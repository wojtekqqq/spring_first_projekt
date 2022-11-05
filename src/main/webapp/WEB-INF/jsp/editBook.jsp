<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> -->
<html>
    <body>
        <h1>
            Add new book
        </h1>
        <form:form modelAttribute="form" action="/books/save">
            <form:errors path="" element="div"/>
            <div>
                <form:hidden path="id"/>

                <form:label path="title">Title</form:label>
                <form:input path="title"/>
                <form:errors path="title"/>                
            </div>
            <br>
            <div>
                <input type="submit" value="Save" />
            </div>
        </form:form>        
    </body>
</html>