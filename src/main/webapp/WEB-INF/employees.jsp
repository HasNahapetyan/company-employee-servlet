<%@ page import="com.example.companyemployeeservlet.model.Employee" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Hasmik
  Date: 4/26/2023
  Time: 11:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Employees</title>
</head>
<%List<Employee> employees = (List<Employee>) request.getAttribute("employees");%>
<body>
<a href="/">Back</a>
<h2>Employees</h2><a href="/createEmployee">Create Employee</a>
<table border="2">
    <tr>
        <th>name</th>
        <th>surname</th>
        <th>email</th>
        <th>Company ID</th>
        <th>action</th>
    </tr>
    <%if (employees != null && !employees.isEmpty())
        for(Employee employee: employees){%>
    <tr>
        <td><%=employee.getName()%></td>
        <td><%=employee.getSurname()%></td>
        <td><%=employee.getEmail()%></td>
        <td><%=employee.getCompany().getId()%></td>
        <td><a href="/removeEmployee?id=<%=employee.getId()%>">delete</a></td>
    </tr>
    <%}%>
</table>
</body>
</html>
