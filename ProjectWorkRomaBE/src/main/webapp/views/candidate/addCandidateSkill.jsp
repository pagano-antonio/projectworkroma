<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>   
  <meta charset="UTF-8">
  <title>Add Candidate Skill</title>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
<div class="container">
    <img src="https://media4.giphy.com/media/v1.Y2lkPTc5MGI3NjExZDV3NzhzMTd3YWxiN2J6dG1ldGF4dXduMmdoNWp6YXI2b3JzenBpMiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9cw/eNwGfck2Awo3d2gB32/giphy.gif" width="200" alt="Weoplespace Sticker">
    <span>ADD CANDIDATE SKILL</span>
</div>
<form action="${pageContext.request.contextPath}/candidate/addCandidateSkill" method="POST">  
    <div class="data-group">
        <label for="idCandidate">ID Candidate:</label>
        <input type="number" id="idCandidate" name="idCandidate">
    </div>
    <div class="data-group">
        <label for="idSkill">ID Skill:</label>
        <input type="number" id="idSkill" name="idSkill">
    </div>
    <div class="submit">
        <input type="submit" value="Submit">
        <input type="reset" value="Reset">
    </div>
</form>
</body>
</html>