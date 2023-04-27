<%@ page import="com.example.companyemployeeservlet.model.Company" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.companyemployeeservlet.model.Employee" %><%--
  Created by IntelliJ IDEA.
  User: Hasmik
  Date: 4/28/2023
  Time: 2:09 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Employee</title>
</head>
<%List<Company> companies = (List<Company>) request.getAttribute("companies");%>
<% Employee employee = (Employee) request.getAttribute("employee"); %>
<body>
<a href="/employees">Back</a>
<h2>Update Employee</h2>
<form action="/updateEmployee" method="post"><%-- action-ը այն servlet-ի անունը որին պետք է տանք տվյալները
  և doPost-ը կկանչի --%>
    name: <input type="text" name = "name" value="<%=employee.getName()%>"><br>
    surname: <input type="text" name = "surname" value="<%=employee.getSurname()%>"><br>
    email: <input type="text" name = "email" value="<%=employee.getEmail()%>"><br>
    Choose a Company:
    <select name="companyId">
        <%if (companies != null && !companies.isEmpty())
            for(Company company: companies){%>
        <option value=<%=company.getId()%>><%=company.getName()%></option>
        <%}%>
    </select>
    <br>
    <input type="submit" value="update">
</form>
</body>
</html>
