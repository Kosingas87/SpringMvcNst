	 <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>


        <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!DOCTYPE html>
<html lang="en">

<head>


    <meta charset="utf-8">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
     <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <link href="https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel="stylesheet">

    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
    <script src="https://unpkg.com/ionicons@4.4.2/dist/ionicons.js"></script>
    <script src="https://maps.google.com/maps/api/js?key=AIzaSyB05Lu_HJONKdZ-_5gusGWznK9ryY2gcog"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
        crossorigin="anonymous">
	<link href="https://cdn.datatables.net/1.10.18/css/dataTables.bootstrap4.min.css" rel="stylesheet">
	<script type="text/javascript" src="https://cdn.datatables.net/1.10.18/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/1.10.18/js/dataTables.bootstrap4.min.js"></script>
    <link href="${pageContext.request.contextPath}/static/css/style.css" rel="stylesheet" type="text/css">







    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
   
    <script>
    $(document).ready(function () {
    	  $('#dtBasicExample').DataTable();
    	  $('.dataTables_length').addClass('bs-select');
    	});
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
            $("#birthDate").datepicker();
            $("#hireDate").datepicker();
            $("#fromDate").datepicker();
            $("#toDate").datepicker();
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
                <h1>All employees</h1>
                <br>
<div class="table-responsive">
        <table id="dtBasicExample" class="table table-striped table-bordered table-sm scrollX" cellspacing="0" width="100%"  >
  <caption>List of employees</caption>
  <thead>
                    <tr>
                        <th>ID  </th>
                        <th>First name  </th>                    
                        <th>Last name </th>
                        <th>Gender </th>
                        <th>Birth date </th>
                        <th>Hire date  </th>
                        <th>Delete </th>
                        <th>Update </th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="employee" items="${employees}">
                        <tr>
                            <td>${employee.empId}</td>
                            <td>${employee.firstName}</td>                        
                            <td>${employee.lastName}</td>
                            <td>${employee.gender}</td>
                            <td>${employee.birthDate}</td>
                            <td>${employee.hireDate}</td>
                                     
                            <td><a onclick="if(!(confirm('Are u sure u want to delete? '))) return false" href="${pageContext.request.contextPath}/deleteemployee?empId=${employee.empId}">Delete</a>
                            </td>
                            <td><a href="${pageContext.request.contextPath}/updateemployee?empId=${employee.empId}">Update</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
 
</table>
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