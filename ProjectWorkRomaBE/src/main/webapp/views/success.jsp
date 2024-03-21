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
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/success.css">
</head>
<body>

    <div class="container1">
        <div class="card1">
            <div class="blocco">
                <img class="imageLogin" src="${pageContext.request.contextPath}/resources/css/Immagini/success.gif" alt="success" width="400" height="400">
                <h1 class="h1title">Operazione effettuata correttamente!</h1>
            </div>
            <hr class="orizzontale">
            <div>
                <a href="${pageContext.request.contextPath}/home">
                    <button class="buttonHome">Home</button>
                </a>
            </div>
        </div>
    </div>

</body>
</html>
</html>