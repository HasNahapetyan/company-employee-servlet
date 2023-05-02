<%@ page import="com.example.companyemployeeservlet.model.Employee" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.companyemployeeservlet.model.User" %>
<%@ page import="com.example.companyemployeeservlet.model.UserType" %><%--
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
<%List<Employee> employees = (List<Employee>) request.getAttribute("employees");
    User user = (User) session.getAttribute("user");
    String keyword = request.getParameter("keyword") == null ||
            request.getParameter("keyword").equals("null") ? "" : request.getParameter("keyword");
%>

<body>
<a href="/home">Back</a>
<h2>Employees</h2><a href="/createEmployee">Create Employee</a>
<form action="/employees" method="get">
    <input type="text" name="keyword" value="<%=keyword%>">
    <input type="submit" value="search">
</form>
<table border="2">
    <tr>
        <th>image</th>
        <th>name</th>
        <th>surname</th>
        <th>email</th>
        <th>Company ID</th>
        <% if (user.getUserType() == UserType.ADMIN) { %>
        <th>action</th>
        <%}%>
    </tr>
    <%if (employees != null && !employees.isEmpty())
        for(Employee employee: employees){%>
    <tr>
        <td>
            <% if (employee.getPicName() == null || employee.getPicName().equalsIgnoreCase("null")) { %>
            <img src="/img/prifile_icon.png" width="100">
            <%} else {%>
            <a href="/getImage?picName=<%=employee.getPicName()%>"><img
                    src="/getImage?picName=<%=employee.getPicName()%>" width="100"> </a>
            <%}%>
        </td>
        <td><%=employee.getName()%></td>
        <td><%=employee.getSurname()%></td>
        <td><%=employee.getEmail()%></td>
        <td><%=employee.getCompany().getId()%></td>
        <% if (user.getUserType() == UserType.ADMIN) { %>

        <td><a href="/removeEmployee?id=<%=employee.getId()%>">Delete</a></td>
        <%}%>
    </tr>
    <%}%>
</table>
</body>
</html>
