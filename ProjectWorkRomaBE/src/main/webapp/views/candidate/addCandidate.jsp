<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Candidate</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>

<body>
    
    <form action="${pageContext.request.contextPath}/candidate/addCandidate" method="POST">  
        <table>
            <tr> 
                <td>Name:</td>
                <td>Surname:</td>  
                <td>Birthday:</td>
                <td>Birth Place:</td>
                <td>City:</td>
                <td>Address:</td>
                <td>Email:</td>
                <td>Phone Number:</td>
            </tr>
            <tr>
                <th><input type="text" id="name" name="name"></th>
                <th><input type="text" id="surname" name="surname"></th>
                <th><input type="date" id="birthday" name="birthday"></th>
                <th><input type="text" id="birthPlace" name="birthPlace"></th>
                <th><input type="text" id="city" name="city"></th>
                <th><input type="text" id="address" name="address"></th>
                <th><input type="text" id="email" name="email"></th>
                <th><input type="number" id="phone" name="phone"></th>
            </tr>
        </table>
        <h4>Select</h4>
        <table>
            <tr>
                <td><input type="submit" value="Submit"></td>
                <td><input type="reset" value="Reset"></td>
            </tr>
        </table>
    </form>
</body>
</html>