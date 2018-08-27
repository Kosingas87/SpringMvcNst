
        <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Update department</title>
</head>
<body>
<h1>Update Department</h1>
  <form action="${pageContext.request.contextPath}/doupdatedepartment" method="post">

<table class="formtable" >
<c:forEach var="department" items="${departments}">
<tr> 
	<td class="label"> Id:</td>
	<td class="control"><input value="${department.deptId}" name="deptId" type="text"> </td>
</tr>
<tr> 
	<td class="label">Department: </td>
	<td class="control"><input name="deptName" value="${department.deptName}" type="text"> </td>
</tr>

<tr> 

	<td class="label"> </td>
	<td class="control"><input type="submit" value="Update department"> </td>
</tr>
</c:forEach>
</table>

</form>
</body>
</html>