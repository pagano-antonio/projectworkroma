<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page import="com.model.Candidate"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Add Candidate Skill</title>
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
			<h1>New Skill</h1>
			<form
				action="${pageContext.request.contextPath}/candidate/addCandidateSkill"
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
						<label for="title">Title :</label>
					</p>
					<input type="text" id="title" name="title">
				</div>
				<div class="inline-p1">
					<p>
						<label for="description">Description :</label>
					</p>
					<input type="text" id="description" name="description">
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