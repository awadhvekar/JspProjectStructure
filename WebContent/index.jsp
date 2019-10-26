<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Home JSP Folder Structure</title>
	<jsp:include page="view/common/header.jsp"></jsp:include>
		<jsp:include page="view/common/leftSidebar.jsp"></jsp:include>
	   		<div class="col-sm-8 text-left"> 
				<h1>JSP CRUD Example</h1>  
				<a href="view/user/addUserForm.jsp">Add User</a>
				<br/><br/><br/><br/><br/><br/>
				<a href="view/user/viewUsers.jsp">View Users</a>
	   		</div>
		<jsp:include page="view/common/rightSidebar.jsp"></jsp:include>		
	<jsp:include page="view/common/footer.jsp"></jsp:include>