<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/sidebar.css">
</head>
<body>

	<div id="mySidenav" class="sidenav">
		<a href="javascript:void(0)" class="closebtn" onclick="closeNav()"><h4>&#x27F6;</h4></a>
	
				<button class="dropdown-btn">Employee
				<i class="fa fa-caret-down"></i></button>
				<div class="dropdown-container">
					<a href="${pageContext.request.contextPath}/company/preAddEmployee">Add
						Employee</a> <a
						href="${pageContext.request.contextPath}/company/preFindByIdEmployee">Find
						Employee by ID</a> <a
						href="${pageContext.request.contextPath}/company/preFindByIdEmployeeType">Find
						By Employee Type</a>
				</div>
			<hr>
			<button class="dropdown-btn">Candidate
			<i class="fa fa-caret-down"></i></button>
			<div class="dropdown-container">
				<a href="${pageContext.request.contextPath}/candidate/preAddCandidate">Add
					Candidate</a> <a
					href="${pageContext.request.contextPath}/candidate/preFindByIdCandidate">Find
					Candidate by ID </a> <a
					href="${pageContext.request.contextPath}/candidate/preFindBySurnameCandidate">Find
					Candidate by Surname </a> <a
					href="${pageContext.request.contextPath}/candidate/preFindByCityCandidate">Find
					Candidate by City</a> <a
					href="${pageContext.request.contextPath}/candidate/preFindByEducationDegreeTypeCandidate">Find
					Candidate by Education Degree Type</a> <a
					href="${pageContext.request.contextPath}/candidate/preFindByIdCandidateSkill">Find
					Candidate by ID Skill</a> <a
					href="${pageContext.request.contextPath}/candidate/preFindBySkillCandidate">Find
					Candidate by Skill</a> <a
					href="${pageContext.request.contextPath}/candidate/preFindByPhoneCandidate">Find
					Candidate by Phone Number</a> <a
					href="${pageContext.request.contextPath}/candidate/preFindByIdCandidateCommercialData">Find
					Candidate by Commercial Data</a> <a
					href="${pageContext.request.contextPath}/candidate/preFindByOutcomeJobInterviewCandidate">Find
					Candidate by Outcome Job Interview </a>
			</div>
		<hr>
			<button class="dropdown-btn">Company
			<i class="fa fa-caret-down"></i></button>
			<div class="dropdown-container">
				<a
					href="${pageContext.request.contextPath}/company/preAddCompanyClient">Add
					Company Client</a> <a
					href="${pageContext.request.contextPath}/company/preFindByIdCompanyClient">Find
					Company Client by ID</a> <a
					href="${pageContext.request.contextPath}/company/preFindByNameCompanyClient">Find
					Company Client by name</a> <a
					href="${pageContext.request.contextPath}/company/preFindByCityCompanyClient">Find
					Company Client by city</a>
			</div>
		<hr>
			<button class="dropdown-btn">Job
			<i class="fa fa-caret-down"></i></button>
			<div class="dropdown-container">
				<a href="${pageContext.request.contextPath}/job/preAddJobOffer">Add
					Job Offer</a> <a
					href="${pageContext.request.contextPath}/job/preFindByTitleJobOffer">Find
					Job Offer by Title</a> <a
					href="${pageContext.request.contextPath}/job/preFindByIdJobOfferSkillJobOffer">Find
					Job Offer by Skill</a> <a
					href="${pageContext.request.contextPath}/job/preFindByStartDateAndEndDate">Find
					Job Offer by Date</a> <a
					href="${pageContext.request.contextPath}/job/preFindByCompanyClientJobOffer">Find
					Job Offer by Company Client</a> <a
					href="${pageContext.request.contextPath}/job/preFindByContractTypeJobOffer">Find
					Job Offer by Contract Type</a> <a
					href="${pageContext.request.contextPath}/job/preFindByMaxRalJobOffer">Find
					Job Offer by Max Ral</a> <a
					href="${pageContext.request.contextPath}/job/preFindByMinRalJobOffer">Find
					Job Offer by Min Ral</a> <a
					href="${pageContext.request.contextPath}/job/preFindByStartDateAndEndDate">Find
					Job Offer by Start Date and End Date</a>
			</div>
		<hr>
		
		<a id="home" href="${pageContext.request.contextPath}/home">Home</a>
	</div>
	<div id="main">
		<h2 id="openBtn" onclick="openNav()">&#9776;</h2>
	</div>

	<script>
		function openNav() {
			document.getElementById("mySidenav").style.width = "250px";
			document.getElementById("main").style.marginRight = "0";
			document.body.style.backgroundColor = "rgba(0,0,0,0.3)";
		}

		function closeNav() {
			document.getElementById("mySidenav").style.width = "0";
			document.getElementById("main").style.marginRight = "0";
			document.body.style.backgroundColor = "white";
		}
		
		let dropdown = document.getElementsByClassName("dropdown-btn");
		let i;

		for (i = 0; i < dropdown.length; i++) {
		  dropdown[i].addEventListener("click", function() {
		    this.classList.toggle("active");
		    let dropdownContent = this.nextElementSibling;
		    if (dropdownContent.style.display === "block") {
		      dropdownContent.style.display = "none";
		    } else {
		      dropdownContent.style.display = "block";
		    }
		  });
		}
	</script>

</body>
</html>

