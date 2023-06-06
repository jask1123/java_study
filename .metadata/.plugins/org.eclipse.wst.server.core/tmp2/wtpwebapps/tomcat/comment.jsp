<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="tomcat.Comment" %>

<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8">
  <title>コメントページ</title>
  <link rel="stylesheet" href="styles.css">
</head>

<body>
  <h1>コメントページ</h1>
  <form action="result.jsp" method="post"> <!-- フォームの送信先をresult.jspに変更 -->
    <label for="name">氏名:</label>
    <input type="text" id="name" name="name" required><br><br>

    <label for="comment">感想:</label>
    <textarea id="comment" name="comment" rows="4" cols="50" required></textarea><br><br>

    <label for="rating">評価:</label><br>
    <input type="radio" id="rating1" name="rating" value="1" required>
    <label for="rating1">1</label>
    <input type="radio" id="rating2" name="rating" value="2" required>
    <label for="rating2">2</label>
    <input type="radio" id="rating3" name="rating" value="3" required>
    <label for="rating3">3</label>
    <input type="radio" id="rating4" name="rating" value="4" required>
    <label for="rating4">4</label>
    <input type="radio" id="rating5" name="rating" value="5" required>
    <label for="rating5">5</label>
    <br><br>

    <input type="submit" value="送信">
    <input type="reset" value="リセット">
  </form>
  <a href="comment.jsp">トップページに戻る</a>
</body>

</html>
