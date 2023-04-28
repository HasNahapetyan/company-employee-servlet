<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Hasmik
  Date: 4/27/2023
  Time: 1:13 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Company</title>
</head>
<body>
<a href="/companies">Back</a>
<h2>Create Company</h2>
<form action="/createCompany" method="post"><%-- action-ը այն servlet-ի անունը որին պետք է տանք տվյալները
  և doPost-ը կկանչի --%>
  name: <input type="text" name = "name"><br>
  country: <input type="text" name="country"><br>
  <input type="submit" value="create">
</form>
</body>
</html>
