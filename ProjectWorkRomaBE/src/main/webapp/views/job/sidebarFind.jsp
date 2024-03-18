<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: "Lato", sans-serif;
  transition: background-color .5s;
}

.sidenav {
  height: 70%;
  top:150px;
  width: 0;
  position: fixed;
  z-index: 1;
  right: 0; 
  background-color: #111;
  overflow-x: hidden;
  transition: 0.5s;
  padding-top: 60px;
  border-radius:20px 0 0 20px;
  
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
  border-radius:20px 0 0 20px;
  cursor: pointer;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
</style>
</head>
<body>

<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&#10142;</a>
  <a href="${pageContext.request.contextPath}/home">Home</a>
  <a href="#">Services</a>
  <a href="#">Clients</a>
  <a href="#">Contact</a>
</div>

<div id="main">
  <h2 id="openBtn" onclick="openNav()">&#9776;</h2>
</div>

<script>
function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
  document.getElementById("main").style.marginRight = "0"; /* Cambia a marginRight */
  document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
  document.getElementById("main").style.marginRight= "0"; /* Cambia a marginRight */
  document.body.style.backgroundColor = "white";
}
</script>
   
</body>
</html> 
