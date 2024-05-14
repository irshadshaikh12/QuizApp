<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Scoreboard</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f0f0;
        margin: 0;
        padding: 20px;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        border: 2px solid #007bff;
        margin-bottom: 20px;
    }

    th, td {
        padding: 12px;
        text-align: left;
        border: 1px solid #ddd;
    }

    th {
        background-color: #007bff;
        color: #ffffff;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    tr:hover {
        background-color: #ddd;
    }
</style>
</head>
<body>
    <table>
        <tr>
            <th>Username</th>
            <th>Total Score</th>
        </tr>
        <c:forEach var="score" items="${score}">
            <tr>
                <td>${score.username}</td>
                <td>${score.totalCorrect}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
