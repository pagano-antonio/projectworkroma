<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Candidate</title>
   <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/add.css">
</head>
<body>
<form action="${pageContext.request.contextPath}/candidate/addCandidate" method="POST">  
    <div class="data-group">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" placeholder="Insert your name" required minlength="3" maxlength="11">
    </div>
    <div class="data-group">
        <label for="surname">Surname:</label>
        <input type="text" id="surname" name="surname">
    </div>
    <div class="data-group">
        <label for="birthday">Birthday:</label>
        <input type="date" id="birthday" name="birthday">
    </div>
    <div class="data-group">
        <label for="birthPlace">Birth Place:</label>
        <input type="text" id="birthPlace" name="birthPlace">
    </div>
    <div class="data-group">
        <label for="city">City:</label>
        <input type="text" id="city" name="city">
    </div>
    <div class="data-group">
        <label for="address">Address:</label>
        <input type="text" id="address" name="address">
    </div>
    <div class="data-group">
        <label for="email">Email:</label>
        <input type="email" id="email" name="email">
    </div>
    <div class="data-group">
        <label for="phone">Phone Number:</label>
        <input type="tel" id="phone" name="phone">
    </div>
    <div class="submit">
        <button type="submit">Submit</button>
        <button type="reset">Reset</button>
    </div>
</form>
</body>
</html>