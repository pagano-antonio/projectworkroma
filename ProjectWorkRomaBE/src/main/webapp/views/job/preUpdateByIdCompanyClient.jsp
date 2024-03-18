<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.model.CompanyClient" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/persona/aggiornaPerIdPersona" method= "GET">
  
<% CompanyClient companyClient = (CompanyClient)request.getAttribute("idCompanyClient"); %>
        <table>
        <td>Company Client ID:</td>
		<th><input type="number" id="idCompanyClient" name="idCompanyClient" ></th></table>
	<table>
		<tr> 
		<h4>Select:</h4>
		</tr>
		<tr>
		<th><input type="submit" value="Submit"></th>
		<th><input type="reset" value="Reset"></th></tr></table>

	</form>
</body>
</html>