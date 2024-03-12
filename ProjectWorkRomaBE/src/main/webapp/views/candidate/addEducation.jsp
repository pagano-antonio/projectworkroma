<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Education</title>
</head>
<body>
<div class="container">
    <img src="https://media4.giphy.com/media/v1.Y2lkPTc5MGI3NjExZDV3NzhzMTd3YWxiN2J6dG1ldGF4dXduMmdoNWp6YXI2b3JzenBpMiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9cw/eNwGfck2Awo3d2gB32/giphy.gif" width="200" alt="Weoplespace Sticker">
    <span>ADD EDUCATION</span>
</div>
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