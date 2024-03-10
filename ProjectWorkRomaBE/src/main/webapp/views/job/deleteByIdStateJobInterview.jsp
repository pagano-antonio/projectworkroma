<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.StateJobInterview"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete by Id State Job Interview</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
<div class="container">
    <img src="https://media4.giphy.com/media/v1.Y2lkPTc5MGI3NjExZDV3NzhzMTd3YWxiN2J6dG1ldGF4dXduMmdoNWp6YXI2b3JzenBpMiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9cw/eNwGfck2Awo3d2gB32/giphy.gif" width="200" alt="Weoplespace Sticker">
    <span>DELETE BY ID STATE JOB INTERVIEW</span>
</div>
	<form
		action="${pageContext.request.contextPath}/job/deleteByIdStateJobInterview"
		method="GET">
		<table>
			<td>ID State Job Interview:</td>
			<th><input type="number" id="idStateJobInterview" name="idStateJobInterview"></th>
		</table>
		<table>
			<tr>
				<h4>Select:</h4>
			</tr>
			<tr>
				<th><input type="submit" value="Submit"></th>
				<th><input type="reset" value="Reset"></th>
			</tr>
		</table>

	</form>
</body>
</html>