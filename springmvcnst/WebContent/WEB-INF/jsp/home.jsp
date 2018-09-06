
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
 <link href="${pageContext.request.contextPath}/static/css/style.css" rel="stylesheet" type="text/css">


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
   
    <script>
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


    <div class="container-fluid     text-center">
        <div class="row content   ">
            <%@include file="acordionleft.jsp"  %>
            

            <div id="body" class="col-xlg-12  col-md-12 text-left col-12 col-lg-8  container-fluid ">
            <br>
                <h1>Welcome to our company</h1>
                <section class="container-fluid py-4" data-width="100%" >
                    <div class="row">
                        <div class="col-md-12">

                            <ul id="tabsJustified" class="nav nav-tabs">
                                <li class="nav-item">
                                    <a href="" data-target="#home1" data-toggle="tab" class="nav-link small text-uppercase active">Business</a>
                                </li>
                                <li class="nav-item">
                                    <a href="" data-target="#profile1" data-toggle="tab" class="nav-link small text-uppercase ">Support</a>
                                </li>
                                <li class="nav-item">
                                    <a href="" data-target="#messages1" data-toggle="tab" class="nav-link small text-uppercase">Motivation</a>
                                </li>
                            </ul>
                            <br>
                            <div id="tabsJustifiedContent" class="tab-content ">
                                <div id="home1" class="tab-pane fade active show">
                                    <div class="row pb-2">
                                        <div class="col-md-12">
                                                <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="${pageContext.request.contextPath}/static/resources/img/slider1.jpg" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="${pageContext.request.contextPath}/static/resources/img/slider2.jpg" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="${pageContext.request.contextPath}/static/resources/img/slider3.jpg" alt="Third slide">
    </div>
  </div>
</div>
                                        </div>
                                    </div>
                                </div>
                                <div id="profile1" class="tab-pane fade ">
                                    <div class="row pb-2">
                                        <div class="col-md-7">

                                            <h3 id="searchsup">We are here to help!
                                            </h3>

                                            <br/>
                                            <div id="support" class="input-group mb-3">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text" id="basic-addon1">
                                                        <ion-icon name="search"></ion-icon>
                                                    </span>
                                                </div>
                                                <input type="text" class="form-control" placeholder="Search support" aria-label="search" aria-describedby="basic-addon1">
                                            </div>
                                            <br>
                                            <br>
                                            <br>
                                        </div>

                                    </div>
                                </div>
                                <div id="messages1" class="tab-pane fade">
                                    <br>
                                    <div id="fading">
                                    <button id="button2" type="button" class="fadeto">Show motivations and sort it on your own!</button>
                                    <br>
                                    <br>
                                    <br>
                                    <ul id="sort1">
                                    <li><p class="partial">Honest, frequent two-way communication between workers and managers, including constructive discussion of workplace issues.</p></li>
                                    <li><p class="complete"> Ensure every employee has a challenge plan and is periodically asked to rate the degree of job excitement.</p></li>
                                    <li><p class="complete2">Reward managers for developing their employees and make sure that employees are held accountable for following through on their individual learning plans.</p></li>
                                    <li><p class="complete3">Make it clear what the incentives are and reward fairly across all departments so employees see the benefits of effort.</p></li>
                                    <li><p class="complete4">You've employed you
                                    r staff to do a job, so let them do it. Trust people to be able to shape the way they work and the projects they get involved in.</p></li>
                                    <li><p class="complete5">- Provide employees with periodic reports on the effect their projects are having on the business so they know their work makes a difference.  </p></li>
                                </ul>
                                    </div> 
                                </div>
                            </div>
                        </div>
                    </div>
                </section>



                <hr>
                <h2>Company galery</h2>

                <br/>
                <div class="row">

                    <div class="col-md-4">
                        <div class="thumbnail">
                            <a href="${pageContext.request.contextPath}/static/resources/img/full-resolution/company_1.jpg">
                                <img src="${pageContext.request.contextPath}/static/resources/img/low-resolution/company_1.jpg" alt="company1" style="width:100%">
                                <div class="caption">
                                    <p>Company comunication</p>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="thumbnail">
                            <a href="${pageContext.request.contextPath}/static/resources/img/full-resolution/company_2.jpg">
                                <img src="${pageContext.request.contextPath}/static/resources/img/low-resolution/company_2.jpg" alt="company2" style="width:100%">
                                <div class="caption">
                                    <p>Team work</p>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="thumbnail">
                            <a href="${pageContext.request.contextPath}/static/resources/img/full-resolution/company_3.jpg">
                                <img src="${pageContext.request.contextPath}/static/resources/img/low-resolution/company_3.jpg" alt="company3" style="width:100%">
                                <div class="caption">
                                    <p>Working enviroment</p>
                                </div>
                            </a>
                        </div>
                    </div>


                </div>
                <div class="row">

                    <div class="col-md-4">
                        <div class="thumbnail">
                            <a href="${pageContext.request.contextPath}/static/resources/img/full-resolution/company_4.jpg">
                                <img src="${pageContext.request.contextPath}/static/resources/img/low-resolution/company_4.jpg" alt="company4" style="width:100%">
                                <div class="caption">
                                    <p>Company connections</p>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="thumbnail">
                            <a href="${pageContext.request.contextPath}/static/resources/img/full-resolution/company_5.jpg">
                                <img src="${pageContext.request.contextPath}/static/resources/img/low-resolution/company_5.jpg" alt="company5" style="width:100%">
                                <div class="caption">
                                    <p>Company cloud</p>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="thumbnail">
                            <a href="${pageContext.request.contextPath}/static/resources/img/full-resolution/company_6.jpg">
                                <img src="${pageContext.request.contextPath}/static/resources/img/low-resolution/company_6.jpg" alt="company6" style="width:100%">
                                <div class="caption">
                                    <p>Company solutions</p>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
                <br/>
                <div id="dialog1" title="Cycling">Cycling in your free time will bring you up!!
                    <br/>

                    <br/>
                    <img src="${pageContext.request.contextPath}/static/resources/img/cycling.jpg" alt="cycling" class="img-thumbnail">

                </div>

            </div>

           <%@include file="rightsidebar.jsp"  %>

        <footer class="container-fluid  row text-center">
        
            <div id="map-container" class="z-depth-1" style="height: 300px"></div>
            </div>
            
        
        <div id="footer1" class=" container-fluid ">
        <p id="anime">
                <button type="button" class="start reset">Copyright &copy; web design. All rights reserved. | Engineering Software Lab | Stefan Vasić</button>
            </p>
        </div>
        </footer>


</body>

</html>