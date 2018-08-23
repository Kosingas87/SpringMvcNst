
        <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>All employees</title>
</head>
<body>

                <table class = "table" border="2" width="600" >
 
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>First name</th>                    
                        <th>Last name</th>
                        <th>Gender</th>
                        <th>Birth date</th>
                        <th>Hire date</th>
                        <th>Delete</th>
                        <th>Update</th>
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
                                     
                            <td><a href="${pageContext.request.contextPath}/deleteemployee?empId=${employee.empId}">Delete</a>
                            </td>
                            <td><a href="../action/obrisi_kupca?kupacId=${employee.empId}">Update</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
               

</body>
</html>