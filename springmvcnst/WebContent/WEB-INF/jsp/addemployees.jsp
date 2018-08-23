<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add employee</title>
</head>
<body>
<h1> Add new employee</h1>
<form action="${pageContext.request.contextPath}/docreate" method="post">

<table class="formtable" >

<tr> 
	<td class="label">Employee Id:</td>
	<td class="control"><input name="empId" type="text"> </td>
</tr>
<tr> 
	<td class="label">Birth date </td>
	<td class="control"><input name="birthDate" placeholder="yyyy-mm-dd" type="text"> </td>
</tr>
<tr> 
	<td class="label" >First name: </td>
	<td class="control"><input name="firstName" type="text"> </td>
</tr>
<tr> 
	<td class="label">Last name </td>
	<td class="control"><input name="lastName" type="text"> </td>
</tr>
<tr> 
	<td class="label">Gender </td>
	<td class="control"><select name="gender">
			<option value="M">Male</option>
			<option value="F">Female</option>
			
		</select> </td>
</tr>

<tr> 
	<td class="label">Hire date </td>
	<td class="control"><input name="hireDate"  placeholder="yyyy-mm-dd" type="text"> </td>
</tr>
<tr> 
	<td class="label"> </td>
	<td class="control"><input type="submit" value="Add new employee"> </td>
</tr>

</table>

</form>
</body>
</html>