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
<form action="${pageContext.request.contextPath}/docreatedepartment" method="post">

<table class="formtable" >

<tr> 
	<td class="label"> Id:</td>
	<td class="control"><input name="deptId" type="text"> </td>
</tr>
<tr> 
	<td class="label">Department name: </td>
	<td class="control"><input name="deptName"  type="text"> </td>
</tr>
<tr>
	<td class="label"> </td>
	<td class="control"><input type="submit" value="Add new department"> </td>
</tr>

</table>

</form>
</body>
</html>