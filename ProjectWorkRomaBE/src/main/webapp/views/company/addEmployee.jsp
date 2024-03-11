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
	<table>
		<tr>
		<td>Name:</td>
        <td>Surname:</td>  
        <td>Email:</td>
        <td>Username:</td>
        <td>Password:</td>
		</tr>
		<tr>
		<th>
		<input type="text" id="name" name="name"></th>
        <th><input type="text" id="surname" name="surname"></th>
        <th><input type="text" id="email" name="email"></th>
        <th><input type="text" id="username" name="username"></th>
        <th><input type="text" id="password" name="password"></th>
		</tr>
	</table>
</form>

</body>
</html>