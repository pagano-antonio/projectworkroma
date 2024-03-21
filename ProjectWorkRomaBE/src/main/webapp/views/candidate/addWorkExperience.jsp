<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Work Experience</title>
   <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/add.css">
</head>
<body>
<form action="${pageContext.request.contextPath}/candidate/addWorkExperience" method="POST">  
    <div class="data-group">
        <label for="title">Title:</label>
        <input type="text" id="title" name="title" placeholder="Insert title">
    </div>
    <div class="data-group">
        <label for="description">Description:</label>
        <input type="text" id="description" name="description">
    </div>
    <div class="data-group">
        <label for="startDate">Start Date:</label>
        <input type="date" id="startDate" name="startDate">
    </div>
    <div class="data-group">
        <label for="endDate">End Date:</label>
        <input type="date" id="endDate" name="endDate">
    </div>
    <div class="data-group">
        <label for="company">Company:</label>
        <input type="text" id="company" name="company">
    </div>
    <div class="data-group">
        <label for="city">City:</label>
        <input type="text" id="city" name="city">
    </div>
     <div class="data-group">
        <label for="idCandidate">ID Candidate:</label>
        <input type="number" id="idCandidate" name="idCandidate">
    </div>
    <div class="submit">
        <button type="submit">Submit</button>
        <button type="reset">Reset</button>
    </div>
</form>

</body>
</html>