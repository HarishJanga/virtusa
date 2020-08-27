<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Add-supervisor</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<% 
HttpSession s=request.getSession();
String un=s.getAttribute("uid").toString();
%>
<script>
  function myfunction(){
    var p=document.getElementById("pwd").value;
    var cp=document.getElementById("cpwd").value;
    if(p==cp){
      document.getElementById("msg").style.color="green";
      document.getElementById("msg").innerHTML="passwords matched";
      }
    else{
    	document.getElementById("msg").style.color="red";
    	document.getElementById("msg").innerHTML="passwords must  match";
    	}
  }
</script>
<body>
<div class="header">
    <nav class="navbar navbar-dark bg-dark navbar-expand-md sticky-top">
        <a href="index.html" class="navbar-brand">E-mall</a>
        <button class="navbar-toggler" data-toggle="collapse" data-target="#collapse_target">
        <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="collapse_target">
        <ul class="navbar-nav">
        <li class="nav-item">
            <a class="nav-link" href="index.html"><i class="fa fa-home"></i> Home</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="about.html"><i class="fa fa-info-circle"></i> About</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="contact.html"><i class="fa fa-address-book"></i> ContactUs</a>
        </li>
        <li class="nav-item">
            <a class="nav-link active" href="asupervisor.jsp"><i class="fa fa-plus"></i> Add new Supervisor</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="astaff.jsp"><i class="fa fa-plus"></i> Add new Staff</a>
        </li>
    </ul>
    <ul class="navbar-nav ml-auto">
    <li class="nav-item">
            <a class="nav-link text-white" href="srprofile.jsp"><i class="fa fa-user-circle" style="font-size:20px;"></i>  <%=un %></a>
        </li>
    <li class="nav-item">
            <a class="nav-link text-warning" href="logout.jsp"><i class="fa fa-sign-out" style="font-size:20px;"></i> LogOut</a>
        </li>
    </ul>
</div>
</nav>
</div>
<fieldset class="jumbotron bg-transparent" style="border: 5px solid grey;">
  <legend class="h4 text-primary">Add supervisor</legend>
    <div class="alert alert-warning alert-dismissible fade show sticky-top" role="alert">
  <strong>Dear customer,</strong> You will be redirected to login page if you are already an existing user!
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>
  <form action="./asrservlet" method="post" class="jumbotron bg-transparent" style="border:1px solid blue;border-radius:20px;">
    <div class="col-sm-6 mb-3 mb-sm-0">
      <label class="h5 text-primary" for="email">Email address:</label>
      <input name="srname" type="email" autocomplete="off" placeholder="e-mail" class="form-control" id="email" required>
    </div><br>
    <div class="col-sm-6 mb-3 mb-sm-0">
      <label class="h5 text-primary" for="pwd">Password:</label>
      <input name="srpass" type="password" autocomplete="off" placeholder="password" class="form-control" id="pwd" required>
    </div><br>
    <div class="col-sm-6 mb-3 mb-sm-0">
      <label class="h5 text-primary" for="cpwd">Confirm Password:</label>
      <input oninput="myfunction()" type="password" autocomplete="off" placeholder="confirm password" class="form-control c_password" id="cpwd" required>
    </div><br>
    <p class="h5" id="msg"></p><br>
    <button id="sbt" type="submit" class="btn btn-primary col-sm-3 mb-5 mb-sm-0" style="padding: 15px;">Register</button> 
    <button type="reset" class="btn btn-danger col-sm-3 mb-5 mb-sm-0" style="padding: 15px;">Clear</button>
  </form>
</fieldset>
</body>
</html>