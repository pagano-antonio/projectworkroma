<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.model.JobOffer"%>
<%@ page import="com.model.CompanyClient"%>
<%@ page import="com.model.ContractType"%>
<!DOCTYPE html>
<html lang="en">
<head>   
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Update Job Offer</title>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/update.css">
</head>
<body>
<div class="container1">
   
<% JobOffer jobOffer = (JobOffer) request.getAttribute("idJobOffer"); %>

<form action="${pageContext.request.contextPath}/job/updateByIdJobOffer" method="POST">  
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
         <select name="idCompanyClient">
     <c:forEach var="listIdCompanyClient" items="${listIdCompanyClient}">
        <option value="${listIdCompanyClient.idCompanyClient}">${listIdCompanyClient.name} ${listIdCompanyClient.city} - ${listIdCompanyClient.address} </option>
    </c:forEach>
  </select></div>
       
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
         <select name="idContractType">
     <c:forEach var="listIdContractType" items="${listIdContractType}">
        <option value="${listIdContractType.idContractType}">${listIdContractType.title} ${listIdContractType.description} </option>
    </c:forEach>
  </select></div>
    <div class="submit">
        <input type="submit" value="Submit">
        <input type="reset" value="Reset">
    </div>
</form>
</div>
</body>
</html>