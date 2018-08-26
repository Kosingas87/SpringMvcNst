
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Update employee</title>
</head>
<body>
	<h1>Update Employee</h1>
	<form action="${pageContext.request.contextPath}/doupdatetitle"
		method="post">

		<table class="formtable">
			<c:forEach var="title" items="${titles}">
				<tr>
					<td class="label">Title Id:</td>
					<td class="control"><input value="${title.titlesId}"
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
				<tr>
					<td class="label">From date:</td>
					<td class="control"><input name="fromDate"
						value="${title.fromDate}" type="text"></td>
				</tr>
				<tr>
					<td class="label">To date:</td>
					<td class="control"><input name="toDate"
						value="${title.toDate}" type="text"></td>
				</tr>

				<tr>
					<td class="label">Title:</td>
					<td class="control"><input value="${title.title}" name="title"
						type="text"></td>
				</tr>
				<tr>

					<td class="label"></td>
					<td class="control"><input type="submit" value="Update title">
					</td>
				</tr>
			</c:forEach>
		</table>

	</form>
</body>
</html>