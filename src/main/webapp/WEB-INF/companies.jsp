<%@ page import="com.example.companyemployeeservlet.model.Company" %>
<%@ page import="java.util.List" %><%--
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
<%List<Company> companies = (List<Company>) request.getAttribute("companies");%>
<body>
<a href="/">Back</a>
<h2>Companies</h2><a href="/createCompany">Create Company</a>
<table border="2">
  <tr>
    <th>id</th>
    <th>name</th>
    <th>country</th>
    <th>action</th>
  </tr>
  <%if (companies != null && !companies.isEmpty())
      for(Company company: companies){%>
        <tr>
          <td><%=company.getId()%></td>
          <td><%=company.getName()%></td>
          <td><%=company.getCountry()%></td>
          <td><a href="/removeCompany?id=<%=company.getId()%>">delete</a>
            / <a href="/updateCompany?id=<%=company.getId()%>"> update</a></td>
        </tr>
      <%}%>
</table>
</body>
</html>
