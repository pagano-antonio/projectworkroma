<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Employee</title>
 	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/signUp_Login.css">
</head>
<body>
<div class="container">

<form action="${pageContext.request.contextPath}/addEmployee" method="POST">
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
</div>
</body>
</html>