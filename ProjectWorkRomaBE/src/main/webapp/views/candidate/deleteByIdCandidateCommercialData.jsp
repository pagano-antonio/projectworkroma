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