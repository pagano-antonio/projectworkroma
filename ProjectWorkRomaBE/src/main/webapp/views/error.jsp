<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>   
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>My Page</title>
  </head>
<body>
 ??  <span>Errore di sistema!</span>

<%String error = (String)request.getAttribute("ErrorMessage"); %>
 <h1><%=error %></h1>
</body>
</html>