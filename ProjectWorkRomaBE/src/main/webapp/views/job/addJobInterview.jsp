<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>   
  <meta charset="UTF-8">
  <title>Add Job Interview</title>
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
<h1>New Job Interview</h1>

			<form class="formAdd"action="${pageContext.request.contextPath}/job/addJobInterview" method="POST">  
   <div class="inline-p1">
					<p>
        <label for="idCandidate">ID Candidate:</label></p>
        <input type="number" id="idCandidate" name="idCandidate">
    </div>
  <div class="inline-p1">
					<p>
        <label for="date">Date:</label></p>
        <input type="date" id="date" name="date">
    </div>
   <div class="inline-p1">
					<p>
        <label for="idStateJobInterview">ID State Job Interview:</label></p>
        <input type="number" id="idStateJobInterview" name="idStateJobInterview">
    </div>
  <div class="inline-p1">
					<p>
        <label for="outcome">Outcome:</label></p>
        <input type="number" id="outcome" name="outcome">
    </div>
   <div class="inline-p1">
					<p>
        <label for="notes">Notes:</label></p>
        <input type="text" id="notes" name="notes">
    </div>
   <div class="inline-p1">
					<p>
        <label for="idEmployee">ID Employee:</label></p>
        <input type="number" id="idEmployee" name="idEmployee">
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