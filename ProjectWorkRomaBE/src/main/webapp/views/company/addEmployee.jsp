<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Employee</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
<div class="container">
    <img src="https://media4.giphy.com/media/v1.Y2lkPTc5MGI3NjExZDV3NzhzMTd3YWxiN2J6dG1ldGF4dXduMmdoNWp6YXI2b3JzenBpMiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9cw/eNwGfck2Awo3d2gB32/giphy.gif" width="200" alt="Weoplespace Sticker">
    <span>ADD EMPLOYEE</span>
</div>
<form action="${pageContext.request.contextPath}/company/addEmployee" method="POST">
	 <div class="data-group">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" placeholder="Insert your name" required minlength="3" maxlength="15">
    </div>
    <div class="data-group">
        <label for="surname">Surname:</label>
        <input type="text" id="surname" name="surname" placeholder="Insert your surname" required minlength="3" maxlength="15">
    </div>
    <div class="data-group">
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" placeholder="Insert your email">
    </div>
    <div class="data-group">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" placeholder="Insert your username">
    </div>
     <div class="data-group">
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" placeholder="Insert your password">
    </div>
	  <div class="submit">
        <button type="submit">Submit</button>
        <button type="reset">Reset</button>
    </div>
</form>

</body>
</html>