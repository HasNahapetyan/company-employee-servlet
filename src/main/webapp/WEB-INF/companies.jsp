<%@ page import="com.example.companyemployeeservlet.model.Company" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.companyemployeeservlet.model.User" %>
<%@ page import="com.example.companyemployeeservlet.model.UserType" %><%--
  Created by IntelliJ IDEA.
  User: Hasmik
  Date: 4/26/2023
  Time: 11:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<%List<Company> companies = (List<Company>) request.getAttribute("companies");
  User user = (User) session.getAttribute("user");
%>
<body>
<a href="/home">Back</a>
<h2>Companies</h2><a href="/createCompany">Create Company</a>
<table border="2">
  <tr>
    <th>id</th>
    <th>name</th>
    <th>country</th>
    <% if (user.getUserType() == UserType.ADMIN) { %>
    <th>action</th>
    <%}%>
  </tr>
  <%if (companies != null && !companies.isEmpty())
      for(Company company: companies){%>
        <tr>
          <td><%=company.getId()%></td>
          <td><%=company.getName()%></td>
          <td><%=company.getCountry()%></td>
          <% if (user.getUserType() == UserType.ADMIN) { %>

          <td><a href="/removeCompany?id=<%=company.getId()%>">Delete</a>
            / <a href="updateCompany?id=<%=company.getId()%>">Update</a></td>
          <%}%>
        </tr>
      <%}%>
</table>
</body>
</html>
