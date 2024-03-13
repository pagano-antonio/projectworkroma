<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html> 
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>HOME</title>
<meta charset="UTF-8">
</head>

<body>
<jsp:include page="sidebar.jsp" />

<h1>Candidate</h1>

 <a href="${pageContext.request.contextPath}/candidate/preAddCandidate"> Add Candidate</a>
 <a href="${pageContext.request.contextPath}/candidate/preDeleteCandidate"> Delete Candidate</a>
 <a href="${pageContext.request.contextPath}/candidate/preUpdateCandidate"> Update Candidate</a>
 <a href="${pageContext.request.contextPath}/candidate/preFindByIdCandidate"> Find By Id Candidate</a>
 <a href="${pageContext.request.contextPath}/candidate/preFindByIdCandidateCommercialData"> Find By Id Candidate Commercial Data</a>
 <a href="${pageContext.request.contextPath}/candidate/preFindBySurnameCandidate"> Find By Surname</a>
 <a href="${pageContext.request.contextPath}/candidate/preFindByCityCandidate"> Find By City</a>
 <a href="${pageContext.request.contextPath}/candidate/preFindByPhoneCandidate"> Find By Number Phone</a>
 <a href="${pageContext.request.contextPath}/candidate/preFindBySkillCandidate"> Find By Skill</a>
 <a href="${pageContext.request.contextPath}/candidate/preFindByEducationDegreeTypeCandidate"> Find By Education Degree </a>
 <a href="${pageContext.request.contextPath}/candidate/preFindByOutcomeJobInterviewCandidate"> Find By Outcome Job Interview</a>

<h1>Company</h1>
<a href="${pageContext.request.contextPath}/company/preAddEmployee"> Add Employee</a>
<a href="${pageContext.request.contextPath}/company/preDeleteEmployee"> Delete Employee</a>
<a href="${pageContext.request.contextPath}/company/preUpdateEmployee"> Update Employee</a>
<a href="${pageContext.request.contextPath}/company/preFindByIdEmployee"> Find By Id Employee</a>
<a href="${pageContext.request.contextPath}/company/preFindByIdEmployeeType"> Find By Id Employee Type</a>

<h1>Job</h1>
<a href="${pageContext.request.contextPath}/job/preAddJobOffer"> Add Job Offer</a>
<a href="${pageContext.request.contextPath}/job/preDeleteJobOffer"> Delete Job Offer</a>
<a href="${pageContext.request.contextPath}/job/preUpdateJobOffer"> Update Job Offer</a>
<a href="${pageContext.request.contextPath}/job/preFindByTitleJobOffer"> Find By Title Job Offer</a>
<a href="${pageContext.request.contextPath}/job/preFindByStartDateAndEndDate"> Find By Date Job Offer</a>
<a href="${pageContext.request.contextPath}/job/preFindByCompanyClientJobOffer"> Find By Company Client Job Offer</a>
<a href="${pageContext.request.contextPath}/job/preFindByCOntractTypeJobOffer"> Find By Contract Type Job Offer</a>
<a href="${pageContext.request.contextPath}/job/preFindByIdJobOfferSkillJobOffer"> Find By Skill Job Offer</a>
<a href="${pageContext.request.contextPath}/job/preFindByMaxRalJobOffer"> Find By Max Ral Job Offer</a>
<a href="${pageContext.request.contextPath}/job/preFindByMinRalJobOffer"> Find By Min Ral Job Offer</a>
 
</body>
</html>