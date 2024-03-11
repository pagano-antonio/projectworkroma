<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>   
  <meta charset="UTF-8">
  <title>Add Candidate Commercial Data</title>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
<div class="container">
    <img src="https://media4.giphy.com/media/v1.Y2lkPTc5MGI3NjExZDV3NzhzMTd3YWxiN2J6dG1ldGF4dXduMmdoNWp6YXI2b3JzenBpMiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9cw/eNwGfck2Awo3d2gB32/giphy.gif" width="200" alt="Weoplespace Sticker">
    <span>ADD CANDIDATE COMMERCIAL DATA</span>
</div>
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