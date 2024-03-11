<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>   
  <meta charset="UTF-8">
  <title>Add Job Interview</title>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
<div class="container">
    <img src="https://media4.giphy.com/media/v1.Y2lkPTc5MGI3NjExZDV3NzhzMTd3YWxiN2J6dG1ldGF4dXduMmdoNWp6YXI2b3JzenBpMiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9cw/eNwGfck2Awo3d2gB32/giphy.gif" width="200" alt="Weoplespace Sticker">
    <span>ADD JOB INTERVIEW</span>
</div>
<form action="${pageContext.request.contextPath}/job/addJobInterview" method="POST">  
    <div class="data-group">
        <label for="idCandidate">ID Candidate:</label>
        <input type="number" id="idCandidate" name="idCandidate">
    </div>
    <div class="data-group">
        <label for="date">Date:</label>
        <input type="date" id="date" name="date">
    </div>
    <div class="data-group">
        <label for="idStateJobInterview">ID State Job Interview:</label>
        <input type="number" id="idStateJobInterview" name="idStateJobInterview">
    </div>
    <div class="data-group">
        <label for="outcome">Outcome:</label>
        <input type="number" id="outcome" name="outcome">
    </div>
    <div class="data-group">
        <label for="notes">Notes:</label>
        <input type="text" id="notes" name="notes">
    </div>
    <div class="data-group">
        <label for="idEmployee">ID Employee:</label>
        <input type="number" id="idEmployee" name="idEmployee">
    </div>
    <div class="submit">
        <input type="submit" value="Submit">
        <input type="reset" value="Reset">
    </div>
</form>
</body>
</html>