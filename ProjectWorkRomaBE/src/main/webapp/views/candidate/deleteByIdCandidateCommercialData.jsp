<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.CandidateCommercialData"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete by Id Candidate</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
<div class="container">
    <img src="https://media4.giphy.com/media/v1.Y2lkPTc5MGI3NjExZDV3NzhzMTd3YWxiN2J6dG1ldGF4dXduMmdoNWp6YXI2b3JzenBpMiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9cw/eNwGfck2Awo3d2gB32/giphy.gif" width="200" alt="Weoplespace Sticker">
    <span>DELETE BY ID CANDIDATE COMMERCIAL DATA</span>
</div>
	<form
		action="${pageContext.request.contextPath}/candidate/deleteByIdCandidateCommercialData"
		method="GET">
		<table>
			<td>ID Candidate:</td>
			<th><input type="number" id="idCandidateCommercialData" name="idCandidateCommercialData"></th>
		</table>
		<table>
			<tr>
				<h4>Select:</h4> 
			</tr>
			<tr>
				<th><input type="submit" value="submit"></th>
				<th><input type="reset" value="Reset"></th>
			</tr>
		</table>

	</form>
</body>
</html>