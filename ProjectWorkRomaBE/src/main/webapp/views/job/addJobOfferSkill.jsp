<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Job Offer Skill</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>

<div class="container">
    <img src="https://media4.giphy.com/media/v1.Y2lkPTc5MGI3NjExZDV3NzhzMTd3YWxiN2J6dG1ldGF4dXduMmdoNWp6YXI2b3JzenBpMiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9cw/eNwGfck2Awo3d2gB32/giphy.gif" width="200" alt="Weoplespace Sticker">
    <span>ADD JOB OFFER SKILL</span>
</div>

    <h2>Add Job Offer Skill</h2>
    <form action="${pageContext.request.contextPath}/job/addJobOfferSkill" method="POST">  
        <table>
            <tr> 
                <td>ID Job Offer:</td>
                <td>ID Skill:</td>
            </tr>
            <tr>
                <th><input type="number" id="idJobOffer" name="idJobOffer"></th>
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