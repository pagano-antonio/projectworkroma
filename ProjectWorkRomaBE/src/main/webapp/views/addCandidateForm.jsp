<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="com.model.EducationDegreeType"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Candidate</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/add.css">

</head>
<body>
	<jsp:include page="sidebar.jsp" />

		<div class="card1">

			<form class="formAdd"
				action="${pageContext.request.contextPath}/addCandidateForm"
				method="POST">
				<h1>Candidate</h1>
				<div class="box1">

					<div class="hidden" id="candidate">
						<div class="inline-p1">
							<p>
								<label for="name">Name:</label>
							</p>
							<input type="text" id="name" name="name">
						</div>
						<div class="inline-p1">
							<p>
								<label for="surname">Surname:</label>
							</p>
							<input type="text" id="surname" name="surname">
						</div>
						<div class="inline-p1">
							<p>
								<label for="birthday">Birthday:</label>
							</p>
							<input type="date" id="birthday" name="birthday">
						</div>
						<br>
						<div class="inline-p1">
							<p>
								<label for="birthPlace">Birth Place:</label>
							</p>
							<input type="text" id="birthPlace" name="birthPlace">
						</div>
						<div class="inline-p1">
							<p>
								<label for="city">City:</label>
							</p>
							<input type="text" id="city" name="city">
						</div>
						<div class="inline-p1">
							<p>
								<label for="address">Address:</label>
							</p>
							<input type="text" id="address" name="address">
						</div>
						<br>
						<div class="inline-p1">
							<p>
								<label for="email">Email:</label>
							</p>
							<input type="email" id="email" name="email">
						</div>
						<div class="inline-p1">
							<p>
								<label for="phone">Phone Number:</label>
							</p>
							<input type="tel" id="phone" name="phone">
						</div>
					</div>
	
				<hr class="orizzontale">


				
				<div class="submit">
					<button class="buttonSubmit" type="submit">Submit</button>
					<button class="buttonReset" type="reset">Reset</button>
				</div>
			</form>
		</div>
</body>
</html>