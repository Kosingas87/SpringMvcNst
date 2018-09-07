
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

       <nav class="navbar navbar-expand-xl navbar-dark bg-dark">
        <a class="navbar-brand" href="#">Company</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
            aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">

                <li class="nav-item active">
                    <a class="nav-link" href="${pageContext.request.contextPath}/">
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
                       <ion-icon name="ribbon"></ion-icon> Managers
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="${pageContext.request.contextPath}\deptmanagers">Show all managers in departments</a>
                        <a class="dropdown-item" href="${pageContext.request.contextPath}\adddeptmanager">Add manager to department</a>

                </li>
            </ul>
            <ul class="navbar-nav ml-auto">

                
<!--                 <sec:authorize access="!isAuthenticated()"> -->
<%-- 	<c:url var="loginUrl" value="login" /> --%>
<%-- 	<form action="${loginUrl}" method="post"> --%>
<!-- 	<input type="submit" value="login">  -->
<%-- 	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token }">  --%>
<!-- </form> -->
<!-- 	</sec:authorize> -->
                <li class="nav-item active">
                                <sec:authorize access="!isAuthenticated()">
	<c:url var="loginUrl" value="login" />
	<form action="${loginUrl}" method="post">
	<input type="submit" class="btn btn-info"   value="login">
                  
                         <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token }"> 
                </form>
	</sec:authorize>
                
                    
                </li>
                <li class="nav-item active">
                <sec:authorize access="isAuthenticated()">
	<c:url var="logoutUrl" value="logout" />
	<form action="${logoutUrl}" method="post">
	<input type="submit" class="btn btn-info"   value="logout">
                   
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token }"> 
</form>
</sec:authorize>
                </li>
            </ul>
            </div>
    </nav>

	

    