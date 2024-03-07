<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>HOME</title>
<meta charset="UTF-8">
</head>

<body>

<h1>ciao</h1>

	SINISTRA:
	menù:
	candidato(ricerca,crea)
	offerte di lavoro(ricerca,crea)
	company (ricerca,crea)
	
	dettaglio candidato 
	dati anagrafici
	tasto con competenze(SKILL)
	tasto con esperienze di lavoro
	tasto con educazione
	tasto con dati commerciali (CandidateCommercialData)
	
	<!-- menu.jsp - Solo il menu laterale, senza <jsp:include> per la home -->
	
<div class="sidebar">
    <a href="home.jsp">Home</a>
    <a href="#services">Services</a>
    <a href="#about">About</a>
    <a href="#contact">Contact</a>
</div>

	<jsp:include page="menu.jsp" />

<div class="content">
    <h2>Welcome to Our Home Page</h2>
    <p>This is the content of the Home Page.</p>
</div>
	
	IN ALTO A DESTRA 
	icona dove candidato può modificare anagrafica
	
	AL CENTRO
	immagine	
</body>
</html>