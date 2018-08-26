
        <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>All titles</title>
</head>
<body>

                <table class = "table" border="2" width="600" >
 
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>From date</th>                    
                        <th>To date</th>
                        <th>Title</th>
                        <th>Employee </th>
                        
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="title" items="${titles}">
                        <tr>
                            <td>${title.titlesId}</td>
                            <td>${title.fromDate}</td>                        
                            <td>${title.toDate}</td>
                            <td>${title.title}</td>
                            <td>${title.employee}</td>
                            
                                     
                            <td><a href="${pageContext.request.contextPath}/deletetitle?titlesId=${title.titlesId}">Delete</a>
                            </td>
                            <td><a href="${pageContext.request.contextPath}/updatetitle?titlesId=${title.titlesId}">Update</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
               

</body>
</html>