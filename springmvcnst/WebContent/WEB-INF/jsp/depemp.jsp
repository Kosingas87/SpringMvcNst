
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Show  managers in departments:</title>
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
			<c:forEach var="deptManager" items="${deptManagers}">
				<tr>
					<td>${deptManager.deptManagerId}</td>
					<td>${deptManager.department}</td>
					<td>${deptManager.employee}</td>
					<td>${deptManager.fromDate}</td>
					<td>${deptManager.toDate}</td>



					<td><a onclick="if(!(confirm('Are u sure u want to delete? '))) return false"
						href="${pageContext.request.contextPath}/deletedeptmanager?deptManagerId=${deptManager.deptManagerId}">Delete</a>
					</td>
					<td><a
						href="${pageContext.request.contextPath}/updatedeptmanager?deptManagerId=${deptManager.deptManagerId}">Update</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>


</body>
</html>