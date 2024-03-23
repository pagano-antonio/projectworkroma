<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="com.model.Candidate"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Add Candidate Commercial Data</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/add.css">
<style>
body {
	height: 100vh;
}
</style>
</head>
<body>
	<jsp:include page="sidebarFind.jsp" />

	<div class="container1">
		<div class="card1">
			<h1>New Commercial Data</h1>
			<form
				action="${pageContext.request.contextPath}/candidate/addCandidateCommercialData"
				method="POST">
				<div class="inline-p1">
					<p>
						<label for="candidate">Candidate:</label>
					</p>
					<select name="candidate">
						<c:forEach var="listCandidate" items="${listCandidate}">
							<option value="${listCandidate.idCandidate}">
								${listCandidate.idCandidate}-${listCandidate.name}-${listCandidate.surname}</option>
						</c:forEach>
					</select>
				</div>
				<div class="inline-p1">
					<p>
						<label for="businessCost">Business Cost:</label>
					</p>
					<input type="number" id="businessCost" name="businessCost">
				</div>
				<div class="inline-p1">
					<p>
						<label for="currentRal">CurrentRal:</label>
					</p>
					<input type="number" id="currentRal" name="currentRal">
				</div>
				<div class="inline-p1">
					<p>
						<label for="monthRefund">Month Refund:</label>
					</p>
					<input type="number" id="monthRefund" name="monthRefund">
				</div>
				<div class="inline-p1">
					<p>
						<label for="notes">Notes:</label>
					</p>
					<input type="text" id="notes" name="notes">
				</div>
				<div class="inline-p1">
					<p>
						<label for="proposedRal">ProposedRal:</label>
					</p>
					<input type="number" id="proposedRal" name="proposedRal">
				</div>
				<div class="inline-p1">
					<p>
						<label for="subsidyFlag">Subsidy Flag:</label>
					</p>
					<input type="number" id="subsidyFlag" name="subsidyFlag">
				</div>
				<br>
				<hr class="orizzontale">
				<br>
				<div class="submit">
					<button class="buttonSubmit" type="submit">Submit</button>
					<button class="buttonReset" type="reset">Reset</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>