<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import= "com.model.Employee" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="${pageContext.request.contextPath}/loginCtr/login" method="GET" action = "loginServlet">

    Username: <input type="text" name="username"> <br/>
    Password: <input type="password" name="password"/> <br/>
    <input type="submit" value="login" />
</form>

</body>
</html>