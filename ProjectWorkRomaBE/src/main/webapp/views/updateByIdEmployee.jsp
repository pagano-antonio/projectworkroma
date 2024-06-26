<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.model.Employee"%>
<%@ page import="com.model.EmployeeType"%>
<!DOCTYPE html>
<html lang="en">
<head>
<script>
    function showPreview(select) {
        var selectedImage = select.value;
        var previewImage = document.getElementById('profilePreview');
        previewImage.src = "${pageContext.request.contextPath}/resources/css/Immagini/" + selectedImage;
    }
</script>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Employee</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/update.css">
</head>
<body>

<jsp:include page="sidebarFind.jsp" />
<div class="container1">
    <div class="card1">

        <%
        Employee employee = (Employee) request.getAttribute("idEmployee");
        %>

        <form action="${pageContext.request.contextPath}/updateByIdEmployee" method="POST">
            <h1 class="title1">Update Employee</h1>
            <div class="inline-p1">
                <p>
                    <label for="idEmployee">ID:</label>
                </p>
                <input type="number" id="idEmployee" name="idEmployee" value="<%=request.getParameter("idEmployee")%>" readonly>
            </div>
            <div class="inline-p1">
                <p>
                    <label for="idEmployeeType">Employee Type:</label>
                </p>
                <select name="idEmployeeType">
                    <c:forEach var="listIdEmployeeType" items="${listIdEmployeeType}">
                        <option value="${listIdEmployeeType.idEmployeeType}">${listIdEmployeeType.idEmployeeType}) ${listIdEmployeeType.description}</option>
                    </c:forEach>
                </select>
            </div>
            <div class="inline-p1">
                <p>
                    <label for="name">Name:</label>
                </p>
                <input type="text" id="name" name="name" value="<%=employee.getName()%>">
            </div>
            <div class="inline-p1">
                <p>
                    <label for="surname">Surname:</label>
                </p>
                <input type="text" id="surname" name="surname" value="<%=employee.getSurname()%>">
            </div>
            <div class="inline-p1">
                <p>
                    <label for="email">Email:</label>
                </p>
                <input type="text" id="email" name="email" value="<%=employee.getEmail()%>">
            </div>
            <div class="inline-p1">
                <p>
                    <label for="username">Username:</label>
                </p>
                <input type="text" id="username" name="username" value="<%=employee.getUsername()%>">
            </div>
            <div class="inline-p1">
                <p>
                    <label for="password">Password:</label>
                </p>
                <input type="password" id="password" name="password" value="<%=employee.getPassword()%>">
            </div>
              			<div id="divSelect" class="inline-p1">
					<p>
					<label for="photo">Avatar:</label>
				</p>
				<select name="profilePic" onchange="showPreview(this)">
					<option value="woman.png">woman </option>
					<option value="woman1.png">woman 1</option>
					<option value="woman2.png">woman 2</option>
					<option value="woman3.png">woman 3</option>
					<option value="woman4.png">woman 4</option>
					<option value="woman5.png">woman 5</option>
					<option value="woman6.png">woman 6</option>
					<option value="woman7.png">woman 7</option>
					<option value="woman8.png">woman 8</option>
					<option value="man.png">man </option>
					<option value="man1.png">man 1</option>
					<option value="man2.png">man 2</option>
					<option value="man3.png">man 3</option>
					<option value="man4.png">man 4</option>
					<option value="man5.png">man 5</option>
					<option value="man6.png">man 6</option>
					<option value="man7.png">man 7</option>
					<option value="man8.png">man 8</option>
				</select> 
				 
				</div>
				<div id="divSelect" class="inline-p1">
				<img id="profilePreview" src="resources/css/Immagini/woman1.png" alt="Profile Preview" class="imgPreview" 
 width="80" margin="0px" >
				</div>
            <hr class="orizzontale">
            <div class="submit">
                <button class="buttonSubmit" type="submit">Submit</button>
                <button class="buttonReset" type="reset">Reset</button>
            </div>
        </form>
    </div>
</div>
</body>
</html>