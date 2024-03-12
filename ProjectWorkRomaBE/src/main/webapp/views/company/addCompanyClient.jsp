<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        <input type="text" id="name" name="name" placeholder="Insert Name" required minlength="3" maxlength="15">
    </div>
    <div class="data-group">
        <label for="address">Address:</label>
        <input type="text" id="address" name="address" placeholder="Insert address" required minlength="3" maxlength="15">
    </div>
    <div class="data-group">
        <label for="city">City:</label>
        <input type="text" id="city" name="city" placeholder="Insert City">
    </div>
	  <div class="submit">
        <button type="submit">Submit</button>
        <button type="reset">Reset</button>
    </div>
</form>

</body>
</html>