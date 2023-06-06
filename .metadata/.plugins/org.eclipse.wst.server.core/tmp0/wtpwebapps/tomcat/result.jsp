<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8">
  <title>結果ページ</title>
</head>

<body>
  <h1>入力結果</h1>
  <p>氏名: <%= request.getParameter("name") %></p> <!-- 入力結果を取得して表示 -->
  <p>感想: <%= request.getParameter("comment") %></p>
  <p>評価: <%= request.getParameter("rating") %></p>
  <a href="comment.jsp">戻る</a>
</body>

</html>

