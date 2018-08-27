
        <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>All departments</title>
</head>
<body>

                <table class = "table" border="2" width="600" >
 
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Department</th>  
                        <th>Delete</th>  
                        <th>Update</th>                  
                                               
                        
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="department" items="${departments}">
                        <tr>
                            <td>${department.deptId}</td>
                            <td>${department.deptName}</td>                        
                            
                            
                                     
                            <td><a onclick="if(!(confirm('Are u sure u want to delete? '))) return false" href="${pageContext.request.contextPath}/deletedepartment?deptId=${department.deptId}">Delete</a>
                            </td>
                            <td><a href="${pageContext.request.contextPath}/updatedepartment?deptId=${department.deptId}">Update</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
               

</body>
</html>