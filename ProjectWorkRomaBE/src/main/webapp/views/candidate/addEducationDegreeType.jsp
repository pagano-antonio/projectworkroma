<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Education Degree Type</title>
</head>
<body>
<div class="container">
    <img src="https://media4.giphy.com/media/v1.Y2lkPTc5MGI3NjExZDV3NzhzMTd3YWxiN2J6dG1ldGF4dXduMmdoNWp6YXI2b3JzenBpMiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9cw/eNwGfck2Awo3d2gB32/giphy.gif" width="200" alt="Weoplespace Sticker">
    <span>ADD EDUCATION DEGREE TYPE</span>
</div>
<form action="${pageContext.request.contextPath}/candidate/addEducationDegreeType" method="POST">  
    <div class="data-group">
        <label for="description">Description:</label>
        <input type="text" id="description" name="description" placeholder="Insert description">
    </div>
    <div class="submit">
        <button type="submit">Submit</button>
        <button type="reset">Reset</button>
    </div>
</form>
</body>
</html>