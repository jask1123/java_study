<%@ page import="sample1.EmployeeBean" language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.io.UnsupportedEncodingException" %>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html lang="ja">
<head>
    <title>Employee Information - Result</title>
    <meta charset="UTF-8">
</head>
<body>
    <h1>Employee Information - Result</h1>
    <%
        EmployeeBean employee = new EmployeeBean();
        employee.setEmployeeNumber(request.getParameter("employeeNumber"));
        employee.setEmployeeName(request.getParameter("employeeName"));
        employee.setDateOfBirth(request.getParameter("dateOfBirth"));
        employee.setAge(Integer.parseInt(request.getParameter("age")));
        employee.setGender(request.getParameter("gender"));
        employee.setDepartment(request.getParameter("department"));
    %>
    <p>Employee Number: <%= employee.getEmployeeNumber() %></p>
    <p>Employee Name: <%= employee.getEmployeeName() %></p>
    <p>Date of Birth: <%= employee.getDateOfBirth() %></p>
    <p>Age: <%= employee.getAge() %></p>
    <p>Gender: <%= employee.getGender() %></p>
    <p>Department: <%= employee.getDepartment() %></p>
</body>
</html>