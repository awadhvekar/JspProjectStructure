<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete User Action</title>
</head>
<body>
	<%@ page import="com.project.dao.UserDao" %>
	<jsp:useBean id="user" class="com.project.bean.UserBean"></jsp:useBean>
	<jsp:setProperty property="*" name="user"/>
	
	<%
	int status = UserDao.deleteUser(user);
	response.sendRedirect("viewUsers.jsp");
	%>
</body>
</html>