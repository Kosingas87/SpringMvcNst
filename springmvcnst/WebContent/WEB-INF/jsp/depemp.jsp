
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Show  employees in departments:</title>
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
			<c:forEach var="depEmp" items="${depEmps}">
				<tr>
					<td>${depEmp.deptEmpId}</td>
					<td>${depEmp.department}</td>
					<td>${depEmp.employee}</td>
					<td>${depEmp.fromDate}</td>
					<td>${depEmp.toDate}</td>



					<td><a onclick="if(!(confirm('Are u sure u want to delete? '))) return false"
						href="${pageContext.request.contextPath}/deletedepemp?deptEmpId=${depEmp.deptEmpId}">Delete</a>
					</td>
					<td><a href="${pageContext.request.contextPath}/updatedepemp?deptEmpId=${depEmp.deptEmpId}">Update</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>


</body>
</html>