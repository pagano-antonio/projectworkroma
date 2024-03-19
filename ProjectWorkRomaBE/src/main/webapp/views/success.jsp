<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Success</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
	rel="stylesheet">
<style>
* {
	box-sizing: border-box;
	margin: 0;
	padding: 0;
}

.container1 {
	margin: 0 auto;
	max-width: 800px;
	align-items: center;
}

body {
	background-color: #8080c0;
	background-image: url("resources/css/Immagini/backgroundimg.png");
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	height: 100vh;
}

.card1 {
	background-color: rgba(255, 255, 255, 0.6);
	font-family: "Poppins";
	box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.2);
	padding: 50px;
	border-radius: 20px;
	display: flex;
	flex-direction: column;
	flex-wrap: wrap;
	justify-content: center;
	gap: 50px;
	width: 900px;
}

.h1title {
	font-size: 30px;
	font-family: "Poppins", sans-serifs;
}

.buttonHome {
	width: 40%;
	padding: 10px;
	background-color: rgb(128, 128, 192);
	border: none;
	border-radius: 6px;
	color: #fff;
	cursor: pointer;
	font-size:20px;
	font-family:"Poppins";
}

.orizzontale {
	border: none;
	height: 2px;
	background-color: #dcdced;
	margin: 30px;
	width: 90%;
}
</style>
</head>
<body>

	<div class="container1">
		<div class="card1">
			<img src="success.gif" alt="success"
				width="400" height="200">
			<h1 class="h1title">Operazione effettuata correttamente!</h1>
			<hr class="orizzontale">
			<a href="${pageContext.request.contextPath}/home">
			<button class="buttonHome">Home</button>
		</div>
	</div>

</body>
</html>