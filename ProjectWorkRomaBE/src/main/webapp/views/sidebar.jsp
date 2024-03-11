<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
            <a class="nav-link active" aria-current="page" href="#">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Bisogna Decidere</a>
          </li>
          
          
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Candidate
            </a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="/candidate/preAddCandidate">Add Candidate</a></li>
              <li><a class="dropdown-item" href="/candidate/preFindByIdCandidate">Find Candidate </a></li>
              <li><a class="dropdown-item" href="/candidate/preDeleteIdCandidate">Delete Candidate</a></li>
              <li>
                <hr class="dropdown-divider">
                
                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Job Offers
            </a>
                <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="/job/preAddJobOffer">Add Job Offers</a></li>
              <li><a class="dropdown-item" href="/job/preFindByIdJobOffer">Find Job Offer</a></li>
              <li><a class="dropdown-item" href="/job/preDeleteIdJobOffer">Delete Job Offer</a></li>
              <li>
              
              <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
           Company
            </a>
                <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="/company/preAddCompanyClient">Add Company</a></li>
              <li><a class="dropdown-item" href="/company/preFindByIdCompanyClient">Find Company</a></li>
              <li><a class="dropdown-item" href="/company/preDeleteIdCompanyClient">Delete Company</a></li>
              <li>
                <hr class="dropdown-divider">
              </li>
              <li><a class="dropdown-item" href="#">Something else here</a></li>
            </ul>
          </li>
        </ul>
        <form class="d-flex mt-3" role="search">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success" type="submit">Search</button>
        </form>
      </div>
    </div>
  </div>
</nav>

</body>
</html>