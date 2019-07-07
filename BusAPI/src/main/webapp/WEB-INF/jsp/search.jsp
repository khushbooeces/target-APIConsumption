<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Welcome</title>
</head>

<body>
<h3>Welcome, Please enter the required details</h3>
	<form action="/BusAPI/nextBus.html" method="post">
	<table>
		<tr>
			<td>Bus Route:</td>
		</tr>
		<tr>
			<td><input type="text" name="busRoute"/></td>
		</tr>
	
		<tr>
			<td>Bus Stop Name:</td>
		</tr>
		<tr>
			<td><input type="text" name="busStop"/></td>
		</tr>
	
<!-- 		<tr>
			<td>Direction:</td>
		</tr> -->
		<tr>
			<td>Direction: 
		 <select name="direction">
			<option value="2">East</option>
			<option value="3">West</option>
			<option value="4">North</option>
			<option value="1">South</option>
		 </select> 
			</td>
		</tr>
<!-- 		<tr>
			<td><input type="text" name="direction"/></td>
		</tr> -->
		
		<tr>
			<td><input type="submit" value="Submit"/></td>
		</tr>
	</table>
	</form>
		<%
		String dir=request.getParameter("direction");
		if(dir!=null){
		    out.println("You have selected: "+dir);
		}
%>	

</body>
</html>