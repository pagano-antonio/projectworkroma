<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Job Offer</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>

<div class="container">
    <img src="https://media4.giphy.com/media/v1.Y2lkPTc5MGI3NjExZDV3NzhzMTd3YWxiN2J6dG1ldGF4dXduMmdoNWp6YXI2b3JzenBpMiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9cw/eNwGfck2Awo3d2gB32/giphy.gif" width="200" alt="Weoplespace Sticker">
    <span>ADD JOB OFFER</span>
</div>

    <form action="${pageContext.request.contextPath}/job/addJobOffer" method="POST">  
        <table>
            <tr> 
                <td>Title:</td>
                <td>Description:</td>  
                <td>Start Date:</td>
                <td>End Date:</td>
                <td>ID Company Client:</td>
                <td>Min Ral:</td>
                <td>Max Ral:</td>
                <td>ID Contract Type:</td>
            </tr>
            <tr>
                <th><input type="text" id="title" name="title"></th>
                <th><input type="text" id="description" name="description"></th>
                <th><input type="date" id="startDate" name="startDate"></th>
                <th><input type="date" id="endDate" name="endDate"></th>
                <th><input type="number" id="idCompanyClient" name="idCompanyClient"></th>
                <th><input type="number" id="minRal" name="minRal"></th>
                <th><input type="number" id="maxRal" name="maxRal"></th>
                <th><input type="number" id="idContractType" name="idContractType"></th>
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