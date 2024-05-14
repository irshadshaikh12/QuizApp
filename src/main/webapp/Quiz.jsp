<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz</title>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-color: #f4f4f4;
}

h1 {
	text-align: center;
	color: #333;
}

form {
	width: 60%;
	margin: 0 auto;
	background-color: #fff;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

div.question {
	margin-bottom: 20px;
	text-align: center;
}

label {
	display: block;
	margin-bottom: 10px;
}

input[type="radio"] {
	margin-right: 5px;
}

button[type="submit"] {
	background-color: #007bff;
	color: #fff;
	border: none;
	padding: 10px 20px;
	border-radius: 5px;
	cursor: pointer;
	text-align: center;
}

button[type="submit"]:hover {
	background-color: #0056b3;
}
</style>
</head>
<body>
	<h1>Quiz</h1>
	<form action="submitQuiz" method="post">
    <div>Username: <input type="text" name="username" required="required"></div>
    <c:forEach items="${qform.questions}" var="question" varStatus="loop">
        <div class="question">
            <p>Question : ${question.questionText}</p>
            <label><input type="radio" name="questions[${loop.index}].chosenAnswer" value="${question.choiceA}"> ${question.choiceA}</label><br>
            <label><input type="radio" name="questions[${loop.index}].chosenAnswer" value="${question.choiceB}"> ${question.choiceB}</label><br>
            <label><input type="radio" name="questions[${loop.index}].chosenAnswer" value="${question.choiceC}"> ${question.choiceC}</label><br>
            <label><input type="radio" name="questions[${loop.index}].chosenAnswer" value="${question.choiceD}"> ${question.choiceD}</label><br>
            <input type="hidden" name="questions[${loop.index}].id" value="${question.id}">
            <input type="hidden" name="questions[${loop.index}].correctAnswer" value="${question.correctAnswer}">
        </div>
    </c:forEach>
    <button type="submit">Submit</button>
</form>


	<form action="score" method="get">
		<button type="submit">GetResult</button>
	</form>
</body>
</html>
