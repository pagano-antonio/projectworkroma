<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.model.JobOffer"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Results Find Job Offer by Maximum RAL</title>
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
            <th>Job Offer ID</th>
            <th>Title</th>
            <th>Description</th>
            <th>Start Date</th>
            <th>End Date</th>
            <th>Min Ral</th>
            <th>Max Ral</th>
            <th>Company Client ID</th>
            <th>Contract Type ID</th>
            <th>Update</th>
            <th>Delete</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="jobOffer" items="${maxRalJobOffer}">
            <tr>
                <td>${jobOffer.idJobOffer}</td>
                <td>${jobOffer.title}</td>
                <td>${jobOffer.description}</td>
                <td>${jobOffer.startDate}</td>
                <td>${jobOffer.endDate}</td>
                <td>${jobOffer.minRal}</td>
                <td>${jobOffer.maxRal}</td>
                <td>${jobOffer.getCompanyClient().getIdCompanyClient()}</td>
                <td>${jobOffer.getContractType().getIdContractType()}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/preUpdateByIdJobOffer?idJobOffer=${jobOffer.idJobOffer}">
                        <button type="button">Update</button>
                    </a>
                </td>
                <td>
                    <a href="${pageContext.request.contextPath}/job/deleteByIdJobOffer?idJobOffer=${jobOffer.idJobOffer}">
                        <button type="button">Delete</button>  
                    </a>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>
</body>
</html>