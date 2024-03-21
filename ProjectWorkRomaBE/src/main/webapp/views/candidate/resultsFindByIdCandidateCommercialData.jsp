<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.model.CandidateCommercialData"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Results Find Candidate Commercial Data By Id Commercial
	Data</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/findBy.css">
</head>
<body>

	<%
	CandidateCommercialData candidateCommercialData = (CandidateCommercialData) request
			.getAttribute("idCandidateCommercialData");
	%>
	<jsp:include page="sidebarFind.jsp" />
	<div class="card">
		<div class="boxFind">

			<p class="findTitle">Commercial Data</p>
			<div class="inline-p1">
				<p>
					<label for="idCandidate">Commercial Data ID:</label>
				</p>
				<h4><%=candidateCommercialData.getIdCandidateCommercialData()%></h4>
			</div>
			<div class="inline-p1">
				<p>
					<label for="idCandidate">Candidate ID:</label>
				</p>
				<h4><%=candidateCommercialData.getCandidate().getIdCandidate()%></h4>
			</div>
			<div class="inline-p1">
				<p>
					<label for="currentRal">Current Ral:</label>
				</p>
				<h4><%=candidateCommercialData.getCurrentRal()%></h4>
			</div>
			<div class="inline-p1">
				<p>
					<label for="proposedRal">Proposed Ral:</label>
				</p>
				<h4><%=candidateCommercialData.getProposedRal()%></h4>
			</div>
			<div class="inline-p1">
				<p>
					<label for="monthRefund">Month Refund:</label>
				</p>
				<h4><%=candidateCommercialData.getMonthRefund()%></h4>
			</div>
			<div class="inline-p1">
				<p>
					<label for="businessCost">Business Cost:</label>
				</p>
				<h4><%=candidateCommercialData.getBusinessCost()%></h4>
			</div>
			<div class="inline-p1">
				<p>
					<label for="subsidyFlag">Subsidy Flag:</label>
				</p>
				<h4><%=candidateCommercialData.getSubsidyFlag()%></h4>
			</div>
			<div class="inline-p1">
				<p>
					<label for="notes">Notes:</label>
				</p>
				<h4><%=candidateCommercialData.getNotes()%></h4>
			</div>
			<div class="inline-p1">

				<a
					href="${pageContext.request.contextPath}/preUpdateByIdCandidate?idCandidate=${idCandidateCommercialData.getCandidate().getIdCandidate()}">
					<button class="buttonUpdate" type="button">Update</button>
				</a> <a
					href="${pageContext.request.contextPath}/candidate/deleteByIdCandidateCommercialData?idCandidateCommercialData=${candidateCommercialData.idCandidateCommercialData}">
					<button class="buttonDelete" type="button">Delete</button>
				</a>
			</div>
		</div>
		<div class="boxTitle">
			<img class="imageLogin"
				style="margin: 10px; height: 300px; width: 300px; border-radius: 300px;"
				src="${pageContext.request.contextPath}/resources/css/Immagini/img-profile.jpg"
				alt="img-profile">
		</div>
	</div>
</body>
</html>