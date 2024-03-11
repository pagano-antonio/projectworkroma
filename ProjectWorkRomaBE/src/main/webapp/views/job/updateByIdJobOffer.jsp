<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.model.JobOffer"%>
<!DOCTYPE html>
<html>
<head>   
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Update Job Offer</title>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
<div class="container">
    <img src="https://media4.giphy.com/media/v1.Y2lkPTc5MGI3NjExZDV3NzhzMTd3YWxiN2J6dG1ldGF4dXduMmdoNWp6YXI2b3JzenBpMiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9cw/eNwGfck2Awo3d2gB32/giphy.gif" width="200" alt="Weoplespace Sticker">
    <span>YOUR DATA</span>
</div>
<%	JobOffer jobOffer = (JobOffer) request.getAttribute("idJobOffer");%>

<form action="${pageContext.request.contextPath}/job/updateByIdJobOffer" method= "GET">  

<table>
            <tr> 
                <td>ID Job Offer</td>
                <td>Title:</td>
                <td>Description:</td>  
                <td>Start Date:</td>
                <td>End Date:</td>
                <td>ID Company Client:</td>
                <td>Min Ral:</td>
                <td>Max Ral:</td>
                <td>ID Contract Type:</td>
            </tr>
            <tr>
            <th><input type="number" id="IdJobOffer" name="IdJobOffer" value="<%=request.getParameter("idJobOffer")%>"readonly></th>
                <th><input type="text" id="title" name="title" value ="<%=jobOffer.getTitle()%>"></th>
                <th><input type="text" id="description" name="description"value ="<%=jobOffer.getDescription()%>"></th>
                <th><input type="date" id="startDate" name="startDate"value ="<%=jobOffer.getStartDate()%>"></th>
                <th><input type="date" id="endDate" name="endDate"value ="<%=jobOffer.getEndDate()%>"></th>
                <th><input type="number" id="idCompanyClient" name="idCompanyClient"value ="<%=jobOffer.getCompanyClient().getIdCompanyClient()%>"></th>
                <th><input type="number" id="minRal" name="minRal"value ="<%=jobOffer.getMinRal()%>"></th>
                <th><input type="number" id="maxRal" name="maxRal"value ="<%=jobOffer.getMaxRal()%>"></th>
                <th><input type="number" id="idContractType" name="idContractType"value ="<%=jobOffer.getContractType().getIdContractType()%>"></th>
            </tr>
        </table>

<h4>Select</h4>
<table>
<tr>
<th><input type="submit" value="Submit">
</th>
<th><input type="reset" value="Reset"></th>
</tr>
</table>
</form>