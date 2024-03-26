<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="com.model.EmployeeType"%>
<%@page import="com.model.JobInterview"%>
<!DOCTYPE html>
<html>
<head>
<script>
    function showPreview(select) {
        var selectedImage = select.value;
        var previewImage = document.getElementById('profilePreview');
        previewImage.src = "${pageContext.request.contextPath}/resources/css/Immagini/" + selectedImage;
    }
</script>
<meta charset="ISO-8859-1">
<title>Sign in</title>
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
			<h1>New Employee</h1>
			<form class="formAdd"
				action="${pageContext.request.contextPath}/addEmployee"
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
						<label for="surname">Surname:</label>
					</p>
					<input type="text" id="surname" name="surname" required
						minlength="3" maxlength="15">
				</div>

				<div class="inline-p1">
					<p>
						<label for="email">Email:</label>
					</p>
					<input type="email" id="email" name="email">
				</div>

				<div class="inline-p1">
					<p>
						<label for="username">Username:</label>
					</p>
					<input type="text" id="username" name="username">
				</div>
				<div class="inline-p1">
					<p>
						<label for="password">Password:</label>
					</p>
					<input type="password" id="password" name="password">
				</div>
				<div id="divSelect" class="inline-p1">
					<p>
						<label for="employeeType">Employee type:</label>
					</p>
					<select name="employeeType">
						<c:forEach var="listEmployeeType" items="${listEmployeeType}">
							<option value="${listEmployeeType.idEmployeeType}">
								${listEmployeeType.idEmployeeType}) ${listEmployeeType.description}</option>
						</c:forEach>
					</select>
					</div>
					<div id="divSelect" class="inline-p1">
					<p>
					<label for="photo">Choose Profile Picture:</label>
				</p>
				<select name="profilePic" onchange="showPreview(this)">
					<option value="woman1.png">woman brunette</option>
					<option value="woman2.png">woman blonde</option>
					<option value="man1.png">man 1</option>
					<option value="man2.png">man 2</option>
				</select> 
				</div>
				
				<div id="divSelect" class="inline-p1">
				<img id="profilePreview" src="resources/css/Immagini/woman1.png" alt="Profile Preview" class="imgPreview" 
 width="80" margin="0px" >
				</div>
				
				<hr class="orizzontale">
				<div class="submit">
					<button class="buttonSubmit" type="submit">Submit</button>
					<button class="buttonReset" type="reset">Reset</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>