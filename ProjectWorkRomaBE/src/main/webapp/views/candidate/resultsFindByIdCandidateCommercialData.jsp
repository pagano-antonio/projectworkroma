<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.model.CandidateCommercialData"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Results Find Candidate Commercial Data By Id Commercial Data</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/results.css">
</head>
<body>

	<%
	CandidateCommercialData candidateCommercialData = (CandidateCommercialData) request.getAttribute("idCandidateCommercialData");
	%>

<table>
    <thead>
        <tr>
            <th>ID Candidate Commercial Data</th>
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
       <tr>
       			<td><%=candidateCommercialData.getIdCandidateCommercialData()%></td>
                <td><%=candidateCommercialData.getCandidate().getIdCandidate()%></td>
                <td><%=candidateCommercialData.getCurrentRal()%></td>
                <td><%=candidateCommercialData.getProposedRal()%></td>
                <td><%=candidateCommercialData.getMonthRefund()%></td>
                <td><%=candidateCommercialData.getBusinessCost()%></td>
                <td><%=candidateCommercialData.getSubsidyFlag()%></td>
                <td><%=candidateCommercialData.getNotes()%></td>
                <td>
                    <a href="${pageContext.request.contextPath}/preUpdateByIdCandidate?idCandidate=${idCandidateCommercialData.getCandidate().getIdCandidate()}">
                        <button type="button">Update</button>
                    </a>
                </td>
                <td>
                    <a href="${pageContext.request.contextPath}/candidate/deleteByIdCandidateCommercialData?idCandidateCommercialData=${candidateCommercialData.idCandidateCommercialData}">
                        <button type="button">Delete</button>  
                    </a>
                </td>
            </tr>
    </tbody>
</table>
</body>
</html>