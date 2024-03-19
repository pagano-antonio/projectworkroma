<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Company Client</title>
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
			<h1>New Company Client</h1>
			<form class="formAdd"
				action="${pageContext.request.contextPath}/company/addCompanyClient"
				method="POST">
				<div class="inline-p1">
					<p>
						<label for="name">Name:</label>
					</p>
					<input type="text" id="name" name="name" required minlength="3"
						maxlength="15">
				</div>
				<div class="inline-p1">
					<p>
						<label for="address">Address:</label>
					</p>
					<input type="text" id="address" name="address" required
						minlength="3" maxlength="15">
				</div>
				<div class="inline-p1">
					<p>
						<label for="city">City:</label>
					</p>
					<input type="text" id="city" name="city">
				</div>
				<hr>
				<div class="submit">
					<button class="buttonSubmit" type="submit">Submit</button>
					<button class="buttonReset" type="reset">Reset</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>