
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Update employee in department</title>
</head>
<body>
	<h1>Update employee in department</h1>
	<form action="${pageContext.request.contextPath}/doupdatedepemp"
		method="post">

		<table class="formtable">
			<c:forEach var="depemp" items="${depEmps}">
				<tr>
					<td class="label">Id:</td>
					<td class="control"><input value="${depemp.deptEmpId}"
						name="titlesId" type="text"></td>
				</tr>
				<tr>
					<td class="label">Employee</td>
					<td><select class="control" name="empId">

							<c:forEach var="employee" items="${employees}">
								<option value="${employee.empId}">${employee.firstName}
									${employee.lastName}</option>
							</c:forEach>
					</select></td>
				</tr>
				<tr>
					<td class="label">Department</td>
					<td><select class="control" name="deptId">

							<c:forEach var="department" items="${departments}">
								<option value="${department.deptId}">${department.deptName}</option>
							</c:forEach>
					</select></td>
				</tr>
				<tr>
				<tr>
					<td class="label">From date:</td>
					<td class="control"><input name="fromDate"
						value="${depemp.fromDate}" type="text"></td>
				</tr>
				<tr>
					<td class="label">To date:</td>
					<td class="control"><input name="toDate"
						value="${depemp.toDate}" type="text"></td>
				</tr>

			
				<tr>

					<td class="label"></td>
					<td class="control"><input type="submit" value="Update employee in department">
					</td>
				</tr>
			</c:forEach>
		</table>

	</form>
</body>
</html>