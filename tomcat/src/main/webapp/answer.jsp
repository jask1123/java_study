<%@ page language="java" %>
<%
    String userAnswer = request.getParameter("answer");
    int correctAnswer = 5050; // 1から100までの数値の合計

    if (userAnswer != null && userAnswer.equals(String.valueOf(correctAnswer))) {
        response.sendRedirect("correct.jsp"); // 正解の画面にリダイレクト
    } else {
        String searchQuery = "https://www.google.com/search?q=" + userAnswer;
        response.sendRedirect(searchQuery); // Googleの検索画面にリダイレクト
    }
%>