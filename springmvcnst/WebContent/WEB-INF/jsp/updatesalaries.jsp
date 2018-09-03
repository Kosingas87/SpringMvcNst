
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Update salary</title>
</head>
<body>
	<h1>Update salary</h1>
	<form action="${pageContext.request.contextPath}/doupdatesalaries"
		method="post">

		<table class="formtable">
			
				<tr>
					<td class="label">Salary Id:</td>
					<td class="control"><input value="${salary.salariesId}"
						name="salariesId" type="text"></td>
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
				<tr>
					<td class="label">From date:</td>
					<td class="control"><input name="fromDate"
						value="${salary.fromDate}" type="text"></td>
				</tr>
				<tr>
					<td class="label">To date:</td>
					<td class="control"><input name="toDate"
						value="${salary.toDate}" type="text"></td>
				</tr>

				<tr>
					<td class="label">Title:</td>
					<td class="control"><input value="${salary.salary}" name="salary"
						type="text"></td>
				</tr>
				<tr>

					<td class="label"></td>
					<td class="control"><input type="submit" value="Update salary">
					</td>
				</tr>
		
		</table>

	</form>
</body>
</html>