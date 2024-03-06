<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>HOME</title>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/styleHome.css">

</head>

<body>

	<img
		src="https://i.pinimg.com/originals/27/24/bf/2724bf6900333ac79e6da310a7a95eca.gif"
		width="433" height="441"
		alt="x^)= click | Pusheen cat, Pusheen, Cute cats"
		style="max-width: 300px;">
		<a href="www.google.it" onMouseover="alert('Hello, welcome in your Gestionale!')"> 
WELCOME</a>
		
    <h1>HOME</h1>
	<h2> PERSONA</h2>
	
	<table>
	<tr>
	<td>Search</td>
	<td>Actions</td></tr>
	<tr>
	<th><a href="${pageContext.request.contextPath}/persona/preRicercaIdPersona">Persona by ID </a>
	<a href="${pageContext.request.contextPath}/persona/preRicercaPerStipendioPersona">By Salary</a>
	<a href="${pageContext.request.contextPath}/persona/preRicercaStipendioPerRange">By Salary range</a>	
	<a href="${pageContext.request.contextPath}/persona/preRicercaPerNomeECognome">By First Name and Last Name</a>
	<a href="${pageContext.request.contextPath}/persona/preRicercaPerNome">By First Name</a>
	<a href="${pageContext.request.contextPath}/persona/preRicercaPerCognome">By Last Name</a>
	<a href="${pageContext.request.contextPath}/persona/preRicercaPerEmail">By Email</a></th>
	<th>
	<a href="${pageContext.request.contextPath}/persona/preInserimento">Insert Persona</a>
	<a href="${pageContext.request.contextPath}/persona/preAggiornaPerIdPersona">Update Persona</a>
	<a href="${pageContext.request.contextPath}/persona/preEliminaPersona">Delete Persona</a></th>
	</tr>	
	</table>
	
	<h2>ROLE</h2>	
	<table>
	<tr>
	<td>Search</td>
	<td>Actions</td></tr>
	<tr>
	<th><a href="${pageContext.request.contextPath}/ruolo/preRicercaIdRuolo">Role by ID</a>
	<a href="${pageContext.request.contextPath}/ruolo/preFindByDescrizione">Description</a></th>
	<th>
	<a href="${pageContext.request.contextPath}/ruolo/preInserimentoRuolo">Insert	Role</a>
	<a href="${pageContext.request.contextPath}/ruolo/preAggiornaPerIdRuolo"> Update Role</a>
	<a href="${pageContext.request.contextPath}/ruolo/preEliminaRuolo">Delete Role</a></th>
	</tr>
	</table>
	
	<h2>HISTORY</h2>
	<table>
	<tr>
	<td>Search</td>
	<td>Actions</td></tr>
	<tr>
	<th>
	<a href="${pageContext.request.contextPath}/storico/preFindByIdPersona">Persona by ID</a>
	<a href="${pageContext.request.contextPath}/storico/preRicercaPerStipendio">By Salary</a></th>
	<th>
	<a href="${pageContext.request.contextPath}/storico/preAggiornaStoricoPerIdStorico">Update History</a>
    <a href="${pageContext.request.contextPath}/storico/preEliminaStoricoPerIdStorico">Delete History by ID</a></th>
    </tr>
	</table>

		
</body>
</html>