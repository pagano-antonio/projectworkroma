<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Results Find ID Company Client</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/results.css">
</head>
<body>

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
        <c:forEach var="companyClient" items="${IdCompanyClient}">
            <tr>
            	
                <td>${companyClient.idCompanyClient}</td>
                <td>${companyClient.address}</td>
                <td>${companyClient.city}</td>
                <td>${companyClient.name}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/preUpdateByIdCompanyClient?idCompanyClient=${companyClient.idCompanyClient}">
                        <button type="button">Update</button>
                    </a>
                </td>
                <td>
                    <a href="${pageContext.request.contextPath}/company/deleteByIdCompanyClient?idCompanyClient=${companyClient.idCompanyClient}">
                        <button type="button">Delete</button>  
                    </a>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>
</body>
</html>