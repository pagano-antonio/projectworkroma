<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete By Id Work Experience</title>
</head>
<body>
<div class="container">
    <img src="https://media4.giphy.com/media/v1.Y2lkPTc5MGI3NjExZDV3NzhzMTd3YWxiN2J6dG1ldGF4dXduMmdoNWp6YXI2b3JzenBpMiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9cw/eNwGfck2Awo3d2gB32/giphy.gif" width="200" alt="Weoplespace Sticker">
    <span>DELETE BY ID WORK EXPERIENCE</span>
</div>
<form action="${pageContext.request.contextPath}/candidate/deleteByIdWorkExperience" method="GET">  
    <div class="data-group">
        <label for="idWorkExperience">ID Work Experience:</label>
        <input type="number" id="idWorkExperience" name="idWorkExperience">
    </div>
    <div class="submit">
        <input type="submit" value="Submit">
        <input type="reset" value="Reset">
    </div>
</form>

</body>
</html>