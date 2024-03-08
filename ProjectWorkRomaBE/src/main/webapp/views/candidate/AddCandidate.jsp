<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Candidate</title>
</head>
<body>
    <h2>Add Candidate</h2>
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
                <td><input type="text" id="name" name="name"></td>
                <td><input type="text" id="surname" name="surname"></td>
                <td><input type="date" id="birthday" name="birthday"></td>
                <td><input type="text" id="birthPlace" name="birthPlace"></td>
                <td><input type="text" id="city" name="city"></td>
                <td><input type="text" id="address" name="address"></td>
                <td><input type="text" id="email" name="email"></td>
                <td><input type="number" id="phone" name="phone"></td>
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