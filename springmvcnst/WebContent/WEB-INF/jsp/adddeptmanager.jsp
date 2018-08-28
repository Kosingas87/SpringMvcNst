<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add employee in department</title>
</head>
<body>
	<h1>Add employee in department</h1>
	<form action="${pageContext.request.contextPath}/docreatedeptmanager"
		method="post">

		<table class="formtable">

			<tr>
				<td class="label"> Id:</td>
				<td class="control"><input name="deptManagerId" type="text">
				</td>
			</tr>
			<tr>
				<td class="label">Employee</td>
				<td>
				
				<select class="control" name="empId" >

						<c:forEach var="employee" items="${employees}">
							<option value="${employee.empId}">${employee.firstName} ${employee.lastName}</option>
						</c:forEach>
				</select>
				</td>
			</tr>
			<tr>
				<td class="label">Department</td>
				<td>
				
				<select class="control" name="deptId" >

						<c:forEach var="department" items="${departments}">
							<option value="${department.deptId}">${department.deptName}</option>
						</c:forEach>
				</select>
				</td>
			</tr>
			<tr>
				<td class="label">From date:</td>
				<td class="control"><input name="fromDate"
					placeholder="yyyy-mm-dd" type="text"></td>
			</tr>
			<tr>
				<td class="label">To date:</td>
				<td class="control"><input name="toDate"
					placeholder="yyyy-mm-dd" type="text"></td>
			</tr>
			
			<tr>
				<td class="label"></td>
				<td class="control"><input type="submit" value="Add manager for the department">
				</td>
			</tr>

		</table>

	</form>
</body>
</html>