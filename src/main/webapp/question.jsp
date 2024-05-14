<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Question Here</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f0f0;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
    }

    .container {
        background-color: #ffffff;
        border-radius: 10px;
        padding: 20px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        max-width: 400px;
        width: 90%;
    }

    h1 {
        text-align: center;
        color: #007bff;
        margin-bottom: 30px;
        margin-top: 0;
    }

    form {
        margin-top: 20px;
    }

    label {
        display: block;
        margin-bottom: 10px;
        font-weight: bold;
        color: #333333;
    }

    input[type="text"] {
        width: calc(100% - 20px);
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #dddddd;
        border-radius: 5px;
        box-sizing: border-box;
    }

    button[type="submit"] {
        width: 100%;
        padding: 15px;
        background-color: #007bff;
        color: #ffffff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
        transition: background-color 0.3s ease;
    }

    button[type="submit"]:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
<div class="container">
    <h1>Add Question Here</h1>
    <form action="add1question" method="post">
        <label for="questions">Question</label>
        <input type="text" name="questionText" id="questions">
        <label for="choiceA">Choice A</label>
        <input type="text" name="choiceA" id="choiceA">
        <label for="choiceB">Choice B</label>
        <input type="text" name="choiceB" id="choiceB">
        <label for="choiceC">Choice C</label>
        <input type="text" name="choiceC" id="choiceC">
        <label for="choiceD">Choice D</label>
        <input type="text" name="choiceD" id="choiceD">
        <label for="ans">Answer</label>
        <input type="text" name="correctAnswer" id="ans">
        <button type="submit">Submit</button>
    </form>
</div>
</body>
</html>
