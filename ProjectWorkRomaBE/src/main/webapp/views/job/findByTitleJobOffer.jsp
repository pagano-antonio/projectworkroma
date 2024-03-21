<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>   
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Find Job Offer By Title</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/findBy.css">
</head>
<body>
<jsp:include page="sidebarFind.jsp" />
<div class="card">
		<div class="boxFind">
			<p class="findTitle">Find Job Offer</p>
			<form class="formFind" action="${pageContext.request.contextPath}/job/findByTitleJobOffer" method="GET">  
    <p>
        <label for="title">Title:</label></p>
        <input class="inputField" type="text" id="title" name="title">
   <div>
					<button class="buttonSubmit" type="submit">Submit</button>
					<button class="buttonReset" type="reset">Reset</button>
				</div>
			</form>
		</div>
	<div class="boxTitle">	
	<img class="imageLogin" src="${pageContext.request.contextPath}/resources/css/Immagini/iphone.gif" alt="iphone" width="1000" height="750">
</div>
	</div>
</html>