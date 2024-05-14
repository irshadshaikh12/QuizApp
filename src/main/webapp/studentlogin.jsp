<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Login</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
    }
    .container {
        max-width: 500px;
        margin: 50px auto;
        background-color: #fff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    h2 {
        text-align: center;
    }
    label {
        display: block;
        margin-bottom: 5px;
    }
    input[type="email"],
    input[type="password"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 20px;
        border-radius: 5px;
        border: 1px solid #ccc;
        box-sizing: border-box;
    }
    button[type="submit"] {
        width: 100%;
        padding: 10px;
        background-color: #007bff;
        color: #fff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }
    button[type="submit"]:hover {
        background-color: #0056b3;
    }
    .registration-button {
        text-align: center;
        margin-top: 20px;
    }
    .admin-button {
        position: absolute;
        top: 20px;
        right: 20px;
    }
    .admin-button a {
        text-decoration: none;
        color: #007bff;
    }
    h1 {
    text-align: center;
    color: #333;
}
</style>
</head>
<body>
<h1>Welcome to Quizz application</h1>
    <div class="container">
        <h2>Student Login</h2>
        <form action="studentlogin" method="get">
            <label for="email">Email</label>
            <input type="email" name="email" id="email">
            <label for="password">Password</label>
            <input type="password" name="password" id="password">
            <button type="submit">Login</button>
        </form>
        <div class="registration-button">
            <form action="reg" method="post">
                <button type="submit">Student Registration</button>
            </form>
        </div>
    </div>
    <div class="admin-button">
        <a href="adminlogin.jsp">Admin</a>
    </div>
</body>
</html>
