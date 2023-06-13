<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Result</title>
</head>
<body>
    <p>アクセス回数</p>
    <p><%= session.getAttribute("name_session") %>さんのアクセス回数</p>
    <p>リクエスト：<%= request.getAttribute("login_request") %>回</p>
    <p>セッション：<%= session.getAttribute("login_session") %>回</p>
    <p>アプリケーション：<%= application.getAttribute("login_application") %>回</p>
    <p>Welcome, <%= session.getAttribute("name_session") %>!</p>
    
    <h2>Entered Names:</h2>
    <ul>
    <% 
        List<String> nameList = (List<String>) session.getAttribute("name_session");
        if (nameList != null) {
            for (String name : nameList) {
    %>
        <li><%= name %></li>
    <% 
            }
        }
    %>
    </ul>
    <form>
        <input type="button" onclick="location.href='./LoginSession.jsp'" value="戻る">
    </form>
</body>
</html>