<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
    <img src="https://media4.giphy.com/media/v1.Y2lkPTc5MGI3NjExZDV3NzhzMTd3YWxiN2J6dG1ldGF4dXduMmdoNWp6YXI2b3JzenBpMiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9cw/eNwGfck2Awo3d2gB32/giphy.gif" width="200" alt="Weoplespace Sticker">
    <span>FIND YOUR DATA</span>
</div>
<form action="${pageContext.request.contextPath}/candidate/findByIdCandidateSkill" method="GET">
	<div class="data-group">
		<label for="idCandidateSkill">Id Candidate Skill:</label>
		<input type="number" id="idCandidateSkill" name="idCandidateSkill">
	</div>
	<div>
		<input type="submit" value="Submit">
		<input type="reset" value="Reset">
	</div>

</form>
</body>
</html>