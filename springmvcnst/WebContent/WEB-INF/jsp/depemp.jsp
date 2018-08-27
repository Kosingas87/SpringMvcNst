
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>All employees in departments:</title>
</head>
<body>

	<table class="table" border="2" width="600">

		<thead>
			<tr>
				<th>ID</th>
				<th>Department</th>
				<th>Employee</th>
				<th>From date</th>
				<th>To date</th>

				<th>Delete</th>
				<th>Update</th>

			</tr>
		</thead>
		<tbody>
			<c:forEach var="depemp" items="${depEmps}">
				<tr>
					<td>${depemp.deptEmpId}</td>
					<td>${depemp.department}</td>
					<td>${depemp.employee}</td>
					<td>${depemp.fromDate}</td>
					<td>${depemp.toDate}</td>



					<td><a onclick="if(!(confirm('Are u sure u want to delete? '))) return false"
						href="${pageContext.request.contextPath}/deletedepemp?deptEmpId=${depemp.deptEmpId}">Delete</a>
					</td>
					<td><a
						href="${pageContext.request.contextPath}/updatedepemp?deptEmpId=${depemp.deptEmpId}">Update</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>


</body>
</html>