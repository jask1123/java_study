package sample1;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ScopeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // requestスコープ
        String aRequest = (String)request.getAttribute("login_request");
        int accessRequest;
        if(aRequest != null) {
            accessRequest = Integer.parseInt(aRequest);
            accessRequest++;
        } else {
            accessRequest = 1;
        }
        request.setAttribute("login_request", Integer.toString(accessRequest));

        // sessionスコープ
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        String aSession = (String)session.getAttribute("login_session");
        int accessSession;
        if(aSession != null) {
            accessSession = Integer.parseInt(aSession);
            accessSession++;
        } else {
            accessSession = 1;
            session.setMaxInactiveInterval(180);
        }
        session.setAttribute("login_session", Integer.toString(accessSession));

        // Applicationスコープ
        ServletContext con = request.getServletContext();
        String aApplication = (String)con.getAttribute("login_application");
        int accessApplication;
        if(aApplication != null) {
            accessApplication = Integer.parseInt(aApplication);
            accessApplication++;
        } else {
            accessApplication = 1;
        }
        con.setAttribute("login_application", Integer.toString(accessApplication));

        // 画面移動
        String nSession = request.getParameter("name_request");
        List<String> nameList = (List<String>) session.getAttribute("name_session");
        if (nameList == null) {
            nameList = new ArrayList<>();
        }
        nameList.add(nSession);
        session.setAttribute("name_session", nameList);
        RequestDispatcher rd = con.getRequestDispatcher("/LoginResult.jsp");
        rd.forward(request, response);
    }
    
}
