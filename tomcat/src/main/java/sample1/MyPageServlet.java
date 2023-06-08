package sample1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MyPageServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // レスポンスの設定
        response.setContentType("text/html;charset=UTF-8");

        // レスポンスの内容を出力
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>自己紹介</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>自己紹介</h1>");
            out.println("<p>名前：田中太郎でよーん</p>");
            out.println("<p>身長：190 cm</p>");
            out.println("<p>体重：89 kg</p>");
            out.println("<p>趣味：体を動かすこと</p>");
            out.println("</body>");
            out.println("</html>");
        }
    }
}