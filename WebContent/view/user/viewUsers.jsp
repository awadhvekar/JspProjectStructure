<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Users</title>
	<jsp:include page="/view/common/header.jsp"></jsp:include>
		<jsp:include page="/view/common/leftSidebar.jsp"></jsp:include>
	   		<div class="col-sm-8 text-left"> 
				<%@ page import="com.project.bean.*, com.project.dao.*,java.util.*" %>
				<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
				
				<h1>Users List</h1>
				<%
				List<UserBean> userList = UserDao.getAllUserRecords();
				//List<UserBean> userList1 = UserDao.getAllUserRecords();
				request.setAttribute("userList", userList);
				%>
				
				<table border="1" width="90%">  
					<tr>
						<th>Id</th>
						<th>Name</th>
						<th>Password</th>
						<th>Email</th>  
						<th>Sex</th>
						<th>Country</th>
						<th>Edit</th>
						<th>Delete</th>
					</tr>
					
					<c:forEach items="${userList}" var="user">  
					<tr>
						<td>${user.getId()}</td>
						<td>${user.getName()}</td>
						<td>${user.getPassword()}</td>  
						<td>${user.getEmail()}</td>
						<td>${user.getSex()}</td>
						<td>${user.getCountry()}</td>  
						<td><a href="editUserForm.jsp?id=${user.getId()}">Edit</a></td>  
						<td><a href="deleteUserAction.jsp?id=${user.getId()}">Delete</a></td>
					</tr>  
					</c:forEach>
				</table>
				
				<table border="1" width="90%">  
					<tr>
						<th>Id</th>
						<th>Name</th>
						<th>Password</th>
						<th>Email</th>  
						<th>Sex</th>
						<th>Country</th>
						<th>Edit</th>
						<th>Delete</th>
					</tr>
					<%
					for(UserBean user : userList)
					{
					%>
					<tr>
						<td><%=user.getId() %></td>
						<td><%=user.getName() %></td>
						<td><%=user.getPassword() %></td>  
						<td><%=user.getEmail() %></td>
						<td><%=user.getSex() %></td>
						<td><%=user.getCountry() %></td>  
						<td><a href="editUserForm.jsp?id=<%=user.getId() %>">Edit</a></td>  
						<td><a href="deleteUserAction.jsp?id=<%=user.getId() %>">Delete</a></td>
					</tr>
					<%
					}
					%>
				</table>
				
				<br/><a href="addUserForm.jsp">Add New User</a>
	   		</div>
		<jsp:include page="/view/common/rightSidebar.jsp"></jsp:include>		
	<jsp:include page="/view/common/footer.jsp"></jsp:include>