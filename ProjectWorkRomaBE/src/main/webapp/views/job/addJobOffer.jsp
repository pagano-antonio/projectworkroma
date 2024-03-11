<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>   
  <meta charset="UTF-8">
  <title>Add Job Offer</title>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
<div class="container">
    <img src="https://media4.giphy.com/media/v1.Y2lkPTc5MGI3NjExZDV3NzhzMTd3YWxiN2J6dG1ldGF4dXduMmdoNWp6YXI2b3JzenBpMiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9cw/eNwGfck2Awo3d2gB32/giphy.gif" width="200" alt="Weoplespace Sticker">
    <span>ADD JOB OFFER</span>
</div>
<form action="${pageContext.request.contextPath}/job/addJobOffer" method="POST">  
    <div class="data-group">
        <label for="title">Title:</label>
        <input type="text" id="title" name="title">
    </div>
    <div class="data-group">
        <label for="description">Description:</label>
        <input type="text" id="description" name="description">
    </div>
    <div class="data-group">
        <label for="startDate">Start Date:</label>
        <input type="date" id="startDate" name="startDate">
    </div>
    <div class="data-group">
        <label for="endDate">End Date:</label>
        <input type="date" id="endDate" name="endDate">
    </div>
    <div class="data-group">
        <label for="idCompanyClient">ID Company Client:</label>
        <input type="number" id="idCompanyClient" name="idCompanyClient">
    </div>
    <div class="data-group">
        <label for="minRal">Min Ral:</label>
        <input type="number" id="minRal" name="minRal">
    </div>
    <div class="data-group">
        <label for="maxRal">Max Ral:</label>
        <input type="number" id="maxRal" name="maxRal">
    </div>
    <div class="data-group">
        <label for="idContractType">ID Contract Type:</label>
        <input type="number" id="idContractType" name="idContractType">
    </div>
    <div class="submit">
        <input type="submit" value="Submit">
        <input type="reset" value="Reset">
    </div>
</form>
</body>
</html>