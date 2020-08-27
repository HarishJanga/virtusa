<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Welcome</title>
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
<script type="text/javascript">
function GetDays(){
    var date1 = new Date(document.getElementById("s").value);
    var date2 = new Date(document.getElementById("e").value);
    return parseInt((date1 - date2) / (24 * 3600 * 1000));
}
function fun(){
var date1 = new Date(document.getElementById("s").value);
var date2 = new Date(document.getElementById("e").value);
console.log(s,e);
var weekendDays = 0;
dayMilliseconds = 1000 * 60 * 60 * 24;

while (date1 <= date2) {
var day = date1.getDay();
if (day == 0 || day == 6) {
weekendDays++;
}
date1 = new Date(+date1 + dayMilliseconds);
}
document.getElementById("td").value=Math.abs(GetDays());
document.getElementById("we").value=weekendDays;
}
function GetDaysf2(){
    var date1 = new Date(document.getElementById("sf2").value);
    var date2 = new Date(document.getElementById("ef2").value);
    return parseInt((date1 - date2) / (24 * 3600 * 1000));
}
function fun2(){
var date1 = new Date(document.getElementById("sf2").value);
var date2 = new Date(document.getElementById("ef2").value);
var weekendDays = 0;
dayMilliseconds = 1000 * 60 * 60 * 24;

while (date1 <= date2) {
var day = date1.getDay();
if (day == 0 || day == 6) {
weekendDays++;
}
date1 = new Date(+date1 + dayMilliseconds);
}
document.getElementById("tdf2").value=Math.abs(GetDaysf2());
document.getElementById("wef2").value=weekendDays;
}
function GetDaysf3(){
    var date1 = new Date(document.getElementById("sf3").value);
    var date2 = new Date(document.getElementById("ef3").value);
    return parseInt((date1 - date2) / (24 * 3600 * 1000));
}
function fun3(){
var date1 = new Date(document.getElementById("sf3").value);
var date2 = new Date(document.getElementById("ef3").value);
var weekendDays = 0;
dayMilliseconds = 1000 * 60 * 60 * 24;

while (date1 <= date2) {
var day = date1.getDay();
if (day == 0 || day == 6) {
weekendDays++;
}
date1 = new Date(+date1 + dayMilliseconds);
}
document.getElementById("tdf3").value=Math.abs(GetDaysf3());
document.getElementById("wef3").value=weekendDays;
}
function GetDaysf4(){
    var date1 = new Date(document.getElementById("sf4").value);
    var date2 = new Date(document.getElementById("ef4").value);
    return parseInt((date1 - date2) / (24 * 3600 * 1000));
}
function fun4(){
var date1 = new Date(document.getElementById("sf4").value);
var date2 = new Date(document.getElementById("ef4").value);
var weekendDays = 0;
dayMilliseconds = 1000 * 60 * 60 * 24;

while (date1 <= date2) {
var day = date1.getDay();
if (day == 0 || day == 6) {
weekendDays++;
}
date1 = new Date(+date1 + dayMilliseconds);
}
document.getElementById("tdf4").value=Math.abs(GetDaysf4());
document.getElementById("wef4").value=weekendDays;
}
function GetDaysf5(){
    var date1 = new Date(document.getElementById("sf5").value);
    var date2 = new Date(document.getElementById("ef5").value);
    return parseInt((date1 - date2) / (24 * 3600 * 1000));
}
function fun5(){
var date1 = new Date(document.getElementById("sf5").value);
var date2 = new Date(document.getElementById("ef5").value);
var weekendDays = 0;
dayMilliseconds = 1000 * 60 * 60 * 24;

while (date1 <= date2) {
var day = date1.getDay();
if (day == 0 || day == 6) {
weekendDays++;
}
date1 = new Date(+date1 + dayMilliseconds);
}
document.getElementById("tdf5").value=Math.abs(GetDaysf5());
document.getElementById("wef5").value=weekendDays;
}
function GetDaysf6(){
    var date1 = new Date(document.getElementById("sf6").value);
    var date2 = new Date(document.getElementById("ef6").value);
    return parseInt((date1 - date2) / (24 * 3600 * 1000));
}
function fun6(){
var date1 = new Date(document.getElementById("sf6").value);
var date2 = new Date(document.getElementById("ef6").value);
var weekendDays = 0;
dayMilliseconds = 1000 * 60 * 60 * 24;

while (date1 <= date2) {
var day = date1.getDay();
if (day == 0 || day == 6) {
weekendDays++;
}
date1 = new Date(+date1 + dayMilliseconds);
}
document.getElementById("tdf6").value=Math.abs(GetDaysf6());
document.getElementById("wef6").value=weekendDays;
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
    </ul>
    <ul class="navbar-nav ml-auto">
    <li class="nav-item">
            <a class="nav-link text-white" href="profile.jsp"><i class="fa fa-user-circle" style="font-size:20px;"></i>  <%=un %></a>
        </li>
    <li class="nav-item">
            <a class="nav-link text-warning" href="logout.jsp"><i class="fa fa-sign-out" style="font-size:20px;"></i> LogOut</a>
        </li>
    </ul>
</div>
</nav>
</div>
<div class="container-fluid" style="height:250px;">
    <ul class="nav nav-tabs nav-fill">
        <li class="nav-item">
            <a href="#cbsu" class="nav-link active h5" data-toggle="tab">
                Book a new Business space
            </a>
        </li>
        <li class="nav-item text-warning">
            <a href="#anbs" class="nav-link h5" data-toggle="tab">
                My Business spaces
            </a>
        </li>
    </ul>
    <div class="tab-content">
    <div class="tab-pane active" id="cbsu">
    <p class="h2 text-info">Choose the floor you want to book from</p>
    <a class="btn btn-primary col-sm-1" data-toggle="collapse" href="#flr1">floor1</a>
	<a class="btn btn-primary col-sm-1" data-toggle="collapse" href="#flr2">floor2</a>
	<a class="btn btn-primary col-sm-1" data-toggle="collapse" href="#flr3">floor3</a>
	<a class="btn btn-primary col-sm-1" data-toggle="collapse" href="#flr4">floor4</a>
	<a class="btn btn-primary col-sm-1" data-toggle="collapse" href="#flr5">floor5</a>
	<a class="btn btn-primary col-sm-1" data-toggle="collapse" href="#flr6">floor6</a>
	<!-- floor 1 -->
	<div class="form-group collapse" id="flr1">
    <fieldset class="jumbotron bg-transparent" style="border: 5px solid grey;">
  <legend class="h4 text-primary">floor1</legend>
  <form action="./price.jsp" method="post" class="jumbotron bg-transparent" style="border:1px solid blue;border-radius:20px;">
    <div class="form-group row">
    <div class="col-sm-3 mb-3 mb-sm-0">
    <label class="h5 text-primary" for="sp">Choose type of space</label>
   <select class="browser-default custom-select" name="sp" id="sp">
   <option value="" disabled selected>Select</option>
    <option value="shop-small">shop-small</option>
    <option value="shop-medium">shop-medium</option>
    <option value="shop-large">shop-large</option>
    <option value="Atrium-nw">Atrium north and west</option>
    <option value="Atrium-nw">Atrium south</option>
    <option value="Theatre">Theatre</option>
    <option value="marketingbanner">marketingbanner</option>
  </select>
       </div>      
    </div>
    <div class="col-sm-3 mb-3 mb-sm-0 float-md-right">
		<%
Connection con=null;
Statement stmt=null;
try{  
	Class.forName("com.mysql.jdbc.Driver");  
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cdetails","root","manager");   	
}catch(Exception e){ System.out.println(e);}
stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("SELECT * from floor1");
%>
<p class="h5 text-danger">Current Availability</p>
<table class="table table-hover table-responsive" id="tableMain">

<tr class="text-danger">
		<th>Type of shop</th>
        <th>Total</th>
        <th>Available</th>
      </tr>
<%
while (rs.next()) {
%>
<tr class="text-success" style="font-size:20px;">
<td><%= rs.getString("typeofshop") %></td>
<td><%= rs.getString("total")%></td>
<td><%= rs.getString("available")%></td>
</tr>
<% } %>
</table>
</div>
    
    
     <label class="h5 text-primary">Number of units</label>
        <div class="form-group row">
       <div class="col-sm-2 mb-3 mb-sm-0">
       <input name="tc" type="text" class="form-control form-control-user" placeholder="Total count">
       </div>
    </div>
    
     <label class="h5 text-primary">Duration :</label>
        <div class="form-group row">
       <div class="col-sm-3 mb-3 mb-sm-0">
       <label class="h5 text-primary">From:</label>
       <input id="s" name="frm" type="date" class="form-control">
       </div>
       <div class="col-sm-3">
       <label class="h5 text-primary">To:</label>
       <input id="e" name="to" onchange="fun()" class="form-control" type="date">
       </div>&emsp;
       
    </div>
       <div class="col-sm-5 mb-3 mb-sm-0">
       <div class="form-group row">
       <input name="td" type="text" class="form-control" placeholder="days" id="td" readonly>
       </div>
       <div class="form-group row">
       <input name="we" type="text" class="form-control" placeholder="weekends" id="we" readonly>
       </div>
       </div>
    <br>
    <button id="sbt" type="submit" class="btn btn-primary col-sm-3 mb-5 mb-sm-0" style="padding: 15px;">Proceed to Book	</button> 
    <button type="reset" class="btn btn-danger col-sm-3 mb-5 mb-sm-0" style="padding: 15px;">Clear</button>
  </form>
</fieldset>
</div>  
<!-- floor 2 -->
	<div class="form-group collapse" id="flr2">
    <fieldset class="jumbotron bg-transparent" style="border: 5px solid grey;">
  <legend class="h4 text-primary">floor2</legend>
  <form action="./price2.jsp" method="post" class="jumbotron bg-transparent" style="border:1px solid blue;border-radius:20px;">
    <div class="col-sm-3" style="float:right;">
		<%
ResultSet rsf2=stmt.executeQuery("SELECT * from floor2");
%>
<p class="h5 text-danger">Current Availability</p>
<table class="table table-hover" id="tableMain">

<tr class="text-danger">
		<th>Type of shop</th>
        <th>Total</th>
        <th>Available</th>
      </tr>
<%
while (rsf2.next()) {
%>
<tr class="text-success" style="font-size:20px;">
<td><%= rsf2.getString("typeofshop") %></td>
<td><%= rsf2.getString("total")%></td>
<td><%= rsf2.getString("available")%></td>
</tr>
<% } %>
</table>
</div>
    
    <div class="form-group row">
    <div class="col-sm-3 mb-3 mb-sm-0">
    <label class="h5 text-primary" for="sp">Choose type of space</label>
   <select class="browser-default custom-select" name="sp" id="sp">
   <option value="" disabled selected>Select</option>
    <option value="shop-small">shop-small</option>
    <option value="shop-medium">shop-medium</option>
    <option value="shop-large">shop-large</option>
    <option value="Atrium-nw">Atrium north and west</option>
    <option value="Atrium-nw">Atrium south</option>
    <option value="Theatre">Theatre</option>
    <option value="marketingbanner">marketing-banner</option>
  </select>
       </div>      
    </div>
    
     <label class="h5 text-primary">Number of units</label>
        <div class="form-group row">
       <div class="col-sm-2 mb-3 mb-sm-0">
       <input name="tc" type="text" class="form-control form-control-user" placeholder="Total count">
       </div>
    </div>
    
     <label class="h5 text-primary">Duration :</label>
        <div class="form-group row">
       <div class="col-sm-3 mb-3 mb-sm-0">
       <label class="h5 text-primary">From:</label>
       <input id="sf2" name="frm" type="date" class="form-control">
       </div>
       <div class="col-sm-3">
       <label class="h5 text-primary">To:</label>
       <input id="ef2" name="to" onchange="fun2()" class="form-control" type="date">
       </div>&emsp;
       
    </div>
       <div class="col-sm-5 mb-3 mb-sm-0">
       <div class="form-group row">
       <input name="td" type="text" class="form-control" placeholder="days" id="tdf2" readonly>
       </div>
       <div class="form-group row">
       <input name="we" type="text" class="form-control" placeholder="weekends" id="wef2" readonly>
       </div>
       </div>
    <br>
    <button id="sbt" type="submit" class="btn btn-primary col-sm-3 mb-5 mb-sm-0" style="padding: 15px;">Proceed to Book	</button> 
    <button type="reset" class="btn btn-danger col-sm-3 mb-5 mb-sm-0" style="padding: 15px;">Clear</button>
  </form>
</fieldset>
</div>
<!-- floor 3 -->
	<div class="form-group collapse" id="flr3">
    <fieldset class="jumbotron bg-transparent" style="border: 5px solid grey;">
  <legend class="h4 text-primary">floor3</legend>
  <form action="./price3.jsp" method="post" class="jumbotron bg-transparent" style="border:1px solid blue;border-radius:20px;">
    <div class="col-sm-3" style="float:right;">
		<%
ResultSet rsf3=stmt.executeQuery("SELECT * from floor3");
%>
<p class="h5 text-danger">Current Availability</p>
<table class="table table-hover" id="tableMain">

<tr class="text-danger">
		<th>Type of shop</th>
        <th>Total</th>
        <th>Available</th>
      </tr>
<%
while (rsf3.next()) {
%>
<tr class="text-success" style="font-size:20px;">
<td><%= rsf3.getString("typeofshop") %></td>
<td><%= rsf3.getString("total")%></td>
<td><%= rsf3.getString("available")%></td>
</tr>
<% } %>
</table>
</div>
    
    <div class="form-group row">
    <div class="col-sm-3 mb-3 mb-sm-0">
    <label class="h5 text-primary" for="sp">Choose type of space</label>
   <select class="browser-default custom-select" name="sp" id="sp">
   <option value="" disabled selected>Select</option>
    <option value="shop-small">shop-small</option>
    <option value="shop-medium">shop-medium</option>
    <option value="shop-large">shop-large</option>
    <option value="Atrium-nw">Atrium north and west</option>
    <option value="Atrium-nw">Atrium south</option>
    <option value="Theatre">Theatre</option>
    <option value="marketingbanner">marketingbanner</option>
  </select>
       </div>      
    </div>
    
     <label class="h5 text-primary">Number of units</label>
        <div class="form-group row">
       <div class="col-sm-2 mb-3 mb-sm-0">
       <input name="tc" type="text" class="form-control form-control-user" placeholder="Total count">
       </div>
    </div>
    
     <label class="h5 text-primary">Duration :</label>
        <div class="form-group row">
       <div class="col-sm-3 mb-3 mb-sm-0">
       <label class="h5 text-primary">From:</label>
       <input id="sf3" name="frm" type="date" class="form-control">
       </div>
       <div class="col-sm-3">
       <label class="h5 text-primary">To:</label>
       <input id="ef3" name="to" onchange="fun3()" class="form-control" type="date">
       </div>&emsp;
       
    </div>
       <div class="col-sm-5 mb-3 mb-sm-0">
       <div class="form-group row">
       <input name="td" type="text" class="form-control" placeholder="days" id="tdf3" readonly>
       </div>
       <div class="form-group row">
       <input name="we" type="text" class="form-control" placeholder="weekends" id="wef3" readonly>
       </div>
       </div>
    <br>
    <button id="sbt" type="submit" class="btn btn-primary col-sm-3 mb-5 mb-sm-0" style="padding: 15px;">Proceed to Book	</button> 
    <button type="reset" class="btn btn-danger col-sm-3 mb-5 mb-sm-0" style="padding: 15px;">Clear</button>
  </form>
</fieldset>
</div>
<!-- floor 4 -->
	<div class="form-group collapse" id="flr4">
    <fieldset class="jumbotron bg-transparent" style="border: 5px solid grey;">
  <legend class="h4 text-primary">floor4</legend>
  <form action="./price4.jsp" method="post" class="jumbotron bg-transparent" style="border:1px solid blue;border-radius:20px;">
    <div class="col-sm-3" style="float:right;">
		<%
ResultSet rsf4=stmt.executeQuery("SELECT * from floor4");
%>
<p class="h5 text-danger">Current Availability</p>
<table class="table table-hover" id="tableMain">

<tr class="text-danger">
		<th>Type of shop</th>
        <th>Total</th>
        <th>Available</th>
      </tr>
<%
while (rsf4.next()) {
%>
<tr class="text-success" style="font-size:20px;">
<td><%= rsf4.getString("typeofshop") %></td>
<td><%= rsf4.getString("total")%></td>
<td><%= rsf4.getString("available")%></td>
</tr>
<% } %>
</table>
</div>
    
    <div class="form-group row">
    <div class="col-sm-3 mb-3 mb-sm-0">
    <label class="h5 text-primary" for="sp">Choose type of space</label>
   <select class="browser-default custom-select" name="sp" id="sp">
   <option value="" disabled selected>Select</option>
    <option value="shop-small">shop-small</option>
    <option value="shop-medium">shop-medium</option>
    <option value="shop-large">shop-large</option>
    <option value="Atrium-nw">Atrium north and west</option>
    <option value="Atrium-nw">Atrium south</option>
    <option value="Theatre">Theatre</option>
    <option value="marketingbanner">marketingbanner</option>
  </select>
       </div>      
    </div>
    
     <label class="h5 text-primary">Number of units</label>
        <div class="form-group row">
       <div class="col-sm-2 mb-3 mb-sm-0">
       <input name="tc" type="text" class="form-control form-control-user" placeholder="Total count">
       </div>
    </div>
    
     <label class="h5 text-primary">Duration :</label>
        <div class="form-group row">
       <div class="col-sm-3 mb-3 mb-sm-0">
       <label class="h5 text-primary">From:</label>
       <input id="sf4" name="frm" type="date" class="form-control">
       </div>
       <div class="col-sm-3">
       <label class="h5 text-primary">To:</label>
       <input id="ef4" name="to" onchange="fun4()" class="form-control" type="date">
       </div>&emsp;
       
    </div>
       <div class="col-sm-5 mb-3 mb-sm-0">
       <div class="form-group row">
       <input name="td" type="text" class="form-control" placeholder="days" id="tdf4" readonly>
       </div>
       <div class="form-group row">
       <input name="we" type="text" class="form-control" placeholder="weekends" id="wef4" readonly>
       </div>
       </div>
    <br>
    <button id="sbt" type="submit" class="btn btn-primary col-sm-3 mb-5 mb-sm-0" style="padding: 15px;">Proceed to Book	</button> 
    <button type="reset" class="btn btn-danger col-sm-3 mb-5 mb-sm-0" style="padding: 15px;">Clear</button>
  </form>
</fieldset>
</div>
<!-- floor 5 -->
	<div class="form-group collapse" id="flr5">
    <fieldset class="jumbotron bg-transparent" style="border: 5px solid grey;">
  <legend class="h4 text-primary">floor5</legend>
  <form action="./price5.jsp" method="post" class="jumbotron bg-transparent" style="border:1px solid blue;border-radius:20px;">
    <div class="col-sm-3" style="float:right;">
		<%
ResultSet rsf5=stmt.executeQuery("SELECT * from floor5");
%>
<p class="h5 text-danger">Current Availability</p>
<table class="table table-hover" id="tableMain">

<tr class="text-danger">
		<th>Type of shop</th>
        <th>Total</th>
        <th>Available</th>
      </tr>
<%
while (rsf5.next()) {
%>
<tr class="text-success" style="font-size:20px;">
<td><%= rsf5.getString("typeofshop") %></td>
<td><%= rsf5.getString("total")%></td>
<td><%= rsf5.getString("available")%></td>
</tr>
<% } %>
</table>
</div>
    
    <div class="form-group row">
    <div class="col-sm-3 mb-3 mb-sm-0">
    <label class="h5 text-primary" for="sp">Choose type of space</label>
   <select class="browser-default custom-select" name="sp" id="sp">
   <option value="" disabled selected>Select</option>
    <option value="shop-small">shop-small</option>
    <option value="shop-medium">shop-medium</option>
    <option value="shop-large">shop-large</option>
    <option value="Atrium-nw">Atrium north and west</option>
    <option value="Atrium-nw">Atrium south</option>
    <option value="Theatre">Theatre</option>
    <option value="marketingbanner">marketingbanner</option>
  </select>
       </div>      
    </div>
    
     <label class="h5 text-primary">Number of units</label>
        <div class="form-group row">
       <div class="col-sm-2 mb-3 mb-sm-0">
       <input name="tc" type="text" class="form-control form-control-user" placeholder="Total count">
       </div>
    </div>
    
     <label class="h5 text-primary">Duration :</label>
        <div class="form-group row">
       <div class="col-sm-3 mb-3 mb-sm-0">
       <label class="h5 text-primary">From:</label>
       <input id="sf5" name="frm" type="date" class="form-control">
       </div>
       <div class="col-sm-3">
       <label class="h5 text-primary">To:</label>
       <input id="ef5" name="to" onchange="fun5()" class="form-control" type="date">
       </div>&emsp;
       
    </div>
       <div class="col-sm-5 mb-3 mb-sm-0">
       <div class="form-group row">
       <input name="td" type="text" class="form-control" placeholder="days" id="tdf5" readonly>
       </div>
       <div class="form-group row">
       <input name="we" type="text" class="form-control" placeholder="weekends" id="wef5" readonly>
       </div>
       </div>
    <br>
    <button id="sbt" type="submit" class="btn btn-primary col-sm-3 mb-5 mb-sm-0" style="padding: 15px;">Proceed to Book	</button> 
    <button type="reset" class="btn btn-danger col-sm-3 mb-5 mb-sm-0" style="padding: 15px;">Clear</button>
  </form>
</fieldset>
</div>
<!-- floor 6 -->
	<div class="form-group collapse" id="flr6">
    <fieldset class="jumbotron bg-transparent" style="border: 5px solid grey;">
  <legend class="h4 text-primary">floor6</legend>
  <form action="./price6.jsp" method="post" class="jumbotron bg-transparent" style="border:1px solid blue;border-radius:20px;">
    <div class="col-sm-3" style="float:right;">
		<%
ResultSet rsf6=stmt.executeQuery("SELECT * from floor6");
%>
<p class="h5 text-danger">Current Availability</p>
<table class="table table-hover" id="tableMain">

<tr class="text-danger">
		<th>Type of shop</th>
        <th>Total</th>
        <th>Available</th>
      </tr>
<%
while (rsf6.next()) {
%>
<tr class="text-success" style="font-size:20px;">
<td><%= rsf6.getString("typeofshop") %></td>
<td><%= rsf6.getString("total")%></td>
<td><%= rsf6.getString("available")%></td>
</tr>
<% } %>
</table>
</div>
    
    <div class="form-group row">
    <div class="col-sm-3 mb-3 mb-sm-0">
    <label class="h5 text-primary" for="sp">Choose type of space</label>
   <select class="browser-default custom-select" name="sp" id="sp">
   <option value="" disabled selected>Select</option>
    <option value="shop-small">shop-small</option>
    <option value="shop-medium">shop-medium</option>
    <option value="shop-large">shop-large</option>
    <option value="Atrium-nw">Atrium north and west</option>
    <option value="Atrium-nw">Atrium south</option>
    <option value="Theatre">Theatre</option>
    <option value="marketingbanner">marketingbanner</option>
  </select>
       </div>      
    </div>
    
     <label class="h5 text-primary">Number of units</label>
        <div class="form-group row">
       <div class="col-sm-2 mb-3 mb-sm-0">
       <input name="tc" type="text" class="form-control form-control-user" placeholder="Total count">
       </div>
    </div>
    
     <label class="h5 text-primary">Duration :</label>
        <div class="form-group row">
       <div class="col-sm-3 mb-3 mb-sm-0">
       <label class="h5 text-primary">From:</label>
       <input id="sf6" name="frm" type="date" class="form-control">
       </div>
       <div class="col-sm-3">
       <label class="h5 text-primary">To:</label>
       <input id="ef6" name="to" onchange="fun6()" class="form-control" type="date">
       </div>&emsp;
       
    </div>
       <div class="col-sm-5 mb-3 mb-sm-0">
       <div class="form-group row">
       <input name="td" type="text" class="form-control" placeholder="days" id="tdf6" readonly>
       </div>
       <div class="form-group row">
       <input name="we" type="text" class="form-control" placeholder="weekends" id="wef6" readonly>
       </div>
       </div>
    <br>
    <button id="sbt" type="submit" class="btn btn-primary col-sm-3 mb-5 mb-sm-0" style="padding: 15px;">Proceed to Book	</button> 
    <button type="reset" class="btn btn-danger col-sm-3 mb-5 mb-sm-0" style="padding: 15px;">Clear</button>
  </form>
</fieldset>
</div>
</div>
<div class="tab-pane" id="anbs">
<a class="btn btn-primary" data-toggle="collapse" href="#cmplt"><i class="fa fa-plus"></i>&emsp;Add a complaint</a>
   <div class="form-group collapse" id="cmplt"> 
   <br>
   <form action="./complaintservlet" method="post">
  <label class="h6 text-primary" for="dpdb">Choose type of space:</label>
   <select name="complaint" id="dpdb">
    <option value="shop">shop</option>
    <option value="Atrium">Atrium</option>
    <option value="Theatre">Theatre</option>
    <option value="marketingbanner">marketingbanner</option>
  </select>
  <br><br>
  <label for="comment" class="h5 text-primary">Post a complaint</label>
  <textarea name="txt" style="border-radius:20px;" placeholder="Post your complaints here" class="form-control" rows="5" id="comment"></textarea>
   <br>
   <button id="sbt" type="submit" class="btn btn-primary col-sm-2 mb-5 mb-sm-0" style="padding: 10px;">Post complaint	</button> 
    <button type="reset" class="btn btn-danger col-sm-2 mb-5 mb-sm-0" style="padding: 10px;">Clear</button>
</form>
</div>
<p class="h2 text-info">Choose the floor you want to view details from</p>
    <a class="btn btn-primary col-sm-1" data-toggle="collapse" href="#flrb1">floor1</a>
	<a class="btn btn-primary col-sm-1" data-toggle="collapse" href="#flrb2">floor2</a>
	<a class="btn btn-primary col-sm-1" data-toggle="collapse" href="#flrb3">floor3</a>
	<a class="btn btn-primary col-sm-1" data-toggle="collapse" href="#flrb4">floor4</a>
	<a class="btn btn-primary col-sm-1" data-toggle="collapse" href="#flrb5">floor5</a>
	<a class="btn btn-primary col-sm-1" data-toggle="collapse" href="#flrb6">floor6</a>
	<div class="form-group collapse" id="flrb1">
<fieldset class="jumbotron bg-transparent" style="border: 5px solid grey;">
<legend>Floor 1</legend>
<%
ResultSet rsb1=stmt.executeQuery("SELECT * from bspacesf1 where cmail='"+un+"'");
 if (rsb1.next() == false) {%>
<p class="h3 text-warning">Oops! seems like you don't have any spaces in this floor</p>
<% } else{%>
<p class="h5 text-danger">Details</p>
<table class="table table-hover" id="tableMain">
<tr class="text-danger">
		<th>Type of shop</th>
        <th>TOtal spaces</th>
        <th>Booked From</th>
        <th>Booked Till</th>
        <th>Total price</th>
      </tr>
<% do{%>
<tr class="text-success" style="font-size:22px;">
<td><%= rsb1.getString("shoptype") %></td>
<td><%= rsb1.getString("units")%></td>
<td><%= rsb1.getString("bfrom")%></td>
<td><%= rsb1.getString("bto")%></td>
<td><%= rsb1.getString("price")%></td>
</tr>
<% }while(rsb1.next()); %>
</table>
 <%} %>   
</fieldset>
</div>
<div class="form-group collapse" id="flrb2">
<fieldset class="jumbotron bg-transparent" style="border: 5px solid grey;">
<legend>Floor 2</legend>
<%
ResultSet rsb2=stmt.executeQuery("SELECT * from bspacesf2 where cmail='"+un+"'");
 if (rsb2.next() == false) {%>
<p class="h3 text-warning">Oops! seems like you don't have any spaces in this floor</p>
<% } else{%>
<p class="h5 text-danger">Details</p>
<table class="table table-hover" id="tableMain">
<tr class="text-danger">
		<th>Type of shop</th>
        <th>TOtal spaces</th>
        <th>Booked From</th>
        <th>Booked Till</th>
        <th>Total price</th>
      </tr>
<% do{%>
<tr class="text-success" style="font-size:22px;">
<td><%= rsb2.getString("shoptype") %></td>
<td><%= rsb2.getString("units")%></td>
<td><%= rsb2.getString("bfrom")%></td>
<td><%= rsb2.getString("bto")%></td>
<td><%= rsb2.getString("price")%></td>
</tr>
<% }while(rsb2.next()); %>
</table>
 <%} %>
</fieldset>
</div>
<div class="form-group collapse" id="flrb3">
<fieldset class="jumbotron bg-transparent" style="border: 5px solid grey;">
<legend>Floor 3</legend>
<%
ResultSet rsb3=stmt.executeQuery("SELECT * from bspacesf3 where cmail='"+un+"'");
 if (rsb3.next() == false) {%>
<p class="h3 text-warning">Oops! seems like you don't have any spaces in this floor</p>
<% } else{%>
<p class="h5 text-danger">Details</p>
<table class="table table-hover" id="tableMain">
<tr class="text-danger">
		<th>Type of shop</th>
        <th>TOtal spaces</th>
        <th>Booked From</th>
        <th>Booked Till</th>
        <th>Total price</th>
      </tr>
<% do{%>
<tr class="text-success" style="font-size:22px;">
<td><%= rsb3.getString("shoptype") %></td>
<td><%= rsb3.getString("units")%></td>
<td><%= rsb3.getString("bfrom")%></td>
<td><%= rsb3.getString("bto")%></td>
<td><%= rsb3.getString("price")%></td>
</tr>
<% }while(rsb3.next()); %>
</table>
 <%} %>
</fieldset>
</div>
<div class="form-group collapse" id="flrb4">
<fieldset class="jumbotron bg-transparent" style="border: 5px solid grey;">
<legend>Floor 4</legend>
<%
ResultSet rsb4=stmt.executeQuery("SELECT * from bspacesf4 where cmail='"+un+"'");
 if (rsb4.next() == false) {%>
<p class="h3 text-warning">Oops! seems like you don't have any spaces in this floor</p>
<% } else{%>
<p class="h5 text-danger">Details</p>
<table class="table table-hover" id="tableMain">
<tr class="text-danger">
		<th>Type of shop</th>
        <th>TOtal spaces</th>
        <th>Booked From</th>
        <th>Booked Till</th>
        <th>Total price</th>
      </tr>
<% do{%>
<tr class="text-success" style="font-size:22px;">
<td><%= rsb4.getString("shoptype") %></td>
<td><%= rsb4.getString("units")%></td>
<td><%= rsb4.getString("bfrom")%></td>
<td><%= rsb4.getString("bto")%></td>
<td><%= rsb4.getString("price")%></td>
</tr>
<% }while(rsb4.next()); %>
</table>
 <%} %>
</fieldset>
</div>
<div class="form-group collapse" id="flrb5">
<fieldset class="jumbotron bg-transparent" style="border: 5px solid grey;">
<legend>Floor 5</legend>
<%
ResultSet rsb5=stmt.executeQuery("SELECT * from bspacesf5 where cmail='"+un+"'");
 if (rsb5.next() == false) {%>
<p class="h3 text-warning">Oops! seems like you don't have any spaces in this floor</p>
<% } else{%>
<p class="h5 text-danger">Details</p>
<table class="table table-hover" id="tableMain">
<tr class="text-danger">
		<th>Type of shop</th>
        <th>TOtal spaces</th>
        <th>Booked From</th>
        <th>Booked Till</th>
        <th>Total price</th>
      </tr>
<% do{%>
<tr class="text-success" style="font-size:22px;">
<td><%= rsb5.getString("shoptype") %></td>
<td><%= rsb5.getString("units")%></td>
<td><%= rsb5.getString("bfrom")%></td>
<td><%= rsb5.getString("bto")%></td>
<td><%= rsb5.getString("price")%></td>
</tr>
<% }while(rsb5.next()); %>
</table>
 <%} %>
</fieldset>
</div>
<div class="form-group collapse" id="flrb6">
<fieldset class="jumbotron bg-transparent" style="border: 5px solid grey;">
<legend>Floor 6</legend>
<%
ResultSet rsb6=stmt.executeQuery("SELECT * from bspacesf6 where cmail='"+un+"'");
 if (rsb6.next() == false) {%>
<p class="h3 text-warning">Oops! seems like you don't have any spaces in this floor</p>
<% } else{%>
<p class="h5 text-danger">Details</p>
<table class="table table-hover" id="tableMain">
<tr class="text-danger">
		<th>Type of shop</th>
        <th>TOtal spaces</th>
        <th>Booked From</th>
        <th>Booked Till</th>
        <th>Total price</th>
      </tr>
<% do{%>
<tr class="text-success" style="font-size:22px;">
<td><%= rsb6.getString("shoptype") %></td>
<td><%= rsb6.getString("units")%></td>
<td><%= rsb6.getString("bfrom")%></td>
<td><%= rsb6.getString("bto")%></td>
<td><%= rsb6.getString("price")%></td>
</tr>
<% }while(rsb6.next()); %>
</table>
 <%} %>
</fieldset>
</div>
</div>
    </div>
    </div>
   </body>   