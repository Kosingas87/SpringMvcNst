<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript">
	function bonus1() {
		if (document.getElementById('show2').checked) {
			var result_styles = document.getElementById('percnt').style;
			result_styles.display = 'table';
		} else {
			var result_styles = document.getElementById('percnt').style;
			result_styles.display = 'none';

		}
	}

	function fixed() {
		if (document.getElementById('show1').checked) {
			var result_style = document.getElementById('fixed').style;
			result_style.display = 'table';
		} else {
			var result_style = document.getElementById('fixed').style;
			result_style.display = 'none';

		}
	}
</script>
<title>Add Salary</title>
</head>
<body>


	<h1>Add new salary for employee</h1>
	
				Type of bonus:
				Fixed<input type="checkbox" id="show1"
					name="chkBox" onclick="fixed()"> Percentage<input
					type="checkbox" id="show2" name="chkBox2" onclick="bonus1()">
				
	
	<form  action="${pageContext.request.contextPath}/docreatesalarynonsale"
		method="post">

		<table id="fixed" style="display: none;" class="formtable">

			<tr>
				<td class="label">Salary Id:</td>
				<td class="control"><input name="salariesId" type="text">
				</td>
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
				<td class="label">Salary:</td>
				<td class="control"><input name="salary" type="text"></td>
			</tr>
			

			<tr >
				<td class="label">Fixed bonus:</td>
				<td class="control"><input name="bonus" type="text"></td>
			</tr>
			
			<tr>
			<td class="label"></td>
			<td class="control"><input type="submit" value="Add new salary">
			</td>
			</tr>

		</table>

	</form>
		<form action="${pageContext.request.contextPath}/docreatesalarysale"
		method="post">

		<table  id="percnt" style="display: none;" class="formtable">

			<tr>
				<td class="label">Salary Id:</td>
				<td class="control"><input name="salariesId" type="text">
				</td>
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
				<td class="label">Salary:</td>
				<td class="control"><input name="salary" type="text"></td>
			</tr>
			

			
			<tr >
				<td class="label">Bonus in percnt:</td>
				<td class="control"><input name="commision" type="text"></td>
			</tr>
			<tr>
			<td class="label"></td>
			<td class="control"><input type="submit" value="Add new salary">
			</td>
			</tr>

		</table>

	</form>
</body>
</html>