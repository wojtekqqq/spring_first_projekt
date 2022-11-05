<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
    <title>Welcome</title>
    <link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
          rel="stylesheet">
    <script src="webjars/jquery/1.9.1/jquery.min.js"></script>
    <script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<h1 class="text-danger">
    All Books
</h1>
<table>
    <tr>
        <th>Title</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <c:forEach items="${books}" var="book">
        <tr>
            <td>${book.title}</td>
            <td><a href="/books/edit/${book.id}">Edit</a> </td>
            <td><a href="/books/delete/${book.id}">Delete</a> </td>
        </tr>
    </c:forEach>
</table>