<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.model.JobOffer"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Results Find Job Offer by Title</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
<div class="container">
    <img src="https://media4.giphy.com/media/v1.Y2lkPTc5MGI3NjExZDV3NzhzMTd3YWxiN2J6dG1ldGF4dXduMmdoNWp6YXI2b3JzenBpMiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9cw/eNwGfck2Awo3d2gB32/giphy.gif" width="200" alt="Weoplespace Sticker">
    <span>YOUR DATA</span>
</div>
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
        <c:forEach var="jobOffer" items="${JobOfferTitle}">
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
                    <a href="${pageContext.request.contextPath}/job/preUpdateByIdJobOffer?idJobOffer=${jobOffer.idJobOffer}">
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
 