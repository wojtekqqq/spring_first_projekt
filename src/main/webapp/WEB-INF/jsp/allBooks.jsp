<%@ taglib uri="https://java.sun.com/jsp/jstl/core" prefix="c" %>

<h1>
    All Books
</h1>
<ul>
    <c:forEach items="${books}" var="book">
       <li>${book}</li> 
    </c:forEach>
</ul>