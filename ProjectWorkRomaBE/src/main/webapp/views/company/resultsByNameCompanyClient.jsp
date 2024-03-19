<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Results Find by Name Company Client</title>
</head>
<body>
<div class="container">
    <img src="https://media4.giphy.com/media/v1.Y2lkPTc5MGI3NjExZDV3NzhzMTd3YWxiN2J6dG1ldGF4dXduMmdoNWp6YXI2b3JzenBpMiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9cw/eNwGfck2Awo3d2gB32/giphy.gif" width="200" alt="Weoplespace Sticker">
    <span>YOUR DATA</span>
</div>
<table>
    <thead>
        <tr>
        	<th>Company Client ID</th>
            <th>Address</th>
            <th>City</th>
            <th>Name</th>
            <th>Update</th>
            <th>Delete</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="companyClient" items="${CompanyClientName}">
            <tr>
            	
                <td>${companyClient.idCompanyClient}</td>
                <td>${companyClient.address}</td>
                <td>${companyClient.city}</td>
                <td>${companyClient.name}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/company/preUpdateByIdCompanyClient=${companyClient.idCompanyClient}">
                        <button type="button">Update</button>
                    </a>
                </td>
                <td>
                    <a href="${pageContext.request.contextPath}/company/deleteByIdCompanyClient=${companyClient.idCompanyClient}">
                        <button type="button">Delete</button>  
                    </a>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>
</body>
</html>