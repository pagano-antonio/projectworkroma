<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>   
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>ERRORE</title>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body><div class="container">
    <img src="https://media0.giphy.com/media/XCed0Qj76Lvkt6Vl4b/giphy.gif" width="500" alt="Cat People Oops Sticker by Pusheen">
    <span>Errore di sistema!</span>
</div>
	<h2>Contattare l'amministratore.</h2>
	<p>${messaggioErrore}</p>
</body>
</html>