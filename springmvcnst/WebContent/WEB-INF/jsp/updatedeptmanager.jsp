	 <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>


<meta charset="utf-8">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
	integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
	crossorigin="anonymous"></script>
<link
	href="https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"
	rel="stylesheet">

<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script src="https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<script src="https://unpkg.com/ionicons@4.4.2/dist/ionicons.js"></script>
<script
	src="https://maps.google.com/maps/api/js?key=AIzaSyB05Lu_HJONKdZ-_5gusGWznK9ryY2gcog"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
	<link href="${pageContext.request.contextPath}/static/css/style.css" rel="stylesheet" type="text/css">







<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

<script type="text/javascript">
function validateFormDeptManager() {
	//checking the id
	var deptManagerId = document.forms["myformdepemp"]["deptManagerId"];
	if (deptManagerId.value == "") {
		alert("Please enter Id");
		document.myformdepemp.deptManagerId.focus();
		return false;
	} else {
		var regExpTitleId = /^^[1-9][0-9]?$|^100$/;
		if (!regExpTitleId.test( deptManagerId.value)) {
			alert("Please enter  id in correct format 1- 100");
			document.myformdepemp.deptManagerId.focus();
			return false;
		}

	}
	
	
	//check from date
	var fromDate = document.forms["myformdepemp"]["fromDate"];
	if (fromDate.value == "") {
		alert("Please enter from date");
		document.myformdepemp.fromDate.focus();
		return false;
	} else {

		var regExpFromDate = /^(19[8-9]\d|20[0-4]\d|2050)\-(0[1-9]|1[012])\-(0[1-9]|[12][0-9]|3[01])$/;
		if (!regExpFromDate.test(fromDate.value)) {
			alert("From date is not in correct format");
			document.myformdepemp.fromDate.focus();
			return false;
		}
	}
	//check to date
	var toDate = document.forms["myformdepemp"]["toDate"]
	if (toDate.value == "") {
		alert("Please enter to date");
		document.myformdepemp.toDate.focus();
		return false;
	} else {

		var regExpToDate = /^(19[8-9]\d|20[0-4]\d|2050)\-(0[1-9]|1[012])\-(0[1-9]|[12][0-9]|3[01])$/;
		if (!regExpToDate.test(toDate.value)) {
			alert("To date is not in correct format");
			document.myformdepemp.toDate.focus();
			return false;
		}
	}
	

}
function validateFormDepEmp() {
	//checking the id
	var deptEmpId = document.forms["myformdepemp"]["deptEmpId"];
	if (deptEmpId.value == "") {
		alert("Please enter Id");
		document.myformdepemp.deptEmpId.focus();
		return false;
	} else {
		var regExpTitleId = /^^[1-9][0-9]?$|^100$/;
		if (!regExpTitleId.test( deptEmpId.value)) {
			alert("Please enter  id in correct format 1- 100");
			document.myformdepemp.deptEmpId.focus();
			return false;
		}

	}
	
	
	//check from date
	var fromDate = document.forms["myformdepemp"]["fromDate"];
	if (fromDate.value == "") {
		alert("Please enter from date");
		document.myformdepemp.fromDate.focus();
		return false;
	} else {

		var regExpFromDate = /^(19[8-9]\d|20[0-4]\d|2050)\-(0[1-9]|1[012])\-(0[1-9]|[12][0-9]|3[01])$/;
		if (!regExpFromDate.test(fromDate.value)) {
			alert("From date is not in correct format");
			document.myformdepemp.fromDate.focus();
			return false;
		}
	}
	//check to date
	var toDate = document.forms["myformdepemp"]["toDate"]
	if (toDate.value == "") {
		alert("Please enter to date");
		document.myformdepemp.toDate.focus();
		return false;
	} else {

		var regExpToDate = /^(19[8-9]\d|20[0-4]\d|2050)\-(0[1-9]|1[012])\-(0[1-9]|[12][0-9]|3[01])$/;
		if (!regExpToDate.test(toDate.value)) {
			alert("To date is not in correct format");
			document.myformdepemp.toDate.focus();
			return false;
		}
	}
	

}

	function validateFormSalary() {
		//checking the id
		var salariesId = document.getElementById("salariesId");
		if (salariesId.value == "") {
			alert("Please enter  salaries Id");
			salariesId.focus();
			return false;
		} else {
			var regExpSalariesId = /^^[1-9][0-9]?$|^100$/;
			if (!regExpSalariesId.test(salariesId.value)) {
				alert("Please enter salaries id in correct format 1- 100");
				salariesId.focus();
				return false;
			}

		}
		//checking the salary
		var salary = document.getElementById("salary");
		if (salary.value == "") {
			alert("Please enter salary name");
			salary.focus();
			return false;
		} else {
			var regExpSalary = /^[0-9]*$/;
			if (!regExpSalary.test(salary.value)) {
				alert("Please enter salary in correct format");
				salary.focus();
				return false;
			}
			if (salary.value<25000 || salary.value>1000000) {
				alert("Salary must be between 25000 and 1000000");
				salary.focus();
				return false;
			}
		}
		//             //check from date
		// 			var fromDate = document.getElementById("fromDate");
		// 			if(fromDate.value == ""){
		// 				alert("Please enter from date");
		// 				fromDate.focus();
		// 				return false;
		// 			} else {

		// 				var regExpFromDate = /^(19[5-9]\d|20[0-4]\d|2050)\-(0[1-9]|1[012])\-(0[1-9]|[12][0-9]|3[01])$/;
		// 				if(!regExpFromDate.test(fromDate.value)){
		// 					alert("From date is not in correct format");
		// 					fromDate.focus();
		// 					return false;
		// 				}
		// 			}
		//             //check to date
		// 			var toDate = document.getElementById("toDate");
		// 			if(toDate.value == ""){
		// 				alert("Please enter to date");
		// 				toDate.focus();
		// 				return false;
		// 			} else {

		// 				var regExpToDate =  /^(19[8-9]\d|20[0-4]\d|2050)\-(0[1-9]|1[012])\-(0[1-9]|[12][0-9]|3[01])$/;;
		// 				if(!regExpToDate.test(toDate.value)){
		// 					alert("To date is not in correct format");
		// 					toDate.focus();
		// 					return false;
		// 				}
		// 			}
		//check if the employee was selected
		if (document.getElementById("employee").value == "0") {
			alert("You must select employee");
			return false;
		}

	}

	function validateFormTitle() {
		//checking the id
		var titleId = document.forms["myformtitle"]["titlesId"];
		if (titleId.value == "") {
			alert("Please enter  title Id");
			document.myformtitle.titlesId.focus();
			return false;
		} else {
			var regExpTitleId = /^^[1-9][0-9]?$|^100$/;
			if (!regExpTitleId.test(titleId.value)) {
				alert("Please enter title id in correct format 1- 100");
				document.myformtitle.titlesId.focus();
				return false;
			}

		}
		//checking the title name
		var title = document.forms["myformtitle"]["title"];
		if (title.value == "") {
			alert("Please enter your title name");
			document.myformtitle.title.focus();
			return false;
		} else {
			var regExpTitle = /^[A-Z][a-z]+(\s[A-Z][a-z]+)*$/;
			if (!regExpTitle.test(title.value)) {
				alert("Please enter title name in correct format");
				document.myformtitle.title.focus();
				return false;
			}
		}
		//check from date
		var fromDate = document.forms["myformtitle"]["fromDate"];
		if (fromDate.value == "") {
			alert("Please enter from date");
			document.myformtitle.fromDate.focus();
			return false;
		} else {

			var regExpFromDate = /^(19[8-9]\d|20[0-4]\d|2050)\-(0[1-9]|1[012])\-(0[1-9]|[12][0-9]|3[01])$/;
			if (!regExpFromDate.test(fromDate.value)) {
				alert("From date is not in correct format");
				document.myformtitle.fromDate.focus();
				return false;
			}
		}
		//check to date
		var toDate = document.forms["myformtitle"]["toDate"]
		if (toDate.value == "") {
			alert("Please enter to date");
			document.myformtitle.toDate.focus();
			return false;
		} else {

			var regExpToDate = /^(19[8-9]\d|20[0-4]\d|2050)\-(0[1-9]|1[012])\-(0[1-9]|[12][0-9]|3[01])$/;
			if (!regExpToDate.test(toDate.value)) {
				alert("To date is not in correct format");
				toDate.focus();
				return false;
			}
		}
		//check if the employee was selected
		if (document.forms["myformtitle"]["employee"].value == "0") {
			alert("You must select employee");
			return false;
		}

	}

	function validateFormDepartment() {
		//checking the id
		var departmentId = document.forms["myformdepartment"]["deptId"]
		if (departmentId.value == "") {
			alert("Please enter  department Id");
			document.myformdepartment.deptId.focus();
			return false;
		} else {
			var regExpDepartmentId = /^^[1-9][0-9]?$|^100$/;
			if (!regExpDepartmentId.test(departmentId.value)) {
				alert("Please enter department name in correct format 1- 100");
				document.myformdepartment.deptId.focus();
				return false;
			}

		}
		//checking the department name
		var departmentName = document.forms["myformdepartment"]["deptName"]
		if (departmentName.value == "") {
			alert("Please enter your department name");
			document.myformdepartment.deptName.focus();
			return false;
		} else {
			var regExpDepartmentName = /^[A-Z][a-z]+(\s[A-Z][a-z]+)*$/;
			if (!regExpDepartmentName.test(departmentName.value)) {
				alert("Please enter department name in correct format");
				document.myformdepartment.deptName.focus();
				return false;
			}
		}
	}
	function validateForm() {
		//checking the id
		var empId = document.forms["myform"]["empId"].value;
		if (empId == "") {
			alert("Please enter  employee Id");
			document.myform.empId.focus();
			return false;
		} else {
			var regExpEmpId = /^^[1-9][0-9]?$|^100$/;
			if (!regExpEmpId.test(empId)) {
				alert("Please enter employee id in correct format 1- 100");
				document.myform.empId.focus();
				return false;
			}

		}
		//checking the First name
		var firstName = document.forms["myform"]["firstName"]
		if (firstName.value == "") {
			alert("Please enter your first name");
			document.myform.firstName.focus();
			return false;
		} else {
			var regExpFirstName = /^[A-Z][a-z]+$/;
			if (!regExpFirstName.test(firstName.value)) {
				alert("Please enter first name in correct format");
				document.myform.firstName.focus();
				return false;
			}
		}
		//checking the last name
		var lastName = document.forms["myform"]["lastName"]
		if (lastName.value == "") {
			alert("Please enter your last name");
			document.myform.lastName.focus();
			return false;
		} else {
			var regExpLastName = /^[A-Z][a-z]+$/;
			if (!regExpLastName.test(lastName.value)) {
				alert("Please enter last name in correct format");
				document.myform.lastName.focus();
				return false;
			}
		}
		//check if the gender is selected
		if (document.forms["myform"]["gender"].value == "0") {
			alert("You must select gender");
			return false;
		}
		//check birth date
		var birthDate = document.forms["myform"]["birthDate"];
		if (birthDate.value == "") {
			alert("Please enter your birth date");
			document.myform.birthDate.focus();
			return false;
		} else {

			var regExpBirthDate = /^(19[5-9]\d|20[0-4]\d|2050)\-(0[1-9]|1[012])\-(0[1-9]|[12][0-9]|3[01])$/;
			if (!regExpBirthDate.test(birthDate.value)) {
				alert("Birth date is not in correct format");
				document.myform.birthDate.focus();
				return false;
			}
		}
		//check hire date
		var hireDate = document.forms["myform"]["hireDate"];
		if (hireDate.value == "") {
			alert("Please enter your hire date");
			document.myform.hireDate.focus();
			return false;
		} else {

			var regExpHireDate = /^(19[8-9]\d|20[0-4]\d|2050)\-(0[1-9]|1[012])\-(0[1-9]|[12][0-9]|3[01])$/;
			if (!regExpHireDate.test(hireDate.value)) {
				alert("Hire date is not in correct format");
				document.myform.hireDate.focus();
				return false;
			}
		}

	}

	$(document).ready(
			function() {
				$(function() {
					var university = [ "Fakultet organizacionih nauka",
							"Elektro tehnicki fakultet", "Singidunum",
							"Megatrend", "Prirodno matematicki fakultet"

					];

					$("#university").autocomplete({
						source : university
					});

				});
			});
	$(document).ready(function() {
		$(".fadeto").click(function() {
			$("p.partial").fadeTo(2000, 1);
			$("p.complete1").fadeTo(4000, 1);
			$("p.complete2").fadeTo(6000, 1);
			$("p.complete3").fadeTo(8000, 1);
			$("p.complete4").fadeTo(9000, 1);
			$("p.complete5").fadeTo(10000, 1);
		});
	});
	$(function() {
		$("#sort1").sortable();
	});
	$(document).ready(function() {
		$("#tired").click(function() {
			$(".hide").hide();
		});
	});
	$(function() {
		$("#button1, #button2, #open").button();

	});
	$(function() {
		$("#dialog1").dialog({
			autoOpen : false,

			buttons : {
				OK : function() {
					$(this).dialog("close");
				}
			},

			title : "Cycling",

			position : {
				my : " center",
				at : " center"
			}

		});

		$("#open").click(function() {
			$("#dialog1").dialog("open");
		});
	});
	$(function() {
		$("#datepicker-2").datepicker();
		$("#birthDate").datepicker({
			dateFormat : 'yy-mm-dd'
		});
		$("#hireDate").datepicker({
			dateFormat : 'yy-mm-dd'
		});
		$("#fromDate").datepicker({
			dateFormat : 'yy-mm-dd'
		});
		$("#toDate").datepicker({
			dateFormat : 'yy-mm-dd'
		});
	});

	$(document).ready(function singleClick() {

		$(".start").click(function() {
			$("#anime").animate({
				width : "100%"
			}, "slow").animate({
				borderWidth : "30px"
			}, "slow").animate({
				fontSize : "20px"
			}, "slow");
			$("footer").focus();
		});

	});
	function regular_map() {

		var var_location = new google.maps.LatLng(44.787197, 20.457273);

		var var_mapoptions = {
			center : var_location,
			zoom : 14
		};

		var var_map = new google.maps.Map(document
				.getElementById("map-container"), var_mapoptions);

		var var_marker = new google.maps.Marker({
			position : var_location,
			map : var_map,
			title : "Belgrade"
		});

	};
	google.maps.event.addDomListener(window, 'load', regular_map);
</script>
</head>

<body>

	 <%@include file="mainnav.jsp"  %>


	<div class="container-fluid text-center">
		<div class="row content">
			<%@include file="acordionleft.jsp"  %>

			  <div id="body" class="col-xlg-12  col-md-12 text-left col-12 col-lg-8  container-fluid ">
				<br>
				<h1>Update  manager to the department</h1>


				<div class="alert alert-light text-center" role="alert">
					<h4 style="color: green;">${message}</h4>

				</div>
				<form name="myformdepemp" method="POST"
					action="${pageContext.request.contextPath}/doupdatedeptmanager"
					onsubmit="return validateFormDeptManager()">
	<c:forEach var="deptmanager" items="${deptmanagers}">
					<div class="form-group row">
						<label for="deptManagerId" class="col-sm-2 col-form-label">Id:</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" name="deptManagerId"
								id="deptManagerId" value="${deptmanager.deptManagerId}">
						</div>
					</div>
					<div class="form-group row">
						
						<label for="empId" class="col-sm-2 col-form-label">Select
									employee</label>
							<div class="input-group-prepend col-sm-8">
								
							
							<select class="custom-select" id="empId" name="empId">
								<c:forEach var="employee" items="${employees}">
									<option value="${employee.empId}">${employee.firstName}
										${employee.lastName}</option>
								</c:forEach>
							</select>
							
						</div>

					</div>
						<div class="form-group row">
						
						<label for="deptId" class="col-sm-2 col-form-label">Select
									department</label>
							<div class="input-group-prepend col-sm-8">
								
							
							<select class="custom-select" id="deptId" name="deptId">
								<c:forEach var="department" items="${departments}">
									<option value="${department.deptId}">${department.deptName}</option>
						</c:forEach>
							</select>
							
						</div>

					</div>

					<div class="form-group row">
						<label for="fromDate" class="col-sm-2 col-form-label">From
							date:</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" id="fromDate"
								name="fromDate" value="${deptmanager.fromDate}">
						</div>
					</div>
					<div class="form-group row">
						<label for="toDate" class="col-sm-2 col-form-label">To
							date:</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" id="toDate" name="toDate"
								value="${deptmanager.toDate}">
						</div>
					</div>
					



					<div class="form-group row">
						<div class="col-sm-10">
							<button type="submit" class="btn btn-primary">Update Manager
							</button>
						</div>
					</div>
					</c:forEach>
				</form>

				<hr>


				<br /> <br />
				<div id="dialog1" title="Cycling">
					Cycling in your free time will bring you up!! <br /> <br /> <img
						src="resources/img/cycling.jpg" alt="cycling"
						class="img-thumbnail">

				</div>

			</div>



		   <%@include file="rightsidebar.jsp"  %>

			<footer class="container-fluid text-center">

				<div id="map-container" class="z-depth-1" style="height: 300px"></div>
		</div>


		<div id="footer1" class=" container-fluid row">
			<p id="anime">
				<button type="button" class="start reset">Copyright &copy;
					web design. All rights reserved. | Engineering Software Lab |
					Stefan Vasić</button>
			</p>
		</div>
		</footer>
</body>

</html>