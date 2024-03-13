<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.model.CandidateCommercialData"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Results Find Candidate Commercial Data By Id Commercial Data</title>
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
            <th>ID Candidate Cpmmercial Data</th>
            <th>ID Candidate</th>
            <th>Current Ral</th>
            <th>Proposed Ral</th>
            <th>Month Refund</th>
            <th>Business Cost</th>
            <th>Subsidy Flag</th>
            <th>Notes</th>
            <th>Update</th>
            <th>Delete</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="candidateCommercialData" items="${IdCandidateCommercial}">
            <tr>
                <td>${candidateCommercialData.idCandidateCommercial}</td>
                <td>${candidateCommercialData.getCandidate().getIdCandidate()}</td>
                <td>${candidateCommercialData.currentRal}</td>
                <td>${candidateCommercialData.proposedRal}</td>
                <td>${candidateCommercialData.monthRefund}</td>
                <td>${candidateCommercialData.businessCost}</td>
                <td>${candidateCommercialData.subsidyFlag}</td>
                <td>${candidateCommercialData.notes}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/candidate/preUpdateByIdCandidateCommercialData?idCandidateCommercialData=${candidateCommercialData.idCandidateCommercialData}">
                        <button type="button">Update</button>
                    </a>
                </td>
                <td>
                    <a href="${pageContext.request.contextPath}/candidate/deleteByIdCandidateCommercialData?idCandidateCommercialData=${candidateCommercialData.idCandidateCommercialData}">
                        <button type="button">Delete</button>  
                    </a>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>
</body>
</html>