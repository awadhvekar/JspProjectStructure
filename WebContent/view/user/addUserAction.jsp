<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Form Action</title>
</head>
<body>
	<%@ page import="com.project.dao.*" %>
	<jsp:useBean id="user" class="com.project.bean.UserBean"></jsp:useBean>
	<jsp:setProperty property="*" name="user"/>
	
	<%
	int status = UserDao.insertUser(user);
	
	if(status > 0)
	{
		response.sendRedirect("addUserSuccess.jsp");
		//response.sendRedirect("viewUsers.jsp");
	}
	else
	{
		response.sendRedirect("addUserError.jsp");
	}
	%>
</body>
</html>