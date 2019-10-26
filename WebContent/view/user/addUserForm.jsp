<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<title>Form Front-end</title>
	<jsp:include page="/view/common/header.jsp"></jsp:include>
		<jsp:include page="/view/common/leftSidebar.jsp"></jsp:include>
	   		<div class="col-sm-8 text-left"> 
				<a href="viewUsers.jsp">View All Records</a><br/>
				<h1>Add New User</h1>  
				
				<form action="addUserAction.jsp" method="post">  
					<table>  
						<tr>
							<td>Name:</td>
							<td>
								<input type="text" name="name"/>
							</td>
						</tr>
						
						<tr>
							<td>Password:</td>
							<td>  
								<input type="password" name="password"/>
							</td>
						</tr>  
					
						<tr>
							<td>Email:</td>
							<td>
								<input type="email" name="email"/>
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
								<select name="country" style="width:155px">  
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
								<input type="submit" value="Add User"/>
							</td>
						</tr>  
					</table>
				</form>
	   		</div>
		<jsp:include page="/view/common/rightSidebar.jsp"></jsp:include>		
	<jsp:include page="/view/common/footer.jsp"></jsp:include>