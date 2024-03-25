<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Add Candidate</title>
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
			<h1>New Candidate</h1>
			<form
				action="${pageContext.request.contextPath}/candidate/addCandidate"
				method="POST">
				<div class="inline-p1">
					<p>
						<label for="name">Name:</label>
					</p>
					<input type="text" id="name" name="name" required minlength="3"
						maxlength="11">
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