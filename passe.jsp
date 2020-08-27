<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UpdatePassword</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Profile</title>
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
<a href="profile.jsp" class="nav-link"><i style="font-size:50px;" class="fa fa-arrow-circle-left"></i></a>
<fieldset class="jumbotron bg-transparent" style="border: 5px solid grey;">
  <legend class="h4 text-primary">Update password</legend>
  <form action="./passeservlet" method="post" class="jumbotron bg-transparent" style="border:1px solid blue;border-radius:20px;">
    <div class="form-group w-50">
      <label class="h5 text-primary" for="pwd">New Password:</label>
      <input name="nupass" type="password" autocomplete="off" class="form-control" id="pwd" required>
    </div>
    <div class="form-group w-50">
      <label class="h5 text-primary" for="cpwd">Confirm New Password:</label>
      <input oninput="myfunction()" name="cnupass" type="password" autocomplete="off" class="form-control c_password" id="cpwd" required>
    </div>
    <p class="h6" id="msg"></p>
    <button id="sbt" type="submit" class="btn btn-primary col-md-3" style="padding: 15px;">Update</button> 
    <button type="reset" class="btn btn-danger col-md-3" style="padding: 15px;">Clear</button>
  </form>
</fieldset>  
</body>
</html>