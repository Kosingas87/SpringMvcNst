
        <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Update employee</title>
</head>
<body>
<h1>Update Employee</h1>
  <form action="${pageContext.request.contextPath}/doupdate" method="post">

<table class="formtable" >
<c:forEach var="employee" items="${employees}">
<tr> 
	<td class="label">Employee Id:</td>
	<td class="control"><input value="${employee.empId}" name="empId" type="text"> </td>
</tr>
<tr> 
	<td class="label">Birth date </td>
	<td class="control"><input name="birthDate" value="${employee.birthDate}" type="text"> </td>
</tr>
<tr> 
	<td class="label" >First name: </td>
	<td class="control"><input name="firstName" value="${employee.firstName}" type="text"> </td>
</tr>
<tr> 
	<td class="label">Last name </td>
	<td class="control"><input name="lastName"  value="${employee.lastName}"type="text"> </td>
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
	<td class="control"><input name="hireDate" value="${employee.hireDate}" type="text"> </td>
</tr>
<tr> 

	<td class="label"> </td>
	<td class="control"><input type="submit" value="Update new employee"> </td>
</tr>
</c:forEach>
</table>

</form>
</body>
</html>