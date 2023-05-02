<%@ page import="com.example.companyemployeeservlet.model.Company" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Hasmik
  Date: 4/28/2023
  Time: 2:09 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Employee</title>
</head>
<%List<Company> companies = (List<Company>) request.getAttribute("companies"); %>
<body>
<a href="/employees">Back</a>
<h2>Create Company</h2>
<form action="/createEmployee" method="post" enctype="multipart/form-data" <%--form-ի մեջ նաև նկար կա բերելու--%>>
    name: <input type="text" name = "name"><br>
    surname: <input type="text" name = "surname"><br>
    email: <input type="text" name = "email"><br>
    Choose a Company:
    <select name="companyId">
        <%if (companies != null && !companies.isEmpty())
            for(Company company: companies){%>
        <option value=<%=company.getId()%>><%=company.getName()%></option>
        <%}%>
    </select>
    <br>
    image:
    <input type="file" name="profilePic">
    <input type="submit" value="create">
</form>
</body>
</html>
