
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

        <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>


    <meta charset="utf-8">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <link href="https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel="stylesheet">

    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
    <script src="https://unpkg.com/ionicons@4.4.2/dist/ionicons.js"></script>
    <script src="https://maps.google.com/maps/api/js?key=AIzaSyB05Lu_HJONKdZ-_5gusGWznK9ryY2gcog"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
        crossorigin="anonymous">




    <style>
        #body {
            min-height: 1000px;
        }

        .ui-widget-header,
        .ui-state-default,
        #button1,
        #button2,
        #open {
            box-shadow: 5px 5px 2px grey;
        }

        #footer1 {
            background: #5A5A66;
        }

        ui-button {
            background: lightblue;
            border: 1px solid blue;
            color: black;
            font-weight: bold;
        }

        #fading p {
            display: none;
            padding: 20px;
            background: #DDA0DD;

        }

        #fading li {

            list-style: none;
        }


        #tales1 {
            width: 100%;
        }

        #tales2 {
            width: 100%;
        }

        #tales3 {
            width: 100%;
        }

        .carousel-inner {
            width: 100%;

        }

        #partial1 {
            display: none;
            padding: 20px;
            background: #DDA0DD;
        }

        #partial2 {
            display: none;
            padding: 20px;
            background: #DDA0DD;
        }

        #support {
            margin: 0 33%;

        }

        #searchsup {
            margin: 20px 10px;
            margin-left: 30px;
            color: #052644;
        }

        #profile1 {
            background-image: url("resources/img/search2.jpg");

        }

        #tired {
            margin: auto;
        }

        #cycling img {
            margin: auto;
        }

        #slider1 {
            max-width: 200px;
            margin: auto;
        }

        #dp {
            max-width: 200px;
            margin: auto;
        }

        #accordion-1 p {
            max-width: 200px;
        }

        .ui-datepicker {
            width: 200px;
            /*what ever width you want*/
            font-size: 16px;

        }

        .ui-accordion .ui-accordion-icons {
            padding-left: 10px;
        }

        #dp {
            padding: auto;
            margin: auto;
        }



        #rightsidebar {
            background: silver;

        }

        #demo {
            text-align: left;
        }

        #sidebarleft {
            background: silver;
        }

        .ui-state-active,
        .ui-widget-content .ui-state-active,
        .ui-widget-header .ui-state-active {
            color: #b525a3;
            border: 1px solid #b525a3;
        }

        #anime {
            max-width: 800px;
            width: 450px;

            font: 10px sans-serif;
            margin: auto;
            border: 1px solid #b525a3;
            background: silver;
            box-sizing: "border-box";
        }

        footer {
            background: #5A5A66;
        }

        .ui-widget-content {
            border: 1px solid #dddddd;
            background: #dadada url(resources/img/ui-bg_highlight-soft_100_eeeeee_1x100.png) 50% top repeat-x;
            color: #333333;
        }

        #ded9d9
    </style>





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

        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">Company</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
            aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">

                <li class="nav-item active">
                    <a class="nav-link" href="index.html">
                        <ion-icon name="home"></ion-icon> Home</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
                        aria-expanded="false">
                        <ion-icon name="contacts"></ion-icon> Employees
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="${pageContext.request.contextPath}/employees">Show all employees</a>
                        <a class="dropdown-item" href="${pageContext.request.contextPath}/addemployees"">Add new employee</a>

                </li>

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
                        aria-expanded="false">
                        <ion-icon name="briefcase"></ion-icon> Departments
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="${pageContext.request.contextPath}/departments">Show all departments</a>
                        <a class="dropdown-item" href="${pageContext.request.contextPath}/adddepartment">Add new department</a>

                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
                        aria-expanded="false">
                        <ion-icon name="school"></ion-icon>
                        </span> Work titles
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="${pageContext.request.contextPath}/titles">Show all work titles for employeees</a>
                        <a class="dropdown-item" href="${pageContext.request.contextPath}/addtitles">Add new work titles for employee</a>

                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
                        aria-expanded="false">
                        <ion-icon name="cash"></ion-icon> Salaries
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="${pageContext.request.contextPath}\salaries">Show all salaries for employeees</a>
                        <a class="dropdown-item" href="${pageContext.request.contextPath}\addsalaries">Add new salary for employee</a>

                </li>
                 <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
                        aria-expanded="false">
                       <ion-icon name="people"></ion-icon> Employees in departments
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="${pageContext.request.contextPath}\depemp">Show all employees in departments</a>
                        <a class="dropdown-item" href="${pageContext.request.contextPath}\adddepemp">Add employee to department</a>

                </li>
                 <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
                        aria-expanded="false">
                       <ion-icon name="ribbon"></ion-icon> Managers in departments
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="${pageContext.request.contextPath}\deptmanagers">Show all managers in departments</a>
                        <a class="dropdown-item" href="${pageContext.request.contextPath}\adddeptmanager">Add manager to department</a>

                </li>
            </ul>
            <ul class="navbar-nav ml-auto">

                <li class="nav-item active">
                    <a class="nav-link" href="#">
                        <ion-icon name="log-in"></ion-icon> Sign in</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="#">
                        <ion-icon name="log-out"></ion-icon> Logout</a>
                </li>
            </ul>
            </div>
    </nav>


    <div class="container-fluid text-center">
        <div class="row content">
            <div id="sidebarleft" class="col-sm-2 sidenav container-fluid">

                <p></p>
                <div id="accordion" role="tablist">
                    <div class="card">

                        <div class="card-header" role="tab" id="headingOne">
                            <h5 class="mb-0">
                                <a data-toggle="collapse" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                    <p>Company locations</p>
                                </a>
                            </h5>
                        </div>

                        <div id="collapseOne" class="collapse show" role="tabpanel" aria-labelledby="headingOne" data-parent="#accordion">

                            <div class="card-body">
                                Berlin
                                <br/> London
                                <br/> Rome
                                <br/> Belgrade
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header" role="tab" id="headingTwo">
                            <h5 class="mb-0">
                                <a class="collapsed" data-toggle="collapse" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                    Company team buildings
                                </a>
                            </h5>
                        </div>
                        <div id="collapseTwo" class="collapse" role="tabpanel" aria-labelledby="headingTwo" data-parent="#accordion">
                            <div class="card-body">
                                Basketball
                                <br/> Skying
                                <br/> Table tennis
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header" role="tab" id="headingThree">
                            <h5 class="mb-0">
                                <a class="collapsed" data-toggle="collapse" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                    Company collective vacation
                                </a>
                            </h5>
                        </div>
                        <div id="collapseThree" class="collapse" role="tabpanel" aria-labelledby="headingThree" data-parent="#accordion">
                            <div class="card-body">
                                August: 10 days
                            </div>
                        </div>
                    </div>
                </div>
                <p></p>
                <button id="button1" data-toggle="collapse" data-target="#demo">Our Contact</button>

                <div id="demo" class="collapse">
                    <label>
                        <strong>Email:</strong>
                    </label>
                    <br/>
                    <label>company@company.com</label>
                </div>
            </div>
            <div id="body" class="col-sm-8 text-left container-fluid ">
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

            <div id="rightsidebar" class="col-sm-2 sidenav containter">
                <p></p>
                <div id="slider1" class="row">
                    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img class="d-block w-100" src="resources/img/banner.jpg" alt="Engineering logo">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100" src="resources/img/banner2.jpg" alt="logo">
                            </div>

                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>

                </div>
                <br/>
                <div id="dp" class="row">
                    <div id="datepicker-2"></div>
                </div>
                <br/>


                <p id="tired">
                    <button id="open" class="hide">Getting tired?</button>
                </p>
                <br/>



            </div>

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