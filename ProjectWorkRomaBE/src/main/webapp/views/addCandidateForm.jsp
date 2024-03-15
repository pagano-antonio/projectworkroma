<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="com.model.EducationDegreeType" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Candidate</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/add.css">
<script>
function toggleSection() {
    var section = document.getElementById("jobInterview");
    if (section.style.display === "none") {
        section.style.display = "block";
    } else {
        section.style.display = "none";
    }
}
    function toggleSection1() {
        var section = document.getElementById("commercialData");
        if (section.style.display === "none") {
            section.style.display = "block";
        } else {
            section.style.display = "none";
        }
    }
    
    function toggleSection2() {
        var section = document.getElementById("skill");
        if (section.style.display === "none") {
            section.style.display = "block";
        } else {
            section.style.display = "none";
        }
    }
</script>
</head>
<body>
<%-- <jsp:include page="sidebar.jsp" /> --%>
<div class="container">
<div class="card">
<form class="formAdd" action="${pageContext.request.contextPath}/addCandidateForm" method="POST"> 

	<div class="box">
	<h1>Sign Up</h1>
		<div>
	    <div class="inline-p">
        <p><label for="name">Name:</label></p>
        <input type="text" id="name" name="name"></div>
        <div class="inline-p">
        <p><label for="surname">Surname:</label></p>
        <input type="text" id="surname" name="surname"></div>
        <div class="inline-p">
        <p><label for="birthday">Birthday:</label></p>
        <input type="date" id="birthday" name="birthday"></div>
		<br>
		<div class="inline-p">
			<p><label for="birthPlace">Birth Place:</label> </p>
			<input type="text"id="birthPlace" name="birthPlace"> </div>
			<div class="inline-p">
			<p><label for="city">City:</label></p>
			<input type="text" id="city" name="city"></div> 
			<div class="inline-p">
			<p><label for="address">Address:</label> </p>
			<input type="text" id="address"name="address"></div>
		</div>
		<br>
		<div class="inline-p">
			<p><label for="email">Email:</label></p> 
			<input type="email" id="email" name="email"></div> 
			<div class="inline-p">
			<p><label for="phone">Phone Number:</label></p> 
			<input type="tel" id="phone" name="phone"></div>
		</div>
		<br>
		<div class="submit">
			<button class="buttonSubmit"type="submit">Submit</button>
			<button class="buttonReset"type="reset">Reset</button>
		</div>
<hr>
	<div class="box">	
	<h1>Education</h1>
	<div>
		<div class="inline-p">
			<p><label for="schoolName">School Name:</label></p>  
			<input type="text" id="schoolName" name="schoolName"></div> 
			<div class="inline-p">
			<p><label for="place">Place:</label></p> 
			<input type="text" id="place" name="place"></div>
		<br>
		<div class="inline-p">
			<p><label for="date">Graduation Date:</label></p>  
			<input type="date" id="date"name="date"></div>
			<div class="inline-p">
			<p><label for="finalGrade">Final Grade:</label></p>  
			<input type="text" id="finalGrade" name="finalGrade"> </div>
			<div class="inline-p">
			<p><label for="description">Education degree type:</label></p>
            <select name="educationDegreeType">
            <c:forEach var="educationDegreeType" items="${educationDegreeType}">
            <option value="${educationDegreeType.Description}">
            ${educationDegreeType.Description}</option>
            </c:forEach>
            </select></div>
		</div>
		<br>
		<div class="submit">
			<button class="buttonSubmit"type="submit">Submit</button>
			<button class="buttonReset"type="reset">Reset</button>
		</div>
	</div>
<hr>
	<div class="box">
	<h1>Work Experience</h1>
		<div>
		<div class="inline-p">
			<p><label for="title">Title:</label> </p> 
			<input type="text" id="title"name="title" > </div>
			<div class="inline-p">
			<p><label for="description">Description:</label> </p> 
			<input type="text"id="description" name="description"></div>
			<div class="inline-p"> 
			<p><label for="company">Company:</label></p>  
			<input type="text" id="company"name="company"></div> 
			</div>
			<div>
			<div class="inline-p">
			<p><label for="startDate">StartDate:</label> </p> 
			<input type="date" id="startDate" name="startDate"> </div>
			<div class="inline-p">
			<p><label for="endDate">End Date:</label> </p> 
			<input type="date" id="endDate"	name="endDate"></div>
			<div class="inline-p">
			<p><label for="city">City:</label> </p> 
			<input type="text" id="city" name="city"></div>
		</div>
		<br>
		<div class="submit">
			<button class="buttonSubmit"type="submit">Submit</button>
			<button class="buttonReset"type="reset">Reset</button>
		</div>
	</div>
	<hr>
	<div class="box">
	<h1 onclick="toggleSection()"> Job Interview    &#129171;</h1>
<div class="hidden" id="jobInterview">
			<div class="inline-p">
			<p><label for="date">Date:</label></p> 
			<input type="date" id="date"name="date"></div> 
			<div class="inline-p">
			<p><label for="outcome">Outcome:</label></p> 
			<input type="number" id="outcome" name="outcome"></div>
			<div class="inline-p">
<!-- 			<p><label for="text">Employee:</label></p>  -->
<!-- 			<select name="employee"> -->
<%-- 			<option value="${employee.getIdEmployee} - ${employee.getName}"></option></select> </div> --%>
<!-- 			<div><div class="inline-p"> -->
<!-- 			<p><label for="text">Contract Type:</label></p>  -->
<!-- 			 <select name="contractType"> -->
<%-- 			 <option value="${contractType.getDescription()}"></option></select> </div> --%>
<!-- 			<div class="inline-p"> -->
<!-- 			<p><label for="text">State Job Interview:</label></p>  -->
<!-- 			<select name="stateJobInterview"> -->
<%-- 			<option value="${stateJobInterview.getTitle()}"></option></select></div>  --%>
		</div>
		<br>
		<div class="inline-p">
			<p><label for="notes">Notes:</label></p>
			<textarea name="notes" row="8" cols="80">></textarea>
		</div>
		<div class="submit">
			<button class="buttonSubmit"type="submit">Submit</button>
			<button class="buttonReset"type="reset">Reset</button>
		</div>
		</div>
	</div>
	<hr>
<h1 onclick="toggleSection1()"> Commercial Data    &#129171;</h1>
<div class="hidden" id="commercialData">
		<div class="box">
		<div class="inline-p">
			<p><label for="businessCost">Business Cost:</label></p>
			<input type="number"id="businessCost" name="businessCost"></div> 
			<div class="inline-p">
			<p><label for="currentRal">CurrentRal:</label></p>
			<input type="number"id="currentRal" name="currentRal"></div> 
			<div class="inline-p">
			<p><label for="monthRefund">Month Refund:</label></p>
			<input type="number" id="monthRefund" name="monthRefund"></div>
			<div class="inline-p">
			<p><label for="proposedRal">ProposedRal:</label> </p>
			<input type="number" id="proposedRal" name="proposedRal"> </div>
			<div class="inline-p">
			<p><label for="subsidyFlag">Subsidy Flag:</label> </p>
			<input type="number" id="subsidyFlag" name="subsidyFlag"></div>
		</div>
		<br>
		<div>
			<p><label for="notes">Notes:</label></p>
			<textarea name="notes" row="40" cols="80"></textarea>
		</div>
		<br>
		<div class="submit">
			<button class="buttonSubmit"type="submit">Submit</button>
			<button class="buttonReset"type="reset">Reset</button>
		</div>
	</div>
	<hr>
	<div class="box">
<h1 onclick="toggleSection2()">SKill &#129171;</h1>
<div class="hidden" id="skill">
    <table>
        <thead>
            <tr>
                <td>Title:</td>
                <td>Description:</td>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><input type="text" id="title" name="title"></td>
                <td><input type="text" id="description" name="description"></td>
            </tr>
        </tbody>
    </table>
    <div class="submit">
        <button class="buttonSubmit" type="submit">Submit</button>
        <button class="buttonReset" type="reset">Reset</button>
    </div>
</div>
</div>
	</form>
	</div>	
		</div>	
</body>
</html>