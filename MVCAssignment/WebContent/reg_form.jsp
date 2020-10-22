<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
<form action="reg.jsp" method="post">

<table align="center">

<thead>
<tr>
<th colspan="6">Registration Page</th>
</tr>
</thead>
<tbody>
<tr>
<td>Full Name</td>
<td><input type="text" name="fullName" placeholder="enter your full name"/></td>
</tr>

<tr>
<td>Username</td>
<td><input type="text" name="userName" placeholder="enter your name"/></td>
</tr>

<tr>
<td>Password</td>
<td><input type="password" name="userPass" placeholder="enter your password"/></td>
</tr>

<tr>
<td><a href="login.jsp">Back</a></td>
<td><input type="submit" value="register" /></td>
</tr>

</tbody>
</table>
</form>
</body>
</html>