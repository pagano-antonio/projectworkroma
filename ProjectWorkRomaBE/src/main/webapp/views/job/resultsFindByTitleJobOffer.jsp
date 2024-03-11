<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.model.JobOffer"%>
<!DOCTYPE html>
<html lang="en">
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
<div class="data-group">
    <div class="data-group">
        <div class="data-group ">Job Offer ID</div>
        <div class="data-group">Title</div>
        <div class="data-group">Description</div>
        <div class="data-group">Start Date</div>
        <div class="data-group">End Date</div>
        <div class="data-group">Min Ral</div>
        <div class="data-group">Max Ral</div>
        <div class="data-group">Company Client ID</div>
        <div class="data-group">Contract Type ID</div>
        <div class="data-group">Update</div>
        <div class="data-group">Delete</div>
    </div>
    <c:forEach var="jobOffer" items="${JobOfferTitle}">
        <div class="results-group ">
            <div class="results-group ">${jobOffer.idJobOffer}</div>
            <div class="results-group ">${jobOffer.title}</div>
            <div class="results-group ">${jobOffer.description}</div>
            <div class="results-group ">${jobOffer.startDate}</div>
            <div class="results-group ">${jobOffer.endDate}</div>
            <div class="results-group ">${jobOffer.minRal}</div>
            <div class="results-group ">${jobOffer.maxRal}</div>
            <div class="results-group ">${jobOffer.getCompanyClient().getIdCompanyClient()}</div>
            <div class="results-group  ">${jobOffer.getContractType().getIdContractType()}</div>
            <div class="action">
                <a href="${pageContext.request.contextPath}updateByIdJobOffer?idJobOffer=${jobOffer.idJobOffer}">
                    <button type="button">Update</button>
                </a>
            </div>
            <div class="action">
                <a href="${pageContext.request.contextPath}deleteByIdJobOffer?idJobOffer=${jobOffer.idJobOffer}">
                    <button type="button">Delete</button>
                </a>
            </div>
        </div>
    </c:forEach>
</div>
</body>
</html>