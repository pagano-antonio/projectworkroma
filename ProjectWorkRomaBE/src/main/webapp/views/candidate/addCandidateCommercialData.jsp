<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Candidate Commercial Data</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>

<body>
   <div class="container">
    <img src="https://media4.giphy.com/media/v1.Y2lkPTc5MGI3NjExZDV3NzhzMTd3YWxiN2J6dG1ldGF4dXduMmdoNWp6YXI2b3JzenBpMiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9cw/eNwGfck2Awo3d2gB32/giphy.gif" width="200" alt="Weoplespace Sticker">
    <span>ADD CANDIDATE COMMERCIAL DATA</span>
</div>
    <form action="${pageContext.request.contextPath}/candidate/addCandidateCommercialData" method="POST">  
        <table>
            <tr> 
                <td>ID Candidate:</td>
                <td>Business Cost:</td>
                <td>CurrentRal:</td>  
                <td>Month Refund:</td>
                <td>Notes:</td>
                <td>ProposedRal:</td>
                <td>Subsidy Flag:</td>
                
            </tr>
            <tr>
                <th><input type="number" id="idCandidate" name="idCandidate"></th>
                <th><input type="number" id="businessCost" name="businessCost"></th>
                <th><input type="number" id="currentRal" name="currentRal"></th>
                <th><input type="number" id="monthRefund" name="monthRefund"></th>
                <th><input type="text" id="notes" name="notes"></th>
                <th><input type="number" id="proposedRal" name="proposedRal"></th>
                <th><input type="number" id="subsidyFlag" name="subsidyFlag"></th> 
                
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