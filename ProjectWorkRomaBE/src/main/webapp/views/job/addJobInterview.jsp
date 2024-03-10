<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Job Interview</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>

<div class="container">
    <img src="https://media4.giphy.com/media/v1.Y2lkPTc5MGI3NjExZDV3NzhzMTd3YWxiN2J6dG1ldGF4dXduMmdoNWp6YXI2b3JzenBpMiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9cw/eNwGfck2Awo3d2gB32/giphy.gif" width="200" alt="Weoplespace Sticker">
    <span>ADD JOB INTERVIEW</span>
</div>

  <form action="${pageContext.request.contextPath}/job/addJobInterview" method="POST">  
        <table>
            <tr> 
                <td>ID Candidate:</td>
                <td>Date:</td>  
                <td>ID State Job Interview:</td>
                <td>Outcome:</td>
                <td>Notes:</td>
                <td>ID Employee:</td>
            </tr>
            <tr>
                <th><input type="number" id="idCandidate" name="idCandidate"></th>
                <th><input type="date" id="date" name="date"></th>
                <th><input type="number" id="idStateJobInterview" name="idStateJobInterview"></th>
                <th><input type="number" id="outcome" name="outcome"></th>
                <th><input type="text" id="notes" name="notes"></th>
                <th><input type="number" id="idEmployee" name="idEmployee"></th>
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