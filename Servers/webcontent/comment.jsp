<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.example.Comment" %>

<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8">
  <title>コメントページ</title>
  <link rel="stylesheet" href="styles.css">
</head>

<body>
  <h1>コメントページ</h1>
  <%
    // Commentクラスのインスタンスを作成
    Comment comment = new Comment();

    // フォームからの値を取得
    String name = request.getParameter("name");
    String commentText = request.getParameter("comment");
    int rating = Integer.parseInt(request.getParameter("rating"));

    // CommentクラスのdoGet()メソッドを呼び出し
    comment.doGet(name, commentText, rating);
  %>

  <h2>入力内容</h2>
  <p>氏名: <%= name %></p>
  <p>感想: <%= commentText %></p>
  <p>評価: <%= rating %></p>

  <a href="index.html">トップページに戻る</a>
</body>

</html>
