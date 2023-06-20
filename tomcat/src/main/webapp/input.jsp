<%@ page import="sample1.EmployeeBean" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Employee Information</title>
    <style>
        input::placeholder {
            color: lightgray;
        }
    </style>
</head>
<body>
    <h1>Employee Information</h1>
    <%
        EmployeeBean employee = new EmployeeBean();
    %>
    <form action="result.jsp" method="POST">
        <label for="employeeNumber">社員番号:</label>
        <input type="text" id="employeeNumber" name="employeeNumber" placeholder="社員番号" required><br>
        
        <label for="employeeName">社員名:</label>
        <input type="text" id="employeeName" name="employeeName" placeholder="社員名" required><br>
        
        <label for="dateOfBirth">誕生日:</label>
        <input type="text" id="dateOfBirth" name="dateOfBirth" placeholder="誕生日" required><br>
        
        <label for="age">年齢:</label>
        <input type="number" id="age" name="age" placeholder="年齢" required><br>
        
        <label for="gender">性別:</label>
        <select id="gender" name="gender" required>
            <option value="" selected disabled hidden>性別を選択</option>
            <option value="男性">Male</option>
            <option value="女性">Female</option>
        </select><br>
        
        <label for="department">部署:</label>
        <input type="text" id="department" name="department" placeholder="部署" required><br>
        
        <input type="submit" value="Submit">
    </form>
</body>
</html>