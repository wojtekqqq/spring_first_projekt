<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> -->
<html>
    <body>
        <h1>
            Add new expenses
        </h1>
        <form:form modelAttribute="form" >
            <form:errors path="" element="div"/>
            <div>
                <form:label path="name">Name</form:label>
                <form:input path="name"/>
                <form:errors path="name"/>                
            </div>
            <div>
                <form:label path="cost">Value</form:label>
                <form:input type="number" path="cost"/>
                <form:errors path="cost"/>                
            </div>
            <br>
            <div>
                <input type="submit" />
            </div>
        </form:form>        
    </body>
</html>