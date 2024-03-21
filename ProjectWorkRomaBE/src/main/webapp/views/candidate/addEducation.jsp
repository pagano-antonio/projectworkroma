<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Education</title>
   <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/add.css">
</head>
<body>
<form action="${pageContext.request.contextPath}/candidate/addEducation" method="POST">  
    <div class="data-group">
        <label for="schoolName">School Name:</label>
        <input type="text" id="schoolName" name="schoolName" placeholder="Insert your school name">
    </div>
    <div class="data-group">
        <label for="place">Place:</label>
        <input type="text" id="place" name="place">
    </div>
    <div class="data-group">
        <label for="date">Date:</label>
        <input type="date" id="date" name="date">
    </div>
    <div class="data-group">
        <label for="finalGrade">Final Grade:</label>
        <input type="text" id="finalGrade" name="finalGrade">
    </div>
    <div class="data-group">
        <label for="idEducationDegreeType">ID Education Degree Type:</label>
        <input type="number" id="idEducationDegreeType" name="idEducationDegreeType">
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