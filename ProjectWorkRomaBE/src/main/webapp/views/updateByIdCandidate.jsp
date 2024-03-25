<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.Candidate"%>
<%@ page import="com.model.CandidateSkill"%>
<%@ page import="com.model.CandidateCommercialData"%>
<%@ page import="com.model.JobInterview"%>
<%@ page import="com.model.WorkExperience"%>
<%@ page import="com.model.Education"%>
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

		<div class="card1">

			<form class="formUpdate"
				action="${pageContext.request.contextPath}/updateByIdCandidate"
				method="POST">

				<%
		Candidate candidate = (Candidate) request.getAttribute("idCandidate");
		%>
				<h1 class="nametitle" onclick="toggleSection5()">Candidate
					&#129171;</h1>
				<div class="box1">

					<div class="hidden" id="candidate">
						<div class="inline-p1">
							<p>
								<label for="idCandidate">Candidate ID:</label>
							</p>
							<input type="number" id="idCandidate" name="idCandidate"
								value="<%=candidate.getIdCandidate()%>" readonly>
						</div>
						<div class="inline-p1">
							<p>
								<label for="name">Name:</label>
							</p>
							<input type="text" id="name" name="name"
								value="<%=candidate.getName()%>">
						</div>
						<div class="inline-p1">
							<p>
								<label for="surname">Surname:</label>
							</p>
							<input type="text" id="surname" name="surname"
								value="<%=candidate.getSurname()%>">
						</div>
						<div class="inline-p1">
							<p>
								<label for="birthday">Birthday:</label>
							</p>
							<input type="date" id="birthday" name="birthday"
								value="<%=candidate.getBirthday()%>">
						</div>
						<div class="inline-p1">
							<p>
								<label for="birthPlace">Birth Place:</label>
							</p>
							<input type="text" id="birthPlace" name="birthPlace"
								value="<%=candidate.getBirthPlace()%>">
						</div>
						<div class="inline-p1">
							<p>
								<label for="city">City:</label>
							</p>
							<input type="text" id="city" name="city"
								value="<%=candidate.getCity()%>">
						</div>
						<div class="inline-p1">
							<p>
								<label for="address">Address:</label>
							</p>
							<input type="text" id="address" name="address"
								value="<%=candidate.getAddress()%>">
						</div>
						<div class="inline-p1">
							<p>
								<label for="email">Email:</label>
							</p>
							<input type="email" id="email" name="email"
								value="<%=candidate.getEmail()%>">
						</div>
						<div class="inline-p1">
							<p>
								<label for="phone">Phone Number:</label>
							</p>
							<input type="tel" id="phone" name="phone"
								value="<%=candidate.getPhone()%>">
						</div>
					</div>
					</div>
					<br>
					<hr class="orizzontale">
					<div class="box1">
						<h1 class="nametitle" onclick="toggleSection4()">Education
							&#129171;</h1>
						<div class="hidden" id="education">
				
								<table class="content-table">
									<thead>
										<tr>
										    <td>ID:</td>
											<td>School Name:</td>
											<td>Place:</td>
											<td>Date:</td>
											<td>Final Grade:</td>
											<td>Education degree type:</td>
											<td></td>
											<td></td>
										</tr>
									</thead>
									<%
									if (candidate.getEducations().size() > 0) {
										for (Education education : candidate.getEducations()) {
									%>
									<tbody>
										<tr>
										    <td><%=candidate.getEducations().get(0).getIdEducation()%></td>
											<td><%=candidate.getEducations().get(0).getSchoolName()%></td>
											<td><%=candidate.getEducations().get(0).getPlace()%></td>
											<td><%=candidate.getEducations().get(0).getDate()%></td>
											<td><%=candidate.getEducations().get(0).getFinalGrade()%></td>
											<td><%=candidate.getEducations().get(0).getEducationDegreeType().getDescription()%></td>

											<td><a class="linkAdd"
												href="${pageContext.request.contextPath}/preUpdateByIdEducation?idEducation=<%=education.getIdEducation()%>">Update
											</a></td>
											<td><a class="linkAdd"
												href="${pageContext.request.contextPath}/candidate/deleteByIdEducation?idEducation=<%=education.getIdEducation()%>&idCandidate=${idCandidate.getIdCandidate()}">Delete
											</a></td>
										</tr>
										<%
										}
										}
										%>
									</tbody>
								</table>
								<br>
								<a class="linkAdd"
									href="${pageContext.request.contextPath}/candidate/preAddEducation">Add
									new Education</a>
							</div>
						</div>
				
						<br>
						<hr class="orizzontale">

						<div class="box1">
							<h1 class="nametitle" onclick="toggleSection3()">Work
								Experience &#129171;</h1>
							<div class="hidden" id="workExperience">
		
								<table class="content-table">
									<thead>
										<tr>
											<td>ID:</td>
											<td>Title:</td>
											<td>Description:</td>
											<td>Company:</td>
											<td>StartDate:</td>
											<td>EndDate:</td>
											<td>City:</td>
											<td>Update:</td>
											<td>Delete:</td>
										</tr>
									</thead>
									<%
									if (candidate.getWorkExperiences().size() > 0) {
										for (WorkExperience workExperience : candidate.getWorkExperiences()) {
									%>
									<tbody>
										<tr>
											<td><%=workExperience.getIdWorkExperience()%></td>
											<td><%=workExperience.getTitle2()%></td>
											<td><%=workExperience.getDescription2()%></td>
											<td><%=workExperience.getCompany()%></td>
											<td><%=workExperience.getStartDate()%></td>
											<td><%=workExperience.getEndDate()%></td>
											<td><%=workExperience.getCity2()%></td>
											<td><a class="linkAdd"
												href="${pageContext.request.contextPath}/preUpdateByIdWorkExperience?idWorkExperience=<%=workExperience.getIdWorkExperience()%>">Update
											</a></td>
											<td><a class="linkAdd"
												href="${pageContext.request.contextPath}/candidate/deleteByWorkExperience?idWorkExperience=<%=workExperience.getIdWorkExperience()%>&idCandidate=${idCandidate.getIdCandidate()}">Delete
											</a></td>
										</tr>
										<%
										}
										}
										%>
									</tbody>

								</table>
								<br>
								<a class="linkAdd"
									href="${pageContext.request.contextPath}/candidate/preAddWorkExperience">Add
									new Work Experience</a>

							</div>
						</div>
		
						<br>
						<hr class="orizzontale">
						<div class="box1">
							<h1 class="nametitle" onclick="toggleSection()">Job
								Interview &#129171;</h1>
							<div class="hidden" id="jobInterview">
								<table class="content-table">
									<thead>
										<tr>
											<td>ID:</td>
											<td>Date:</td>
											<td>Outcome:</td>
											<td>Employee:</td>
											<td>State Job Interview:</td>
											<td>Notes:</td>
											<td>Update:</td>
											<td>Delete:</td>
										</tr>
									</thead>
									<tbody>
										<%
										if (candidate.getJobInterviews().size() > 0) {
											for (JobInterview jobInterview : candidate.getJobInterviews()) {
										%>
										<tr>
											<td><%=jobInterview.getIdJobInterview()%></td>
											<td><%=jobInterview.getDate2()%></td>
											<td><%=jobInterview.getOutcome()%></td>
											<td><%=jobInterview.getEmployee().getUsername()%></td>
											<td><%=jobInterview.getStateJobInterview().getTitle()%></td>
											<td><%=jobInterview.getNotes2()%></td>
											<td><a class="linkAdd"
												href="${pageContext.request.contextPath}/preUpdateByIdJobInterview?idJobInterview=<%=jobInterview.getIdJobInterview()%>">Update
											</a></td>
											<td><a class="linkAdd"
												href="${pageContext.request.contextPath}/job/deleteByIdJobInterview?idJobInterview=<%=jobInterview.getIdJobInterview()%>&idCandidate=${idCandidate.getIdCandidate()}">Delete
											</a></td>
										</tr>

									</tbody>
									<%
									}
									}
									%>
								</table>
								<br>
								<a class="linkAdd"
									href="${pageContext.request.contextPath }/job/preAddJobInterview">Add
									new Job Interview</a>
							</div>
						</div>
						<br>
						<hr class="orizzontale">

						<div class="box1">
							<h1 class="nametitle" onclick="toggleSection1()">Commercial
								Data &#129171;</h1>

							<div class="hidden" id="commercialData">
								<table class="content-table">
									<thead>
										<tr>
											<td>ID:</td>
											<td>Business Cost:</td>
											<td>Current Ral:</td>
											<td>Month Refund:</td>
											<td>ProposedRal:</td>
											<td>Subsidy Flag:</td>
											<td>Notes:</td>
											<td>Update:</td>
											<td>Delete:</td>
										</tr>
									</thead>
									<tbody>
										<%
										if (candidate.getCandidateCommercialData().size() > 0) {
											for (CandidateCommercialData candidateCommercialData : candidate.getCandidateCommercialData()) {
										%>
										<tr>
											<td><%=candidateCommercialData.getIdCandidateCommercialData()%></td>
											<td><%=candidateCommercialData.getBusinessCost()%></td>
											<td><%=candidateCommercialData.getCurrentRal()%></td>
											<td><%=candidateCommercialData.getMonthRefund()%></td>
											<td><%=candidateCommercialData.getProposedRal()%></td>
											<td><%=candidateCommercialData.getSubsidyFlag()%></td>
											<td><%=candidateCommercialData.getNotes()%></td>
											<td><a class="linkAdd"
												href="${pageContext.request.contextPath}/preUpdateByIdCandidateCommercialData?idCandidateCommercialData=<%=candidateCommercialData.getIdCandidateCommercialData()%>">Update
											</a></td>
											<td><a class="linkAdd"
												href="${pageContext.request.contextPath}/candidate/deleteByIdCandidateCommercialData?idCandidateCommercialData=<%=candidateCommercialData.getIdCandidateCommercialData()%>&idCandidate=${idCandidate.getIdCandidate()}">Delete
											</a></td>
										</tr>
										<%
										}
										}
										%>

									</tbody>
								</table>
								<br>
								<a class="linkAdd"
									href="${pageContext.request.contextPath }/candidate/preAddCandidateCommercialData">Add
									new Commercial Data</a>
							</div>

						</div>
						<br>
						<hr class="orizzontale">


						<div class="box1">
							<h1 class="nametitle" onclick="toggleSection2()">Skill
								&#129171;</h1>
							<div class="hidden" id="skill">
								<table class="content-table">
									<thead>
										<tr>
											<td>ID:</td>
											<td>Title:</td>
											<td>Description:</td>
											<td>Update:</td>
											<td>Delete:</td>
										</tr>
									</thead>
									<tbody>
										<%
										if (candidate.getCandidateSkills().size() > 0) {

											for (CandidateSkill candidateSkill : candidate.getCandidateSkills()) {
										%>
										<tr>
											<td><%=candidateSkill.getSkill().getIdSkill()%></td>
											<td><%=candidateSkill.getSkill().getTitle()%></td>
											<td><%=candidateSkill.getSkill().getDescription()%></td>
											<td><a class="linkAdd"
												href="${pageContext.request.contextPath}/preUpdateByIdSkill?idSkill=<%=candidateSkill.getSkill().getIdSkill()%>">Update
											</a></td>
											<td><a class="linkAdd"
												href="${pageContext.request.contextPath}/job/deleteByIdSkill?idSkill=<%=candidateSkill.getSkill().getIdSkill()%>&idCandidate=${idCandidate.getIdCandidate()}">Delete
											</a></td>
										</tr>
										<%
										}
										}
										
										%>
									</tbody>
								</table>
								<br>
								<a class="linkAdd"
									href="${pageContext.request.contextPath}/job/preAddSkill">
									Add new Skill</a>
							</div>
						</div>
						<br>
						<hr class="orizzontale">
						<div class="submit">
							<button class="buttonSubmit" type="submit">Update</button>
							<button class="buttonReset" type="reset">Reset</button>
						</div>
			</form>
		</div>
	</div>

</body>
</html>