<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="com.model.EducationDegreeType"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Candidate</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/add.css">
<script>
	//Tasti nascosti apertura browser

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

	function toggleSection3() {
		var section = document.getElementById("workExperience");
		if (section.style.display === "none") {
			section.style.display = "block";
		} else {
			section.style.display = "none";
		}
	}

	function toggleSection4() {
		var section = document.getElementById("education");
		if (section.style.display === "none") {
			section.style.display = "block";
		} else {
			section.style.display = "none";
		}
	}

	function toggleSection5() {
		var section = document.getElementById("candidate");
		if (section.style.display === "none") {
			section.style.display = "block";
		} else {
			section.style.display = "none";
		}
	}
</script>
</head>
<body>
	<jsp:include page="sidebar.jsp" />

		<div class="card1">

			<form class="formAdd"
				action="${pageContext.request.contextPath}/addCandidateForm"
				method="POST">
				<h1 class="nametitle" onclick="toggleSection5()">Candidate
					&#129171;</h1>
				<div class="box1">

					<div class="hidden" id="candidate">
						<div class="inline-p1">
							<p>
								<label for="name">Name:</label>
							</p>
							<input type="text" id="name" name="name">
						</div>
						<div class="inline-p1">
							<p>
								<label for="surname">Surname:</label>
							</p>
							<input type="text" id="surname" name="surname">
						</div>
						<div class="inline-p1">
							<p>
								<label for="birthday">Birthday:</label>
							</p>
							<input type="date" id="birthday" name="birthday">
						</div>
						<br>
						<div class="inline-p1">
							<p>
								<label for="birthPlace">Birth Place:</label>
							</p>
							<input type="text" id="birthPlace" name="birthPlace">
						</div>
						<div class="inline-p1">
							<p>
								<label for="city">City:</label>
							</p>
							<input type="text" id="city" name="city">
						</div>
						<div class="inline-p1">
							<p>
								<label for="address">Address:</label>
							</p>
							<input type="text" id="address" name="address">
						</div>
						<br>
						<div class="inline-p1">
							<p>
								<label for="email">Email:</label>
							</p>
							<input type="email" id="email" name="email">
						</div>
						<div class="inline-p1">
							<p>
								<label for="phone">Phone Number:</label>
							</p>
							<input type="tel" id="phone" name="phone">
						</div>
					</div>
				</div>
				<br>
				<hr class="orizzontale">
				<div class="box1">
					<h1 class="nametitle" onclick="toggleSection4()">Education
						&#129171;</h1>
					<div class="hidden" id="education">
						<div class="inline-p1">
							<p>
								<label for="schoolName">School Name:</label>
							</p>
							<input type="text" id="schoolName" name="schoolName">
						</div>
						<div class="inline-p1">
							<p>
								<label for="place">Place:</label>
							</p>
							<input type="text" id="place" name="place">
						</div>
						<div class="inline-p1">
							<p>
								<label for="Education.date">Graduation Date:</label>
							</p>
							<input type="date" id="Education.date" name="Education.date">
						</div>
						<div class="inline-p1">
							<p>
								<label for="finalGrade">Final Grade:</label>
							</p>
							<input type="text" id="finalGrade" name="finalGrade">
						</div>
						<div class="inline-p1">
							<p>
								<label for="educationDegreeType">Education degree type:</label>
							</p>
							<select name="educationDegreeType">
								<c:forEach var="listEducationDegreeType"
									items="${listEducationDegreeType}">
									<option
										value="${listEducationDegreeType.idEducationDegreeType}">
									${listEducationDegreeType.idEducationDegreeType}) ${listEducationDegreeType.description}</option>
								</c:forEach>
							</select>
						</div>
					</div>

				</div>
				<br>
				<hr class="orizzontale">
				<div class="box1">
					<h1 class="nametitle" onclick="toggleSection3()">Work
						Experience &#129171;</h1>
					<div class="hidden" id="workExperience">
						<div class="inline-p1">
							<p>
								<label for="title">Title:</label>
							</p>
							<input type="text" id="title" name="title">
						</div>
						<div class="inline-p1">
							<p>
								<label for="description">Description:</label>
							</p>
							<input type="text" id="description" name="description">
						</div>
						<div class="inline-p1">
							<p>
								<label for="company">Company:</label>
							</p>
							<input type="text" id="company" name="company">
						</div>
						<div>
							<div class="inline-p1">
								<p>
									<label for="startDate">StartDate:</label>
								</p>
								<input type="date" id="startDate" name="startDate">
							</div>
							<div class="inline-p1">
								<p>
									<label for="endDate">End Date:</label>
								</p>
								<input type="date" id="endDate" name="endDate">
							</div>
							<div class="inline-p1">
								<p>
									<label for="WorkExperience.city">City:</label>
								</p>
								<input type="text" id="WorkExperience.city" name="WorkExperience.city">
							</div>
						</div>
					</div>
				</div>
				<br>
				<hr class="orizzontale">
				<div class="box1">
					<h1 class="nametitle" onclick="toggleSection()">Job Interview
						&#129171;</h1>
					<div class="hidden" id="jobInterview">
						<div class="inline-p1">
							<p>
								<label for="jobInterview.date">Date:</label>
							</p>
							<input type="date" id="date" name="date">
						</div>
						<div class="inline-p1">
							<p>
								<label for="outcome">Outcome:</label>
							</p>
							<input type="number" id="outcome" name="outcome">
						</div>
						<div class="inline-p1">
							<p>
								<label for="employee">Employee:</label>
							</p>
							<select name="employee">
								<c:forEach var="listEmployee" items="${listEmployee}">
									<option value="${listEmployee.idEmployee}">
										${listEmployee.idEmployee}) ${listEmployee.username}</option>
								</c:forEach>
							</select>
						</div>
						<div class="inline-p1">
							<p>
								<label for="contractType">Contract Type:</label>
							</p>
							<select name="contractType">
								<c:forEach var="listContractType" items="${listContractType}">
									<option value="${listContractType.idContractType}">
										${listContractType.title}</option>
								</c:forEach>
							</select>
						</div>
						<div class="inline-p1">
							<p>
								<label for="stateJobInterview">State Job Interview:</label>
							</p>
							<select name="stateJobInterview">
								<c:forEach var="listStateJobInterview"
									items="${listStateJobInterview}">
									<option value="${listStateJobInterview.idStateJobInterview}">
										${listStateJobInterview.idStateJobInterview}) ${listStateJobInterview.title}</option>
								</c:forEach>
							</select>
						</div>
						<br>
						<div class="inline-p1">
							<p>
								<label for="notes">Notes:</label>
							</p>
							<textarea name="notes" name="notes"row="8" cols="80"></textarea>
						</div>
					</div>
				</div>
				<hr class="orizzontale">

				<div class="box1">
					<h1 class="nametitle" onclick="toggleSection1()">Commercial
						Data &#129171;</h1>
					<div class="hidden" id="commercialData">

						<div class="inline-p1">
							<p>
								<label for="businessCost">Business Cost:</label>
							</p>
							<input type="number" id="businessCost" name="businessCost">
						</div>
						<div class="inline-p1">
							<p>
								<label for="currentRal">CurrentRal:</label>
							</p>
							<input type="number" id="currentRal" name="currentRal">
						</div>
						<div class="inline-p1">
							<p>
								<label for="monthRefund">Month Refund:</label>
							</p>
							<input type="number" id="monthRefund" name="monthRefund">
						</div>
						<div class="inline-p1">
							<p>
								<label for="proposedRal">ProposedRal:</label>
							</p>
							<input type="number" id="proposedRal" name="proposedRal">
						</div>
						<div class="inline-p1">
							<p>
								<label for="subsidyFlag">Subsidy Flag:</label>
							</p>
							<input type="number" id="subsidyFlag" name="subsidyFlag">
						</div>
						<div class="inline-p1">
							<p>
								<label for="candidateCommercialData.notes">Notes:</label>
							</p>
							<textarea name="candidateCommercialData.notes" id="candidateCommercialData.notes"row="40" cols="80"></textarea>
						</div>
					</div>
				</div>
				<hr class="orizzontale">


				<div class="box1">
					<h1 class="nametitle" onclick="toggleSection2()">SKill
						&#129171;</h1>
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
									<th><input style="background-color: #e9e9f3" type="text"
										id="Skill.title" name="Skill.title"></th>
									<th><input style="background-color: #e9e9f3" type="text"
										id="Skill.description" name="Skill.description"></th>
								</tr>
								<tr>
									<th><input style="background-color: #f8f8fc" type="text"
										id="Skill.title" name="Skill.title"></th>
									<th><input style="background-color: #f8f8fc" type="text"
										id="Skill.description" name="Skill.description"></th>
								</tr>
								
							</tbody>
						</table>

					</div>
				</div>
				<div class="submit">
					<button class="buttonSubmit" type="submit">Submit</button>
					<button class="buttonReset" type="reset">Reset</button>
				</div>
			</form>
		</div>
</body>
</html>