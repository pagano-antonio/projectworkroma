<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.model.Candidate"%>
    <%@ page import="com.model.CandidateSkill"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Candidate</title>
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

<div class="container1">

<% Candidate candidate = (Candidate) request.getAttribute("idCandidate"); %>
		<div class="card1">

			<form class="formUpdate"
				action="${pageContext.request.contextPath}/updateByIdCandidate"
				method="POST">
<h1 onclick="toggleSection5()">Candidate &#129171;</h1>
<div class="box1">
					
<div class="hidden" id="candidate">
	  <div class="inline-p1">
	  <input type="number" id="idCandidate" name="idCandidate" value="<%=request.getParameter("idCandidate") %>"hidden>
			<p>
				<label for="name">Name:</label>
			</p>
			<input type="text" id="name" name="name" value="<%=candidate.getName()%>">
	  </div>
	  <div class="inline-p1">
			<p>
				<label for="surname">Surname:</label>
			</p>
			<input type="text" id="surname" name="surname" value="<%=candidate.getSurname()%>">
	  </div>
	  <div class="inline-p1">
			<p>
				<label for="birthday">Birthday:</label>
			</p>
			<input type="date" id="birthday" name="birthday" value="<%=candidate.getBirthday()%>">
	  </div>
		<br>
	  <div class="inline-p1">
		    <p>
				<label for="birthPlace">Birth Place:</label>
			</p>
			<input type="text" id="birthPlace" name="birthPlace" value="<%=candidate.getBirthPlace()%>">
	  </div>
						<div class="inline-p1">
							<p>
								<label for="city">City:</label>
							</p>
							<input type="text" id="city" name="city" value="<%=candidate.getCity()%>">
						</div>
						<div class="inline-p1">
							<p>
								<label for="address">Address:</label>
							</p>
							<input type="text" id="address" name="address" value="<%=candidate.getAddress()%>">
						</div>
						<br>
						<div class="inline-p1">
							<p>
								<label for="email">Email:</label>
							</p>
							<input type="email" id="email" name="email" value="<%=candidate.getEmail()%>">
						</div>
						<div class="inline-p1">
							<p>
								<label for="phone">Phone Number:</label>
							</p>
							<input type="tel" id="phone" name="phone" value="<%=candidate.getPhone()%>">
						</div>
					</div>
				</div>
				<br>
				<hr>
				
				
		<div class="box1">
					<h1 onclick="toggleSection4()">Education &#129171;</h1>
					<div class="hidden" id="education">
						<div class="inline-p1">
							<p>
								<label for="schoolName">School Name:</label>
							</p>
							<input type="text" id="schoolName" name="schoolName" value="<%=candidate.getEducations().get(0).getSchoolName()%>" >
						</div>
						<div class="inline-p1">
							<p>
								<label for="place">Place:</label>
							</p>
							<input type="text" id="place" name="place" value="<%=candidate.getEducations().get(0).getPlace()%>">
						</div>
						<br>
						<div class="inline-p1">
							<p>
								<label for="date">Graduation Date:</label>
							</p>
							<input type="date" id="date" name="date" value="<%=candidate.getEducations().get(0).getDate()%>">
						</div>
						<div class="inline-p1">
							<p>
								<label for="finalGrade">Final Grade:</label>
							</p>
							<input type="text" id="finalGrade" name="finalGrade" value="<%=candidate.getEducations().get(0).getFinalGrade()%>">
						</div>
						<div class="inline-p1">
							<p>
								<label for="educationDegreeType">Education degree type:</label>
							</p>
							<select name="idEducationDegreeType">
								<c:forEach var="listEducationDegreeType"
									items="${listEducationDegreeType}">
									<option
										value="${listEducationDegreeType.idEducationDegreeType}">
										${listEducationDegreeType.description}</option>
								</c:forEach>
							</select>
						</div>
					</div>

				</div>
				<br>
				<hr>
				
				<div class="box1">
					<h1 onclick="toggleSection3()">Work Experience &#129171;</h1>
					<div class="hidden" id="workExperience">
						<div class="inline-p1">
							<p>
								<label for="title">Title:</label>
							</p>
							<input type="text" id="title" name="title" value="<%=candidate.getWorkExperiences().get(0).getTitle()%>">
						</div>
						<div class="inline-p1">
							<p>
								<label for="description">Description:</label>
							</p>
							<input type="text" id="description" name="description" value="<%=candidate.getWorkExperiences().get(0).getDescription()%>">
						</div>
						<div class="inline-p1">
							<p>
								<label for="company">Company:</label>
							</p>
							<input type="text" id="company" name="company" value="<%=candidate.getWorkExperiences().get(0).getCompany()%>">
						</div>
					<div>
						<div class="inline-p1">
							<p>
								<label for="startDate">StartDate:</label>
							</p>
							<input type="date" id="startDate" name="startDate" value="<%=candidate.getWorkExperiences().get(0).getStartDate()%>">
						</div>
						<div class="inline-p1">
							<p>
								<label for="endDate">End Date:</label>
							</p>
							<input type="date" id="endDate" name="endDate" value="<%=candidate.getWorkExperiences().get(0).getEndDate()%>">
						</div>
						<div class="inline-p1">
							<p>
								<label for="city">City:</label>
							</p>
							<input type="text" id="city" name="city" value="<%=candidate.getWorkExperiences().get(0).getCity()%>">
						</div>
						</div>
					</div>				
				</div>
				<br><hr>
				<div class="box1">
					<h1 onclick="toggleSection()">Job Interview &#129171;</h1>
					<div class="hidden" id="jobInterview">
						<div class="inline-p1">
							<p>
								<label for="date">Date:</label>
							</p>
							<input type="date" id="date" name="date" value="<%=candidate.getJobInterviews().get(0).getDate()%>">
						</div>
						<div class="inline-p1">
							<p>
								<label for="outcome">Outcome:</label>
							</p>
							<input type="number" id="outcome" name="outcome" value="<%=candidate.getJobInterviews().get(0).getOutcome()%>">
						</div>
						<div class="inline-p1">
											<p>
								<label for="employee">Employee:</label>
							</p>
							<select name="idEmployee">
								<c:forEach var="listEmployee"
									items="${listEmployee}">
									<option
										value="${listEmployee.idEmployee}">
										${listEmployee.username}</option>
								</c:forEach>
							</select>
							</div>
							<div class="inline-p1">
										<p>
								<label for="contractType">Contract Type:</label>
							</p>
							<select name="idContractType">
								<c:forEach var="listContractType"
									items="${listContractType}">
									<option
										value="${listContractType.idContractType}">
										${listContractType.title}</option>
								</c:forEach>
							</select></div>
										<div class="inline-p1">
											<p>
								<label for="stateJobInterview">State Job Interview:</label>
							</p>
							<select name="idStateJobInterview">
								<c:forEach var="listStateJobInterview"
									items="${listStateJobInterview}">
									<option
										value="${listStateJobInterview.idStateJobInterview}">
										${listStateJobInterview.title}</option>
								</c:forEach>
							</select></div> 
						<br>
						<div class="inline-p1">
							<p>
								<label for="notes">Notes:</label>
							</p>
							<textarea name="notes" row="8" cols="80" value="<%=candidate.getJobInterviews().get(0).getNotes()%>"></textarea>
						</div></div>
					</div>
				<hr>

                <div class="box1">
				<h1 onclick="toggleSection1()">Commercial Data &#129171;</h1>
				<div class="hidden" id="commercialData">
					
						<div class="inline-p1">
							<p>
								<label for="businessCost">Business Cost:</label>
							</p>
							<input type="number" id="businessCost" name="businessCost" value="<%=candidate.getCandidateCommercialData().get(0).getBusinessCost()%>">
						</div>
						<div class="inline-p1">
							<p>
								<label for="currentRal">CurrentRal:</label>
							</p>
							<input type="number" id="currentRal" name="currentRal" value="<%=candidate.getCandidateCommercialData().get(0).getCurrentRal()%>">
						</div>
						<div class="inline-p1">
							<p>
								<label for="monthRefund">Month Refund:</label>
							</p>
							<input type="number" id="monthRefund" name="monthRefund" value="<%=candidate.getCandidateCommercialData().get(0).getMonthRefund()%>">
						</div>
						<div class="inline-p1">
							<p>
								<label for="proposedRal">ProposedRal:</label>
							</p>
							<input type="number" id="proposedRal" name="proposedRal" value="<%=candidate.getCandidateCommercialData().get(0).getProposedRal()%>">
						</div>
						<div class="inline-p1">
							<p>
								<label for="subsidyFlag">Subsidy Flag:</label>
							</p>
							<input type="number" id="subsidyFlag" name="subsidyFlag" value="<%=candidate.getCandidateCommercialData().get(0).getSubsidyFlag()%>">
						</div>
					
					<br>
					<div class="inline-p1">
						<p>
							<label for="notes">Notes:</label>
						</p>
						<textarea name="notes" row="40" cols="80" value="<%=candidate.getCandidateCommercialData().get(0).getNotes()%>"></textarea>
					</div> <br></div>
					
				</div>
				<hr>


				<div class="box1">
					<h1 onclick="toggleSection2()">Skill &#129171;</h1>
					<div class="hidden" id="skill">
						<table>
							<thead>
								<tr>
									<td>Title:</td>
									<td>Description:</td>
								</tr>
							</thead>
							<tbody>
							 <% for (CandidateSkill candidateSkill : candidate.getCandidateSkills()) { %>
								<tr>
									<td><input type="text" id="title" name="title" value="<%= candidateSkill.getSkill().getTitle()%>"></td>
									<td><input type="text" id="description" name="description" value="<%= candidateSkill.getSkill().getDescription()%>"></td>
								</tr>
								 <% } %>
							</tbody>
						</table>

					</div>
				</div>
				<div class="submit">
					<button class="buttonSubmit" type="submit">Update</button>
					<button class="buttonReset" type="reset">Reset</button>
				</div>
			</form>
		</div>
	</div>

</body>
</html>