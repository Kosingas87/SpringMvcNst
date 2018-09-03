
        <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>All salaries</title>
</head>
<body>

                <table class = "table" border="2" width="600" >
 
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>From date</th>                    
                        <th>To date</th>
                        <th>Salary</th>
                        <th>Employee </th>
                         <th>Delete</th>
                        <th>Update </th>
                        
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="salary" items="${salaries}">
                        <tr>
                            <td>${salary.salariesId}</td>
                            <td>${salary.fromDate}</td>                        
                            <td>${salary.toDate}</td>
                            <td>${salary.salary}</td>
                            <td>${salary.employee}</td>
                            
                            
                            
                                     
                            <td><a href="${pageContext.request.contextPath}/deletesalaries?salariesId=${salary.salariesId}">Delete</a>
                            </td>
                            <td><a href="${pageContext.request.contextPath}/updatesalaries?salariesId=${salary.salariesId}">Update</a>
                            </td>
                        </tr>
                        
                    </c:forEach>
                </tbody>
            </table>
               

</body>
</html>