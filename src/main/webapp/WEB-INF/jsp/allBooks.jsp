<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pl">
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
    <div class="jumbotron">
        <div class="container">
            <h1 class="text-info">
                All Books
            </h1>
            <h3>
                <a href="/books/addNew" class="btn btn-primary"> Add new book</a>
            </h3>
            <table class="table table-hover">
                <thead>
                <tr>
                    <th>Title</th>
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${books}" var="book">
                    <tr>
                        <td>${book.title}</td>
                        <td><a href="/books/edit/${book.id}">Edit</a></td>
                        <td><a href="/books/delete/${book.id}">Delete</a></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</section>
</body>
</html>