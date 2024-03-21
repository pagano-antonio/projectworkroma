<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>   
  <meta charset="UTF-8">
  <title>Add Candidate Commercial Data</title>
     <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/add.css">
</head>
<body>
<form action="${pageContext.request.contextPath}/candidate/addCandidateCommercialData" method="POST">  
    <div class="data-group">
        <label for="idCandidate">ID Candidate:</label>
        <input type="number" id="idCandidate" name="idCandidate">
    </div>
    <div class="data-group">
        <label for="businessCost">Business Cost:</label>
        <input type="number" id="businessCost" name="businessCost">
    </div>
    <div class="data-group">
        <label for="currentRal">CurrentRal:</label>
        <input type="number" id="currentRal" name="currentRal">
    </div>
    <div class="data-group">
        <label for="monthRefund">Month Refund:</label>
        <input type="number" id="monthRefund" name="monthRefund">
    </div>
    <div class="data-group">
        <label for="notes">Notes:</label>
        <input type="text" id="notes" name="notes">
    </div>
    <div class="data-group">
        <label for="proposedRal">ProposedRal:</label>
        <input type="number" id="proposedRal" name="proposedRal">
    </div>
    <div class="data-group">
        <label for="subsidyFlag">Subsidy Flag:</label>
        <input type="number" id="subsidyFlag" name="subsidyFlag">
    </div>
    <div class="submit">
        <input type="submit" value="Submit">
        <input type="reset" value="Reset">
    </div>
</form>
</body>
</html>