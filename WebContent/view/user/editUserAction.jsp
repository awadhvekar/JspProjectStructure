<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<title>Edit User Action</title>
</head>
<body>
	<%@ page import="com.project.dao.UserDao" %>
	<jsp:useBean id="user" class="com.project.bean.UserBean"></jsp:useBean>
	<jsp:setProperty property="*" name="user"/>
	
	<%
	int i = UserDao.updateUser(user);
	response.sendRedirect("viewUsers.jsp");
	%>
</body>
</html>