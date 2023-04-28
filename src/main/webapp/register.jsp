<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>Register Page</title>
</head>
<body>
<form action="/register" method="get">
<input name="name" type="text"><br>
<input name="surname" type="text"><br>
<input name="email" type="text"><br>
<input name="password" type="password"><br>
  <select name="type">
    <option value="ADMIN">Admin</option>
    <option value="USER">User</option>
  </select>
  <input type="submit" value="register"><br>

</form>
<a href="/">Back</a>
</body>
</html>