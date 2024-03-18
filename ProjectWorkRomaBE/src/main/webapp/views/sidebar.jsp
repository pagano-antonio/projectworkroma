<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<title>Menu</title>
</head>
<body>

<nav class="navbar bg-body-tertiary fixed-top">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Management System of Rome City Caput Mundi</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
      <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasNavbarLabel">Menu</h5>
        <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
      </div>
      <div class="offcanvas-body">
        <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="/home">Home</a>
          </li>
           
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Candidate
            </a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="/preAddCandidateForm">Add Candidate</a></li>
              <hr class="dropdown-divider">
              <li><a class="dropdown-item" href="/candidate/preFindByIdCandidate">Find Candidate by ID </a></li>
              <li><a class="dropdown-item" href="/candidate/preFindBySurnameCandidate">Find Candidate by Surname </a></li>
              <li><a class="dropdown-item" href="/candidate/preFindByPhoneCandidate">Find Candidate by Phone Number</a></li>
              <li><a class="dropdown-item" href="/candidate/preFindByCityCandidate">Find Candidate by City</a></li>
              <li><a class="dropdown-item" href="/candidate/preFindByEducationDegreeTypeCandidate">Find Candidate by Education Degree Type</a></li>
              <li><a class="dropdown-item" href="/candidate/preFindByIdCandidateCommercialData">Find Candidate by Commercial Data</a></li>
              <li><a class="dropdown-item" href="/candidate/preFindByIdCandidateSkill">Find Candidate by ID Skill</a></li>
              <li><a class="dropdown-item" href="/candidate/preFindBySkillCandidate">Find Candidate by Skill</a></li>
              <li><a class="dropdown-item" href="/candidate/preFindByOutcomeJobInterviewCandidate">Find Candidate by Outcome Job Interview </a></li>              
            </ul>
                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Job Offers
            </a>
                <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="/job/preAddJobOffer">Add Job Offers</a></li>
              <hr class="dropdown-divider">
              <li><a class="dropdown-item" href="/job/preFindByTitleJobOffer">Find Job Offer by Title</a></li>
              <li><a class="dropdown-item" href="/job/preFindByCompanyClientJobOffer">Find Job Offer by Company Client</a></li>
              <li><a class="dropdown-item" href="/job/preFindByContractTypeJobOffer">Find Job Offer by Contract Type</a></li>
              <li><a class="dropdown-item" href="/job/preFindByIdJobOfferSkillJobOffer">Find Job Offer by Skill</a></li>
              <li><a class="dropdown-item" href="/job/preFindByMaxRalJobOffer">Find Job Offer by Max Ral</a></li>
              <li><a class="dropdown-item" href="/job/preFindByMinRalJobOffer">Find Job Offer by Min Ral</a></li>
              <li><a class="dropdown-item" href="/job/preFindByStartDateAndEndDate">Find Job Offer by Start Date and End Date</a></li>
              <li>
            </ul>  
              <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
           Company
            </a>
                <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="/company/preAddCompanyClient">Add Company</a></li>
              <hr class="dropdown-divider">
              <li><a class="dropdown-item" href="/company/preFindByIdCompanyClient">Find Company by ID</a></li>
              <li><a class="dropdown-item" href="/company/preFindByNameCompanyClient">Find Company by name</a></li>
              <li><a class="dropdown-item" href="/company/preFindByCityCompanyClient">Find Company by city</a></li>
             <li>
                </ul>  
               <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
           Employee
            </a>
                <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="/preAddEmployee">Add Employee</a></li>
              <hr class="dropdown-divider">
              <li><a class="dropdown-item" href="/company/preFindByIdEmployee">Find Employee by ID</a></li>
              <li><a class="dropdown-item" href="/company/preFindByIdEmployeeType">Find Employee by type</a></li>
                
            </ul>

        <form class="d-flex mt-3" role="search">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success" type="submit">Search</button>
        </form>
      </div>
    </div>
  </div>
</nav>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

</body>
</html>