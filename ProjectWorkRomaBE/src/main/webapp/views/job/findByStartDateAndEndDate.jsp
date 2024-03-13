<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>   
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Find Job Offer By Start Date & End Date</title>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
<div class="container">
    <img src="https://media4.giphy.com/media/v1.Y2lkPTc5MGI3NjExZDV3NzhzMTd3YWxiN2J6dG1ldGF4dXduMmdoNWp6YXI2b3JzenBpMiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9cw/eNwGfck2Awo3d2gB32/giphy.gif" width="200" alt="Weoplespace Sticker">
    <span>FIND START DATA AND END DATE </span>
</div>
<form action="${pageContext.request.contextPath}/job/findByStartDateAndEndDate" method="GET">  
    <div class="data-group">
        <label for="startDate">Start Date:</label>
        <input type="date" id="startDate" name="startDate"value="<%=request.getParameter("startDate")%>"><br>
         <label for="endDate">End Date:</label>
        <input type="date" id="endDate" name="endDate"value="<%=request.getParameter("endDate")%>">
    </div>
    <div class="submit">
        <input type="submit" value="Submit">
        <input type="reset" value="Reset">
    </div>
</form>
</body>
</html>