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
<style>
body {
	font-family: "Poppins", sans-serif;
	transition: background-color .5s;
}

.sidenav {
	height: 70%;
	top: 150px;
	width: 0;
	position: fixed;
	z-index: 1;
	right: 0;
	background-color: #111;
	overflow-x: hidden;
	transition: 0.5s;
	padding-top: 60px;
	border-radius: 20px 0 0 20px;
}

.sidenav a {
	padding: 8px 8px 8px 32px;
	text-decoration: none;
	font-size: 25px;
	color: #818181;
	display: block;
	transition: 0.3s;
}

.sidenav a:hover {
  color: #f1f1f1;
}

.sidenav .closebtn {
	position: absolute;
	top: 0;
	left: 25px;
	font-size: 36px;
	margin-left: 50px;
}

.dropbtn {
	padding: 28px 8px 8px 32px;
	font-size: 25px;
	color: #818181;
	transition: 0.3s;
	background-color: black;
	font-family: "Poppins";
	font-size: 16px;
	text-align: center;
	border: none;
}

#main {
	transition: margin-right .5s;
	padding: 16px;
	position: right;
}

#openBtn {
	position: absolute;
	top: 210px;
	right: 0;
	background-color: #000;
	color: #fff;
	padding: 28px 30px;
	border-radius: 20px 0 0 20px;
	cursor: pointer;
}

@media screen and (max-height: 450px) {
	.sidenav {
		padding-top: 15px;
	}
	.sidenav a {
		font-size: 18px;
	}
}

.dropdown {
	display: flex;
	font-family: "Poppins";
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: black;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
	color: #818181;
}

.dropdown-content a {
	color: #818181;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
	font-family: "Poppins";
	font-size: 14px;
}

.dropdown-content a:hover {
	background-color: black;
}

.dropdown:hover .dropdown-content {
	display: block;
}

.dropdown:hover .dropbtn {
	background-color: #d8cdf3;
}

.home {
	position: absolute;
	bottom: 20px;
	left: 50%;
	transform: translateX(-50%);
	font-size: 20px;
	color: white;
	text-decoration: none;
}

hr {
	margin: 0 0 0 10px;
	width: 220px;
	align-items: center; : center;
	color: #818181;
	border: none;
	background-color: #818181;
	height: 1px;
}
</style>
</head>
<body>

	<div id="mySidenav" class="sidenav">
		<a href="javascript:void(0)" class="closebtn" onclick="closeNav()"><h4>&#x27F6;</h4></a>
	

			<div class="dropdown">
				<button class="dropbtn">Employee</button>
				<div class="dropdown-content">
					<a href="${pageContext.request.contextPath}/company/preAddEmployee">Add
						Employee</a> <a
						href="${pageContext.request.contextPath}/company/preFindByIdEmployee">Find
						Employee by ID</a> <a
						href="${pageContext.request.contextPath}/company/preFindByIdEmployeeType">Find
						By Employee Type</a>
				</div>
			</div>
			<hr>
				<div class="dropdown">
			<button class="dropbtn">Candidate</button>
			<div class="dropdown-content">
				<a href="${pageContext.request.contextPath}/preAddCandidateForm">Add
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
		</div>
		<hr>
		<div class="dropdown">
			<button class="dropbtn">Company</button>
			<div class="dropdown-content">
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
		</div>
		<hr>
		<div class="dropdown">
			<button class="dropbtn">Job</button>
			<div class="dropdown-content">
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
		</div>
		<hr>


		<a class="home" href="${pageContext.request.contextPath}/home">Home</a>
	</div>
	<div id="main">
		<h2 id="openBtn" onclick="openNav()">&#9776;</h2>
	</div>

	<script>
		function openNav() {
			document.getElementById("mySidenav").style.width = "250px";
			document.getElementById("main").style.marginRight = "0";
			document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
		}

		function closeNav() {
			document.getElementById("mySidenav").style.width = "0";
			document.getElementById("main").style.marginRight = "0";
			document.body.style.backgroundColor = "white";
		}
		function closeNav() {
			document.getElementById("mySidenav").style.width = "0";
		}
	</script>

</body>
</html>
