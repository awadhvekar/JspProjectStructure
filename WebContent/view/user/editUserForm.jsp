<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit User Form</title>
	<jsp:include page="/view/common/header.jsp"></jsp:include>
		<jsp:include page="/view/common/leftSidebar.jsp"></jsp:include>
	   		<div class="col-sm-8 text-left"> 
				<%@ page import="com.project.bean.*, com.project.dao.*" %>
				<%
					String id = request.getParameter("id");
					UserBean user = UserDao.getUserById(Integer.parseInt(id));
				%>
				
				<h1>Edit User Form</h1>
				<form action="editUserAction.jsp" method="post">  
					<input type="hidden" name="id" value="<%=user.getId() %>"/>  
				
					<table>  
						<tr>
							<td>Name:</td>
							<td>  
								<input type="text" name="name" value="<%= user.getName()%>"/>
							</td>
						</tr>
						  
						<tr>
							<td>Password:</td>
							<td>  
								<input type="password" name="password" value="<%= user.getPassword()%>"/>
							</td>
						</tr>
						
						<tr>
							<td>Email:</td>
							<td>  
								<input type="email" name="email" value="<%= user.getEmail()%>"/>
							</td>
						</tr>  
				
						<tr>
							<td>Sex:</td>
							<td>  
								<input type="radio" name="sex" value="male"/>Male   
								<input type="radio" name="sex" value="female"/>Female
							</td>
						</tr>
						  
						<tr>
							<td>Country:</td>
							<td>  
								<select name="country">  
									<option>India</option>  
									<option>Pakistan</option>  
									<option>Afghanistan</option>  
									<option>Berma</option>  
									<option>Other</option>  
								</select>  
							</td>
						</tr>  
				
						<tr>
							<td colspan="2">
								<input type="submit" value="Edit User"/>
							</td>
						</tr>  
					</table>  
				</form>
	   		</div>
		<jsp:include page="/view/common/rightSidebar.jsp"></jsp:include>		
	<jsp:include page="/view/common/footer.jsp"></jsp:include>