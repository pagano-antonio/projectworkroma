<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<%@ page import="com.model.CompanyClient"%>
    
<!DOCTYPE html>
<html>
<head>   
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Update Company Client</title>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/update.css">
</head>
<body>
<div class="container1">
<div class="card1">
<% CompanyClient companyClient = (CompanyClient) request.getAttribute("idCompanyClient"); %>

<form action="${pageContext.request.contextPath}/job/updateByIdJobOffer" method="POST">
</form>
</div>
</div>

</body>
</html>