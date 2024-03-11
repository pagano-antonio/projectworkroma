<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Candidate</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
<div class="container">
    <img src="https://media4.giphy.com/media/v1.Y2lkPTc5MGI3NjExZDV3NzhzMTd3YWxiN2J6dG1ldGF4dXduMmdoNWp6YXI2b3JzenBpMiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9cw/eNwGfck2Awo3d2gB32/giphy.gif" width="200" alt="Weoplespace Sticker">
    <span>ADD CANDIDATE</span>
</div>
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