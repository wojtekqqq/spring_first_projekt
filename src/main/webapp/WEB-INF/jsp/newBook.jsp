<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
    <body>
        <h1>
            Add new book
        </h1>
        <form:form modelAttribute="form" >
            <form:errors path="" element="div"/>
            <div>
                <form:label path="title">Title</form:label>
                <form:imput path="title" />
                <form:errors path="title" />                
            </div>
            <div>
                <input type="submin" />
            </div>
        </form:form>        
    </body>
</html>