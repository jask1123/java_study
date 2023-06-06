<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>問題ページ</title>
</head>
<body>
    <h1>問題：1から100までの数値を足した結果は？</h1>
    <form action="AnswerServlet" method="POST">
        <input type="number" name="answer" required>
        <input type="submit" value="送信">
    </form>
</body>
</html>