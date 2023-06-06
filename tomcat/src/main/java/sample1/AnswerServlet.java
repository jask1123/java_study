package sample1;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AnswerServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // 正解の数値を計算
        int correctAnswer = 5050; // 1から100までの数値の合計

        // ユーザーの回答を取得
        int userAnswer = Integer.parseInt(request.getParameter("answer"));

        // 正誤判定
        if (userAnswer == correctAnswer) {
            response.sendRedirect("correct.jsp"); // 正解の画面にリダイレクト
        } else {
            String searchQuery = "https://www.google.com/search?q=" + userAnswer;
            response.sendRedirect(searchQuery); // Googleの検索画面にリダイレクト
        }
    }
}
