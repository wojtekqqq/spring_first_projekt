<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<head>
    <title>Expenses</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<%--    <link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"--%>
<%--          rel="stylesheet">--%>
<%--    <script src="webjars/jquery/1.9.1/jquery.min.js"></script>--%>
<%--    <script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>--%>
<%--    <script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>--%>
</head>
<body>
<h1 class="text-info">
    All Expenses
</h1>
<h3>
    <a href="/expenses/addNew" class="btn btn-primary"> Add new expense</a>
</h3>
<br>

<table class="table">
    <tr>
        <th>Name</th>
        <th>Expense value</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <c:forEach items="${expenses}" var="expense">
        <tr>
            <td>${expense.name}</td>
            <td>${expense.cost}</td>
            <td><a href="/expenses/edit/${expense.id}">Edit</a></td>
            <td><a href="/expenses/delete/${expense.id}">Delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>