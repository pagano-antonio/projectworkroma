<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.model.JobOffer"%>
<!DOCTYPE html>
<html lang="en">
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
<% JobOffer jobOffer = (JobOffer) request.getAttribute("idJobOffer"); %>

<form action="${pageContext.request.contextPath}/job/updateByIdJobOffer" method="GET">  
    <div class="data-group">
        <label for="IdJobOffer">ID Job Offer:</label>
        <input type="number" id="IdJobOffer" name="IdJobOffer" value="<%=request.getParameter("idJobOffer")%>" readonly>
    </div>
    <div class="data-group">
        <label for="title">Title:</label>
        <input type="text" id="title" name="title" value="<%=jobOffer.getTitle()%>">
    </div>
    <div class="data-group">
        <label for="description">Description:</label>
        <input type="text" id="description" name="description" value="<%=jobOffer.getDescription()%>">
    </div>
    <div class="data-group">
        <label for="startDate">Start Date:</label>
        <input type="date" id="startDate" name="startDate" value="<%=jobOffer.getStartDate()%>">
    </div>
    <div class="data-group">
        <label for="endDate">End Date:</label>
        <input type="date" id="endDate" name="endDate" value="<%=jobOffer.getEndDate()%>">
    </div>
    <div class="data-group">
        <label for="idCompanyClient">ID Company Client:</label>
        <input type="number" id="idCompanyClient" name="idCompanyClient" value="<%=jobOffer.getCompanyClient().getIdCompanyClient()%>">
    </div>
    <div class="data-group">
        <label for="minRal">Min Ral:</label>
        <input type="number" id="minRal" name="minRal" value="<%=jobOffer.getMinRal()%>">
    </div>
    <div class="data-group">
        <label for="maxRal">Max Ral:</label>
        <input type="number" id="maxRal" name="maxRal" value="<%=jobOffer.getMaxRal()%>">
    </div>
    <div class="data-group">
        <label for="idContractType">ID Contract Type:</label>
        <input type="number" id="idContractType" name="idContractType" value="<%=jobOffer.getContractType().getIdContractType()%>">
    </div>
    <div class="submit">
        <input type="submit" value="Submit">
        <input type="reset" value="Reset">
    </div>
</form>
</body>
</html>