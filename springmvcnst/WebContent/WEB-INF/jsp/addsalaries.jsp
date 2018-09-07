<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	 <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

        <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    
    <script>
   
    function bonus1() {
		if (document.getElementById('show2').checked) {
			var result_styles = document.getElementById('percnt').style;
			result_styles.display = 'block';
		} else {
			var result_styles = document.getElementById('percnt').style;
			result_styles.display = 'none';

		}
	}

	function fixed() {
		if (document.getElementById('show1').checked) {
			var result_style = document.getElementById('fixed').style;
			result_style.display = 'block';
		} else {
			var result_style = document.getElementById('fixed').style;
			result_style.display = 'none';

		}
	}
    function validateFormSalary2(){
		//checking the id
		var salariesId = document.forms["myformsalary2"]["salariesId"]
		if (salariesId.value == ""){
			alert("Please enter  salaries Id");
			document.myformsalary2.salariesId.focus();
			return false;
		} else {
            var regExpSalariesId = /^^[1-9][0-9]?$|^100$/;
			if (!regExpSalariesId.test(salariesId.value)){
				alert("Please enter salaries id in correct format 1- 100");
				document.myformsalary2.salariesId.focus();
				return false;
			} 
			
		
		}
        //checking the salary
		var salary = document.forms["myformsalary2"]["salary"]
		if (salary.value == ""){
			alert("Please enter salary name");
			document.myformsalary2.salary.focus();
			return false;
		} else {
			var regExpSalary = /^[0-9]*$/;
			if (!regExpSalary.test(salary.value)){
				alert("Please enter salary in correct format");
				document.myformsalary2.salary.focus();
				return false;
			} 
            if (salary.value<25000 || salary.value>1000000){
                    alert("Salary must be between 25000 and 1000000");
                    document.myformsalary2.salary.focus();
			return false;
            }
		}
       // check from date
		var fromDate = document.forms["myformsalary2"]["fromDate"]
		if(fromDate.value == ""){
			alert("Please enter from date");
			document.myformsalary2.fromDate.focus();
			return false;
		} else {
			
			var regExpFromDate =/^(19[8-9]\d|20[0-4]\d|2050)\-(0[1-9]|1[012])\-(0[1-9]|[12][0-9]|3[01])$/;
			if(!regExpFromDate.test(fromDate.value)){
				alert("From date is not in correct format");
				document.myformsalary2.fromDate.focus();
				return false;
			}
		}
      //  check to date
		var toDate = document.forms["myformsalary2"]["toDate"]
		if(toDate.value == ""){
			alert("Please enter to date");
			document.myformsalary2.toDate.focus();
			return false;
		} else {
			
			var regExpToDate = /^(19[8-9]\d|20[0-4]\d|2050)\-(0[1-9]|1[012])\-(0[1-9]|[12][0-9]|3[01])$/;
			if(!regExpToDate.test(toDate.value)){
				alert("To date is not in correct format");
				document.myformsalary2.toDate.focus();
				return false;
			}
		}
        //check if the employee was selected
		if (document.getElementById("employee").value == "0"){
			alert("You must select employee");
			return false;
		}
		 //checking bonus
		var bonus = document.forms["myformsalary2"]["bonus"]
		if (bonus.value == ""){
			alert("Please enter bonus");
			document.myformsalary2.bonus.focus();
			return false;
		} else {
			var regExpSalary = /^[0-9]*$/;
			if (!regExpSalary.test(bonus.value)){
				alert("Please enter bonus in correct format");
				document.myformsalary2.bonus.focus();
				return false;
			} 
            if (bonus.value<1000 || bonus.value>50000){
                    alert("Bonus must be between 1000 and 50000");
                    document.myformsalary2.bonus.focus();
			return false;
            }
		}
		 //checking bonus
		var percnt = document.forms["myformsalary2"]["commision"]
		if (percnt.value == ""){
			alert("Please enter percent");
			 document.myformsalary2.commision.focus();
			return false;
		} else {
			var regExpSalary = /^[0-9]*$/;
			if (!regExpSalary.test(percnt.value)){
				alert("Please enter percent in correct format");
				 document.myformsalary2.commision.focus();
				return false;
			} 
            if (percnt.value<5 || percnt.value>50){
                    alert("Percent must be between 5 and 50");
                    document.myformsalary2.commision.focus();
			return false;
            }
		}
        
        }
            function validateFormSalary(){
			//checking the id
			var salariesId = document.getElementById("salariesId");
			if (salariesId.value == ""){
				alert("Please enter  salaries Id");
				salariesId.focus();
				return false;
			} else {
                var regExpSalariesId = /^^[1-9][0-9]?$|^100$/;
				if (!regExpSalariesId.test(salariesId.value)){
					alert("Please enter salaries id in correct format 1- 100");
					salariesId.focus();
					return false;
				} 
				
			
			}
            //checking the salary
			var salary = document.getElementById("salary");
			if (salary.value == ""){
				alert("Please enter salary name");
				salary.focus();
				return false;
			} else {
				var regExpSalary = /^[0-9]*$/;
				if (!regExpSalary.test(salary.value)){
					alert("Please enter salary in correct format");
					salary.focus();
					return false;
				} 
                if (salary.value<25000 || salary.value>1000000){
                        alert("Salary must be between 25000 and 1000000");
				salary.focus();
				return false;
                }
			}
           // check from date
			var fromDate = document.getElementById("fromDate");
			if(fromDate.value == ""){
				alert("Please enter from date");
				fromDate.focus();
				return false;
			} else {
				
				var regExpFromDate =/^(19[8-9]\d|20[0-4]\d|2050)\-(0[1-9]|1[012])\-(0[1-9]|[12][0-9]|3[01])$/;
				if(!regExpFromDate.test(fromDate.value)){
					alert("From date is not in correct format");
					fromDate.focus();
					return false;
				}
			}
          //  check to date
			var toDate = document.getElementById("toDate");
			if(toDate.value == ""){
				alert("Please enter to date");
				toDate.focus();
				return false;
			} else {
				
				var regExpToDate = /^(19[8-9]\d|20[0-4]\d|2050)\-(0[1-9]|1[012])\-(0[1-9]|[12][0-9]|3[01])$/;
				if(!regExpToDate.test(toDate.value)){
					alert("To date is not in correct format");
					toDate.focus();
					return false;
				}
			}
            //check if the employee was selected
			if (document.getElementById("employee").value == "0"){
				alert("You must select employee");
				return false;
			}
			 //checking bonus
			var salary = document.getElementById("bonus");
			if (salary.value == ""){
				alert("Please enter bonus");
				bonus.focus();
				return false;
			} else {
				var regExpSalary = /^[0-9]*$/;
				if (!regExpSalary.test(salary.value)){
					alert("Please enter bonus in correct format");
					bonus.focus();
					return false;
				} 
                if (salary.value<1000 || salary.value>50000){
                        alert("Bonus must be between 1000 and 50000");
				bonus.focus();
				return false;
                }
			}
			 //checking bonus
			var salary = document.getElementById("percnt");
			if (salary.value == ""){
				alert("Please enter percent");
				commision.focus();
				return false;
			} else {
				var regExpSalary = /^[0-9]*$/;
				if (!regExpSalary.test(salary.value)){
					alert("Please enter percent in correct format");
					commision.focus();
					return false;
				} 
                if (salary.value<5 || salary.value>50){
                        alert("Bonus must be between 5 and 50");
                        commision.focus();
				return false;
                }
			}
            
            }
            
            function validateFormTitle(){
			//checking the id
			var titleId = document.getElementById("titleId");
			if (titleId.value == ""){
				alert("Please enter  title Id");
				titleId.focus();
				return false;
			} else {
                var regExpTitleId = /^^[1-9][0-9]?$|^100$/;
				if (!regExpTitleId.test(titleId.value)){
					alert("Please enter title id in correct format 1- 100");
					titleId.focus();
					return false;
				} 
				
			
			}
            //checking the title name
			var title = document.getElementById("title");
			if (title.value == ""){
				alert("Please enter your title name");
				title.focus();
				return false;
			} else {
				var regExpTitle = /^[A-Z][a-z]+(\s[A-Z][a-z]+)*$/;
				if (!regExpTitle.test(title.value)){
					alert("Please enter title name in correct format");
					title.focus();
					return false;
				} 
			}
            //check from date
			var fromDate = document.getElementById("fromDate");
			if(fromDate.value == ""){
				alert("Please enter from date");
				fromDate.focus();
				return false;
			} else {
				
				var regExpFromDate = /^(|(0[1-9])|(1[0-2]))\/((0[1-9])|(1\d)|(2\d)|(3[0-1]))\/((\d{4}))$/;
				if(!regExpFromDate.test(fromDate.value)){
					alert("From date is not in correct format");
					fromDate.focus();
					return false;
				}
			}
            //check to date
			var toDate = document.getElementById("toDate");
			if(toDate.value == ""){
				alert("Please enter to date");
				toDate.focus();
				return false;
			} else {
				
				var regExpToDate = /^(|(0[1-9])|(1[0-2]))\/((0[1-9])|(1\d)|(2\d)|(3[0-1]))\/((\d{4}))$/;
				if(!regExpToDate.test(toDate.value)){
					alert("To date is not in correct format");
					toDate.focus();
					return false;
				}
			}
            //check if the employee was selected
			if (document.getElementById("employee").value == "0"){
				alert("You must select employee");
				return false;
			}
			 
            
            }
            
            
            function validateFormDepartment(){
			//checking the id
			var departmentId = document.getElementById("departmentId");
			if (departmentId.value == ""){
				alert("Please enter  department Id");
				departmentId.focus();
				return false;
			} else {
                var regExpDepartmentId = /^^[1-9][0-9]?$|^100$/;
				if (!regExpDepartmentId.test(departmentId.value)){
					alert("Please enter department name in correct format 1- 100");
					departmentId.focus();
					return false;
				} 
				
			
			}
            //checking the department name
			var departmentName = document.getElementById("departmentName");
			if (departmentName.value == ""){
				alert("Please enter your department name");
				departmentName.focus();
				return false;
			} else {
				var regExpDepartmentName = /^[A-Z][a-z]+(\s[A-Z][a-z]+)*$/;
				if (!regExpDepartmentName.test(departmentName.value)){
					alert("Please enter department name in correct format");
					departmentName.focus();
					return false;
				} 
			}}
    		function validateForm(){
                //checking the id
			var employeeId = document.getElementById("employeeId");
			if (employeeId.value == ""){
				alert("Please enter  employee Id");
				employeeId.focus();
				return false;
			} else {
                var regExpEmployeeId = /^^[1-9][0-9]?$|^100$/;
				if (!regExpEmployeeId.test(employeeId.value)){
					alert("Please enter employee id in correct format 1- 100");
					employeeId.focus();
					return false;
				} 
				
			
			}
			//checking the First name
			var firstName = document.getElementById("firstName");
			if (firstName.value == ""){
				alert("Please enter your first name");
				name.focus();
				return false;
			} else {
				var regExpFirstName = /^[A-Z][a-z]+$/;
				if (!regExpFirstName.test(firstName.value)){
					alert("Please enter first name in correct format");
					firstName.focus();
					return false;
				} 
			}
            //checking the last name
			var lastName = document.getElementById("lastName");
			if (lastName.value == ""){
				alert("Please enter your last name");
				lastName.focus();
				return false;
			} else {
				var regExpLastName = /^[A-Z][a-z]+$/;
				if (!regExpLastName.test(lastName.value)){
					alert("Please enter last name in correct format");
					lastName.focus();
					return false;
				} 
			}
            //check if the gender is selected
			if (document.getElementById("gender").value == "0"){
				alert("You must select gender");
				return false;
			}
			//check birth date
			var birthDate = document.getElementById("birthDate");
			if(birthDate.value == ""){
				alert("Please enter your birth date");
				birthDate.focus();
				return false;
			} else {
				
				var regExpBirthDate = /^(|(0[1-9])|(1[0-2]))\/((0[1-9])|(1\d)|(2\d)|(3[0-1]))\/((\d{4}))$/;
				if(!regExpBirthDate.test(birthDate.value)){
					alert("Birth date is not in correct format");
					date.focus();
					return false;
				}
			}
            //check hire date
			var hireDate = document.getElementById("hireDate");
			if(hireDate.value == ""){
				alert("Please enter your hire date");
				hireDate.focus();
				return false;
			} else {
				
				var regExpHireDate = /^(|(0[1-9])|(1[0-2]))\/((0[1-9])|(1\d)|(2\d)|(3[0-1]))\/((\d{4}))$/;
				if(!regExpHireDate.test(hireDate.value)){
					alert("Hire date is not in correct format");
					hireDate.focus();
					return false;
				}
			}
			//check email
			var email = document.getElementById("email");
			if(email.value == ""){
				alert("Please enter your email");
				email.focus();
				return false;
			} else {
				//validate email
				var regExpEmail = 	
/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
				if(!regExpEmail.test(email.value)){
					alert("Email is not in correct format");
					email.focus();
					return false;
				}
			}

			//check if the city was selected
			if (document.getElementById("city").value == "0"){
				alert("You must provide your city");
				return false;
			}
            //checking the university
			var university = document.getElementById("university");
			if (university.value == ""){
				alert("Please enter your university");
				university.focus();
				return false;
			} else {
				var regExpUniversity = /^(Fakultet organizacionih nauka|Elektro tehnicki fakultet|Singidunum|Megatrend|Prirodno matematicki fakultet)$/;
				if (!regExpUniversity.test(university.value)){
					alert("Your university name does not match our needs, u must choose corect university name from autocomplete");
					university.focus();
					return false;
				} 
			}
				
		}
		
	
	

            $(document).ready(function(){
		$(function(){
			var university = [
				"Fakultet organizacionih nauka",
				"Elektro tehnicki fakultet",
				"Singidunum",
				"Megatrend",
                "Prirodno matematicki fakultet"
				
				
			];
			
			$("#university").autocomplete({
				source: university
			});
			
		});
		});
        $(document).ready(function () {
            $(".fadeto").click(function () {
                $("p.partial").fadeTo(2000, 1);
                $("p.complete1").fadeTo(4000, 1);
                $("p.complete2").fadeTo(6000, 1);
                $("p.complete3").fadeTo(8000, 1);
                $("p.complete4").fadeTo(9000, 1);
                $("p.complete5").fadeTo(10000, 1);
            });
        });
        $(function () {
            $("#sort1").sortable();
        });
        $(document).ready(function () {
            $("#tired").click(function () {
                $(".hide").hide();
            });
        });
        $(function () {
            $("#button1, #button2, #open").button();

        });
        $(function () {
            $("#dialog1").dialog({
                autoOpen: false,

                buttons: {
                    OK: function () { $(this).dialog("close"); }
                },

                title: "Cycling",

                position: {
                    my: " center", at: " center"
                }

            });

            $("#open").click(function () {
                $("#dialog1").dialog("open");
            });
        });
        $(function () {
            $("#datepicker-2").datepicker();
            $("#birthDate").datepicker({dateFormat : 'yy-mm-dd'});
            $("#hireDate").datepicker({dateFormat : 'yy-mm-dd'});
            $("#fromDate").datepicker({dateFormat : 'yy-mm-dd'});
            $("#toDate").datepicker({dateFormat : 'yy-mm-dd'});
            
        });

        $(document).ready(function singleClick() {

            $(".start").click(function () {
                $("#anime").animate({ width: "100%" }, "slow").animate({ borderWidth: "30px" }, "slow").animate({ fontSize: "20px" }, "slow");
                $("footer").focus();
            });



        });
        function regular_map() {

            var var_location = new google.maps.LatLng(44.787197, 20.457273);

            var var_mapoptions = {
                center: var_location,
                zoom: 14
            };

            var var_map = new google.maps.Map(document.getElementById("map-container"),
                var_mapoptions);

            var var_marker = new google.maps.Marker({
                position: var_location,
                map: var_map,
                title: "Belgrade"
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
               
                <h1>Add new salary for employee</h1>
                
	<div class="alert alert-light text-center" role="alert">
					<h4 style="color: green;">${message}</h4>

				</div>
				<p>Type of bonus:</p>
				<div class="form-check form-check-inline">
  <input class="form-check-input" type="checkbox" id="show1"
					name="chkBox" onclick="fixed()">
  <label class="form-check-label" for="inlineCheckbox1">Fixed</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="checkbox"  id="show2" name="chkBox2" onclick="bonus1()">
  <label class="form-check-label" for="inlineCheckbox2">Percentage</label>
</div>

				
					
					<div id="mydiv1">
              	<form id="fixed" style="display: none; " name="myformsalary" method="POST"
					action="${pageContext.request.contextPath}/docreatesalarynonsale"
					onsubmit="return validateFormSalary()">

					<div class="form-group row">
						<label for="salariesId" class="col-sm-2 col-form-label">Id:</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" name="salariesId"
								id="salariesId" placeholder="1-100">
						</div>
					</div>
					<div class="form-group row">
						
						<label for="employee" class="col-sm-2 col-form-label">Select
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
						<label for="fromDate" class="col-sm-2 col-form-label">From
							date:</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" id="fromDate"
								name="fromDate" placeholder="yyyy-mm-dd">
						</div>
					</div>
					<div class="form-group row">
						<label for="toDate" class="col-sm-2 col-form-label">To
							date:</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" id="toDate" name="toDate"
								placeholder="yyyy-mm-dd">
						</div>
					</div>
					<div class="form-group row">
						<label for="salary" class="col-sm-2 col-form-label">Salary:</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" id="salary" name="salary"
								placeholder="60000">
						</div>
					</div>
					<div class="form-group row">
						<label for="bonus" class="col-sm-2 col-form-label">Fixed bonus:</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" id="bonus" name="bonus"
								placeholder="10000">
						</div>
					</div>



					<div class="form-group row">
						<div class="col-sm-10">
							<button type="submit" class="btn btn-primary">Add salary
							</button>
						</div>
					</div>
				</form>
				</div>
				<div id="mydiv2">
				<form id="percnt" style="display: none;" name="myformsalary2" method="POST"
					action="${pageContext.request.contextPath}/docreatesalarysale"
					onsubmit="return validateFormSalary2()">

					<div class="form-group row">
						<label for="salariesId" class="col-sm-2 col-form-label">Id:</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" name="salariesId"
								id="salariesId" placeholder="1">
						</div>
					</div>
					<div class="form-group row">
						
						<label for="employee" class="col-sm-2 col-form-label">Select
									employee</label>
							<div class="input-group-prepend col-sm-8">
								
							
							<select class="custom-select" id="empId1" name="empId">
								<c:forEach var="employee" items="${employees}">
									<option value="${employee.empId}">${employee.firstName}
										${employee.lastName}</option>
								</c:forEach>
							</select>
							
						</div>

					</div>

					<div class="form-group row">
						<label for="fromDate" class="col-sm-2 col-form-label">From
							date:</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" id="fromDate"
								name="fromDate" placeholder="yyyy-mm-dd">
						</div>
					</div>
					<div class="form-group row">
						<label for="toDate" class="col-sm-2 col-form-label">To
							date:</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" id="toDate" name="toDate"
								placeholder="yyyy-mm-dd">
						</div>
					</div>
					<div class="form-group row">
						<label for="salary" class="col-sm-2 col-form-label">Salary:</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" id="salary" name="salary"
								placeholder="60000">
						</div>
					</div>
					<div class="form-group row">
						<label for="commision" class="col-sm-2 col-form-label">Bonus in percent:</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" id="commision" name="commision"
								placeholder="10000">
						</div>
					</div>



					<div class="form-group row">
						<div class="col-sm-10">
							<button type="submit" class="btn btn-primary">Add salary
							</button>
						</div>
					</div>
				</form>
</div>

                <hr>


                <br/>


                <br/>
                <div id="dialog1" title="Cycling">Cycling in your free time will bring you up!!
                    <br/>

                    <br/>
                    <img src="resources/img/cycling.jpg" alt="cycling" class="img-thumbnail">

                </div>

            </div>
			<%@include file="rightsidebar.jsp"  %>
       

            <footer class="container-fluid text-center">

                <div id="map-container" class="z-depth-1" style="height: 300px"></div>
        </div>


        <div id="footer1" class=" container-fluid row">
            <p id="anime">
                <button type="button" class="start reset">Copyright &copy; web design. All rights reserved. | Engineering Software Lab | Stefan Vasić</button>
            </p>
        </div>
        </footer>


</body>

</html>