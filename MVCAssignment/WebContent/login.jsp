<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <% String fullnme=request.getParameter("fullname"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
<form action="validate.jsp?fullname=<%=fullnme %>" method="post">

<table align="center">

<thead>
<tr>
<th colspan="6">Login Page</th>
</tr>
</thead>
<tbody>
<tr>
<td>Username</td>
<td><input type="text" name="userName" placeholder="enter your name"/></td>
</tr>

<tr>
<td>Password</td>
<td><input type="password" name="userPass" placeholder="enter your password"/></td>
</tr>

<tr>
<td><a href="reg_form.jsp">SignUp</a></td>
<td><input type="submit" value="login" /></td>
</tr>

<%=(request.getParameter("error_msg")!=null)? request.getParameter("error_msg"):"" %>

</tbody>
</table>
</form>
</body>
</html>