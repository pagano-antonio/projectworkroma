<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Candidate</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/add.css">
</head>
<body>
<div class="box1">
<form class="formAdd" action="${pageContext.request.contextPath}/candidate/addCandidateForm" method="POST"> 
	
	<div class="box">
	<h1>ANAGRAFICA</h1>
		<div>
			<label for="name">Name:</label> 
			<input type="text" id="name"name="name"> 
			<label for="surname">Surname:</label> 
			<input type="text" id="surname"name="surname"> 
			<label for="birthday">Birthday:</label> 
			<input type="date" id="birthday" name="birthday">
			</div>
		<br>
		<div>
			<label for="birthPlace">Birth Place:</label> 
			<input type="text"id="birthPlace" name="birthPlace"> 
			<label for="city">City:</label>
			<input type="text" id="city" name="city"> 
			<label for="address">Address:</label> 
			<input type="text" id="address"name="address">
		</div>
		<br>
		<div>
			<label for="email">Email:</label> 
			<input type="email" id="email" name="email"> 
			<label for="phone">Phone Number:</label> 
			<input type="tel" id="phone" name="phone">
		</div>
		<br>
		<div class="submit">
			<button class="buttonSubmit"type="submit">Submit</button>
			<button class="buttonReset"type="reset">Reset</button>
		</div>
	</div>

	<div class="box">	
	<h1>EDUCATION</h1>
		<div>
			<label for="schoolName">School Name:</label> 
			<input type="text" id="schoolName" name="schoolName"> 
			<label for="place">Place:</label>
			<input type="text" id="place" name="place">
		</div>
		<br>
		<div>
			<label for="date">Graduation:</label> <input type="date" id="date"
				name="date"> <label for="finalGrade">Final Grade:</label> <input
				type="text" id="finalGrade" name="finalGrade"> <label
				for="description">Description education degree type:</label>
			<%--  <select><option value="<%=educationDegreeType.getDescription()%>"></option> --%>
			<!--  </select> -->
		</div>
		<br>
		<div class="submit">
			<button class="buttonSubmit"type="submit">Submit</button>
			<button class="buttonReset"type="reset">Reset</button>
		</div>
	</div>

	
	<div class="box">
	<h1>WORKEXPERIENCE</h1>
		<div>
			<label for="title">Title:</label> 
			<input type="text" id="title"name="title" > 
			<label for="description">Description:</label> 
			<input type="text"id="description" name="description"> 
			<label for="startDate">StartDate:</label> 
			<input type="date" id="startDate" name="startDate"> 
			<label for="endDate">End Date:</label> 
			<input type="date" id="endDate"	name="endDate">
		</div>
		<br>
		<div>
			<label for="company">Company:</label> 
			<input type="text" id="company"name="company"> 
			<label for="city">City:</label> 
			<input type="text" id="city" name="city">
		</div>
		<br>
		<div class="submit">
			<button class="buttonSubmit"type="submit">Submit</button>
			<button class="buttonReset"type="reset">Reset</button>
		</div>
	</div>
	
	<div class="box">
	<h1>JOB INTERVIEW</h1>
		<div>
			<label for="date">Date:</label> 
			<input type="date" id="date"name="date"> 
			<label for="outcome">Outcome:</label> 
			<input type="number" id="outcome" name="outcome">
			<%--         <select><option value="${ employee.getIdEmployeeUsernameNmae }</option></select> --%>
			<%--          <select><option value="<%=contractType.getDescription %></option></select> --%>
			<%--         <select><option value="<%=stateJobInterview.getTitle()&&getDescription %></option></select> --%>
		</div>
		<br>
		<div>
			<label for="notes">Notes:</label>
			<textarea name="notes" row="8" cols="80">></textarea>
		</div>
		<div class="submit">
			<button class="buttonSubmit"type="submit">Submit</button>
			<button class="buttonReset"type="reset">Reset</button>
		</div>
	</div>
	
	<div class="box">
	<h1>CANDIDATE COMMERCIAL DATA</h1>
		<div>
			<p><label for="businessCost">Business Cost:</label> </p>
			<input type="number"id="businessCost" name="businessCost"> 
			<p><label for="currentRal">CurrentRal:</label></p> 
			<input type="number"id="currentRal" name="currentRal"> 
			<p><label for="monthRefund">Month Refund:</label></p>
			<input type="number" id="monthRefund" name="monthRefund">
			<p><label for="proposedRal">ProposedRal:</label> </p>
			<input type="number" id="proposedRal" name="proposedRal"> 
			<label for="subsidyFlag">Subsidy Flag:</label> 
			<input type="number" id="subsidyFlag" name="subsidyFlag">
		</div>
		<br>
		<div>
			<label for="notes">Notes:</label>
			<textarea name="notes" row="40" cols="80"></textarea>
		</div>
		<br>
		<div class="submit">
			<button class="buttonSubmit"type="submit">Submit</button>
			<button class="buttonReset"type="reset">Reset</button>
		</div>
	</div>
	
	<div class="box">
	<div class="table">
	<h1>SKILL</h1>
		<table>
			<thead>
				<td>Title: </td>
				<td>Description: </td>
			</thead><tbody>
				<th><input type="text" id="title" name="title"></th>
				<th><input type="text" id="description" name="description"></th>
			</tbody>		
		</table>
		<div class="submit">
			<button class="buttonSubmit"type="submit">Submit</button>
			<button class="buttonReset"type="reset">Reset</button>
		</div>
	</div>
	</div>
	</form>
	</div>	
</body>
</html>