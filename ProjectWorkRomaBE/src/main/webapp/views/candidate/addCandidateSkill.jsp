<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Candidate Skill</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>

<body>
    <h2>Add Candidate Skill</h2>
    <form action="${pageContext.request.contextPath}/candidate/addCandidateSkill" method="POST">  
        <table>
            <tr> 
                <td>ID Candidate:</td>
                <td>ID Skill:</td>
                
            </tr>
            <tr>
                <th><input type="number" id="idCandidate" name="idCandidate"></th>
                <th><input type="number" id="idSkill" name="idSkill"></th>
                
                
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