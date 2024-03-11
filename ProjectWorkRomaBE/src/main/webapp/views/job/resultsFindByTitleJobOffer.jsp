<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.model.JobOffer"%>
<!DOCTYPE html>
<html>
<head>   
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Results Find Job Offer by Title</title>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
<div class="container">
    <img src="https://media4.giphy.com/media/v1.Y2lkPTc5MGI3NjExZDV3NzhzMTd3YWxiN2J6dG1ldGF4dXduMmdoNWp6YXI2b3JzenBpMiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9cw/eNwGfck2Awo3d2gB32/giphy.gif" width="200" alt="Weoplespace Sticker">
    <span>YOUR DATA</span>
</div>
<table>
		<tr>
			<td>Job Offer ID</td>
			<td>Title</td>
			<td>Description</td>
			<td>Start Date</td>
			<td>End Date</td>
			<td>Min Ral</td>
			<td>Max Ral</td>
			<td>Company Client ID</td>
			<td>Contract Type ID</td>
			<td>Update</td>
			<td>Delete</td>
		</tr>
		<c:forEach var="jobOffer" items="${JobOfferTitle}">
			<tr>
				<th>${jobOffer.idJobOffer}</th>
				<th>${jobOffer.title}</th>
				<th>${jobOffer.description}</th>
				<th>${jobOffer.startDate}</th>
				<th>${jobOffer.endDate}</th>
				<th>${jobOffer.minRal}</th>
				<th>${jobOffer.maxRal}</th>
				<th>${jobOffer.getCompanyClient().getIdCompanyClient()}</th>
				<th>${jobOffer.getContractType().getIdContractType()}</th>

				<th><a
					href="${pageContext.request.contextPath}updateByIdJobOffer?idJobOffer=${jobOffer.idJobOffer}">
<!-- 					qua non bisogna specificare la cartella -->
						<button type="button">Update</button>
				</a></th>		
				<th><a
					href="${pageContext.request.contextPath}deleteByIdJobOffer?idJobOffer=${jobOffer.idJobOffer}">
						<button type="button">Delete</button>
				</a></th>
			</tr>
		</c:forEach>
	</table>
</body>
</html>