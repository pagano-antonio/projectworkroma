<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>   
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>My Page</title>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
<div class="container">
    <img src="https://media0.giphy.com/media/RLGz4AoDQ3m6mO0mRg/giphy.gif" width="500" alt="Angry No Way Sticker by Pusheen">
    <span>Errore di sistema!</span>
</div>
<%String error = (String)request.getAttribute("ErrorMessage"); %>
 <h1><%=error %></h1>
</body>
</html>