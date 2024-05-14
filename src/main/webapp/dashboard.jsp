<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f8f9fa;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    form {
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    button {
        padding: 15px 30px;
        background-color: #007bff;
        color: #fff;
        border: none;
        border-radius: 8px;
        margin: 10px;
        cursor: pointer;
        transition: background-color 0.3s ease;
        font-size: 18px;
    }

    button:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
<form action="home1" method="get">
    <button type="submit">Add Question</button>
</form>
<form action="score" method="get">
    <button type="submit">Score</button>
</form>
</body>
</html>
