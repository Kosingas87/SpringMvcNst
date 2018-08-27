<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home page</title>
</head>
<body>
<p> Test da li radi<p>
<p> <a href="${pageContext.request.contextPath}/employees"> Show all employees</a></p>
<p> <a href="${pageContext.request.contextPath}/addemployees"> Add new employee</a></p>

<p> <a href="${pageContext.request.contextPath}/titles"> Show all titles</a></p>
<p> <a href="${pageContext.request.contextPath}/addtitles"> Add new title</a></p>

<p> <a href="${pageContext.request.contextPath}/departments"> Show all departments</a></p>
<p> <a href="${pageContext.request.contextPath}/adddepartment"> Add new department</a></p>
<p> <a href="${pageContext.request.contextPath}/depemp">Show employees in departments</a></p>
<p> <a href="${pageContext.request.contextPath}/adddepemp"> Add employee to department</a></p>
</body>
</html>