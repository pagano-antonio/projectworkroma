<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import= "com.model.Employee" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
 	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/signUp_Login.css">

    
    <!-- Script per gestire il tempo di visualizzazione -->
<script>
    // Mostra la pagina di attesa per 3 secondi
    setTimeout(function() {
        document.getElementById('waitingPage').classList.add('hidden');
        document.getElementById('loginSection').classList.remove('hidden');
        document.getElementById('welcomeSection').classList.remove('hidden');
    }, 3000); // Tempo in millisecondi (3 secondi)
</script>
 	
</head>
<body>

<div class="card">

<!-- Contenuto della pagina con il messaggio di attesa -->
<div id="waitingPage" class="welcomeMessage">
    <h1>Welcome!</h1>
    <p>We are getting ready...</p>
</div>


<div id="loginSection" class="boxLogin hidden">
<p class="loginTitle">Login</p>
<form class="formLogin" action="${pageContext.request.contextPath}/login" method="GET" action = "loginServlet">
    <p>Username:</p> 
    <input type="text" name="username" class="inputField"/>
    <p>Password:</p> 
    <input type="password" name="password" class="inputField"/>
    <input type="submit" value="Login" class="buttonLogin"/>
    
</form>
<a href="${pageContext.request.contextPath}/preAddEmployee">
    <button class="buttonRegister">Sign up</button></a>
</div>
<div id="welcomeSection" class="boxTitle hidden">
	<h2 class="title">
		Welcome Back!
	</h2>
	<img class="imageLogin" src="resources/css/Immagini/preLogin.gif" alt="preLogin" width="600" height="400">
</div>
</div>

</body>
</html>