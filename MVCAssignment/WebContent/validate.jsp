<%@page import="com.service.UserServiceImple"%>
<%@page import="com.service.UserService"%>
<jsp:useBean id="user" class="com.dto.User" scope="session"></jsp:useBean>
<jsp:setProperty name="user" property="*"></jsp:setProperty>
<% String u=request.getParameter("fullname"); 
user.setFullName(u);
%>

<%

UserService userService =new UserServiceImple();
boolean b=userService.login(user);
if(b){
	response.sendRedirect("home.jsp?fullnamee="+u);
}
else{
	
	response.sendRedirect("login.jsp?error_msg=please check your credentials!!!!!!!!!!!");
}

%>

