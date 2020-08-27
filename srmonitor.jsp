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
<%
Connection con=null;
Statement stmt=null;
try{  
	Class.forName("com.mysql.jdbc.Driver");  
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cdetails","root","manager");   	
}catch(Exception e){ System.out.println(e);}
stmt=con.createStatement();%>
<script>
function checkm(){
	window.alert("working");
	window.location="ctureq.jsp";
}
</script>
<style>
i:hover {
    color: red;
}
</style>
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
            <a class="nav-link" href="asupervisor.jsp"><i class="fa fa-plus"></i> Add new Supervisor</a>
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
<%
int c=0;
String qf1="select sum(price) from bspacesf1";
stmt=con.prepareStatement(qf1);
ResultSet p1=stmt.executeQuery(qf1);
while(p1.next()){
	c=Integer.parseInt(p1.getString("sum(price)"));
}
%>
<%
int c1=0;
String qf2="select sum(price) from bspacesf2";
stmt=con.prepareStatement(qf1);
ResultSet p2=stmt.executeQuery(qf1);
while(p2.next()){
	c1=Integer.parseInt(p2.getString("sum(price)"));
}
%>
<%
int c2=0;
String qf3="select sum(price) from bspacesf3";
stmt=con.prepareStatement(qf3);
ResultSet p3=stmt.executeQuery(qf3);
while(p3.next()){
	c2=Integer.parseInt(p3.getString("sum(price)"));
}
%>
<%
int c3=0;
String qf4="select sum(price) from bspacesf4";
stmt=con.prepareStatement(qf4);
ResultSet p4=stmt.executeQuery(qf4);
while(p4.next()){
	c3=Integer.parseInt(p4.getString("sum(price)"));
}
%>
<%
int c4=0;
String qf5="select sum(price) from bspacesf5";
stmt=con.prepareStatement(qf5);
ResultSet p5=stmt.executeQuery(qf5);
while(p5.next()){
	c4=Integer.parseInt(p5.getString("sum(price)"));
}
%>
<%
int c5=0;
String qf6="select sum(price) from bspacesf6";
stmt=con.prepareStatement(qf1);
ResultSet p6=stmt.executeQuery(qf1);
while(p6.next()){
	c5=Integer.parseInt(p6.getString("sum(price)"));
}
%>
<%
int cmp=0;
String qfc="select count(*) from complaints";
stmt=con.prepareStatement(qfc);
ResultSet p7=stmt.executeQuery(qfc);
while(p7.next()){
	cmp=Integer.parseInt(p7.getString("count(*)"));
}
%>
<%
int ctu=0;
String qfct="select count(*) from contact";
stmt=con.prepareStatement(qfct);
ResultSet p8=stmt.executeQuery(qfct);
while(p8.next()){
	ctu=Integer.parseInt(p8.getString("count(*)"));
}
%>
<div class="container-fluid">

          <!-- Page Heading -->
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
          </div>

          <div class="row">

            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-4 col-md-6 mb-4">
              <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Earnings</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800">&#8377;<%= c+c1+c2+c3+c4+c5%></div>
                    </div>
                    <div class="col-auto">
                     <span onclick="checkm()"><i class="fa fa-calendar fa-2x text-gray-300"></i></span>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- Tasks Card Example -->
            
            <div class="col-xl-4 col-md-6 mb-4">
            
              <div onclick="functu()" class="card border-left-info shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Tasks&emsp;&emsp;<span style="font-size:50px;"><i class="fa fa-tasks"></i></span></div>
                      <div class="row no-gutters align-items-center">
                        <div class="col-auto">
                          <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800"><%= ctu%></div>
                        </div>
                        <div class="col">
                          <div class="progress progress-sm mr-2">
                            <div class="progress-bar bg-info" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- Pending Requests Card Example -->
            <div class="col-xl-4 col-md-6 mb-4">
              <div class="card border-left-warning shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">Complaints</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800"><%= cmp%></div>
                    </div>
                    <div class="col-auto">
                      <i class="fa fa-comments fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
  </div>
  <div class="container-fluid" style="height:250px;">
    <ul class="nav nav-tabs nav-fill">
        <li class="nav-item">
            <a href="#cbsu" class="nav-link active h5" data-toggle="tab">
                Current business space utility
            </a>
        </li>
        <li class="nav-item text-warning">
            <a href="#anbs" class="nav-link h5" data-toggle="tab">
                Manage business space activities
            </a>
        </li>
    </ul>
     <div class="tab-content">
        <div class="tab-pane active" id="cbsu">
<!-- display space details here -->
<p class="h2 text-info">Choose the floor you want to view details from</p>
    <a class="btn btn-primary col-sm-1" data-toggle="collapse" href="#flrb1">floor1</a>&emsp;
	<a class="btn btn-primary col-sm-1" data-toggle="collapse" href="#flrb2">floor2</a>&emsp;
	<a class="btn btn-primary col-sm-1" data-toggle="collapse" href="#flrb3">floor3</a>&emsp;
	<a class="btn btn-primary col-sm-1" data-toggle="collapse" href="#flrb4">floor4</a>&emsp;
	<a class="btn btn-primary col-sm-1" data-toggle="collapse" href="#flrb5">floor5</a>&emsp;
	<a class="btn btn-primary col-sm-1" data-toggle="collapse" href="#flrb6">floor6</a>&emsp;
	<div class="form-group collapse" id="flrb1">
<fieldset class="jumbotron bg-transparent" style="border: 5px solid grey;">
<legend>Floor 1</legend>
<%
ResultSet rsb1=stmt.executeQuery("SELECT * from bspacesf1");
 if (rsb1.next() == false) {%>
<p class="h3 text-warning">No bookings have been done in this floor</p>
<% } else{%>
<p class="h5 text-danger">Details</p>
<table class="table table-hover" id="tableMain">
<tr class="text-danger">
		<th>Customer mail</th>
		<th>Type of shop</th>
        <th>TOtal spaces</th>
        <th>Booked From</th>
        <th>Booked Till</th>
        <th>Total price</th>
      </tr>
<% do{%>
<tr class="text-success" style="font-size:22px;">
<td><%= rsb1.getString("cmail") %></td>
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
ResultSet rsb2=stmt.executeQuery("SELECT * from bspacesf2");
 if (rsb2.next() == false) {%>
<p class="h3 text-warning">No bookings have been done in this floor</p>
<% } else{%>
<p class="h5 text-danger">Details</p>
<table class="table table-hover" id="tableMain">
<tr class="text-danger">
		<th>Customer mail</th>
		<th>Type of shop</th>
        <th>TOtal spaces</th>
        <th>Booked From</th>
        <th>Booked Till</th>
        <th>Total price</th>
      </tr>
<% do{%>
<tr class="text-success" style="font-size:22px;">
<td><%= rsb2.getString("cmail") %></td>
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
ResultSet rsb3=stmt.executeQuery("SELECT * from bspacesf3");
 if (rsb3.next() == false) {%>
<p class="h3 text-warning">No bookings have been done in this floor</p>
<% } else{%>
<p class="h5 text-danger">Details</p>
<table class="table table-hover" id="tableMain">
<tr class="text-danger">
		<th>Customer mail</th>
		<th>Type of shop</th>
        <th>TOtal spaces</th>
        <th>Booked From</th>
        <th>Booked Till</th>
        <th>Total price</th>
      </tr>
<% do{%>
<tr class="text-success" style="font-size:22px;">
<td><%= rsb3.getString("cmail") %></td>
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
ResultSet rsb4=stmt.executeQuery("SELECT * from bspacesf4");
 if (rsb4.next() == false) {%>
<p class="h3 text-warning">No bookings have been done in this floor</p>
<% } else{%>
<p class="h5 text-danger">Details</p>
<table class="table table-hover" id="tableMain">
<tr class="text-danger">
        <th>Customer mail</th>
		<th>Type of shop</th>
        <th>TOtal spaces</th>
        <th>Booked From</th>
        <th>Booked Till</th>
        <th>Total price</th>
      </tr>
<% do{%>
<tr class="text-success" style="font-size:22px;">
<td><%= rsb4.getString("cmail") %></td>
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
ResultSet rsb5=stmt.executeQuery("SELECT * from bspacesf5");
 if (rsb5.next() == false) {%>
<p class="h3 text-warning">No bookings have been done in this floor</p>
<% } else{%>
<p class="h5 text-danger">Details</p>
<table class="table table-hover" id="tableMain">
<tr class="text-danger">
		<th>Customer mail</th>
		<th>Type of shop</th>
        <th>TOtal spaces</th>
        <th>Booked From</th>
        <th>Booked Till</th>
        <th>Total price</th>
      </tr>
<% do{%>
<tr class="text-success" style="font-size:22px;">
<td><%= rsb5.getString("cmail") %></td>
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
ResultSet rsb6=stmt.executeQuery("SELECT * from bspacesf6");
 if (rsb6.next() == false) {%>
<p class="h3 text-warning">No bookings have been done in this floor</p>
<% } else{%>
<p class="h5 text-danger">Details</p>
<table class="table table-hover" id="tableMain">
<tr class="text-danger">
		<th>Customer mail</th>
		<th>Type of shop</th>
        <th>TOtal spaces</th>
        <th>Booked From</th>
        <th>Booked Till</th>
        <th>Total price</th>
      </tr>
<% do{%>
<tr class="text-success" style="font-size:22px;">
<td><%= rsb6.getString("cmail") %></td>
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
        <div class="tab-pane" id="anbs">
           <a class="btn btn-danger col-sm-5" data-toggle="collapse" href="#collapseExample"><i class="fa fa-plus-circle"></i> Manage spaces in floor&emsp;<i class="fa fa-expand"></i></a>
           <a class="btn btn-warning col-sm-5" data-toggle="collapse" href="#collapseExample2"><i class="fa fa-edit"></i> Manage space costs&emsp;<i class="fa fa-expand"></i></a>
           <div class="form-group collapse" id="collapseExample">
			
			<div class="tab-pane">
			<a class="btn btn-primary col-sm-1" data-toggle="collapse" href="#flr1">floor1</a>&emsp;
			<a class="btn btn-primary col-sm-1" data-toggle="collapse" href="#flr2">floor2</a>&emsp;
			<a class="btn btn-primary col-sm-1" data-toggle="collapse" href="#flr3">floor3</a>&emsp;
			<a class="btn btn-primary col-sm-1" data-toggle="collapse" href="#flr4">floor4</a>&emsp;
			<a class="btn btn-primary col-sm-1" data-toggle="collapse" href="#flr5">floor5</a>&emsp;
			<a class="btn btn-primary col-sm-1" data-toggle="collapse" href="#flr6">floor6</a>&emsp;
	<div class="form-group collapse" id="flr1">
	<fieldset class="jumbotron bg-transparent" style="border: 5px solid grey;">
  <legend class="h4 text-primary">floor1</legend>
  <form action="./floor1servlet" method="post" class="jumbotron bg-transparent" style="border:1px solid blue;border-radius:20px;">
   <div class="col-sm-3" style="float:right;">
<% 		
ResultSet rs=stmt.executeQuery("SELECT * from floor1");
%>
<p class="h5 text-danger">Current values</p>
<table class="table table-hover" id="tableMain">

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
     <label class="h5 text-primary">shop small</label>
    <div class="form-group row">
       <div class="col-sm-2 mb-3 mb-sm-0">
       <input name="shsc1" type="text" class="form-control form-control-user" placeholder="Total count">
       </div>
       <div class="col-sm-2">
       <input name="shsc2" type="text" class="form-control form-control-user" placeholder="Available">
       </div>&emsp;
       
    </div>
    
     <label class="h5 text-primary">shop medium</label>
        <div class="form-group row">
       <div class="col-sm-2 mb-3 mb-sm-0">
       <input name="shmc1" type="text" class="form-control form-control-user" placeholder="Total count">
       </div>
       <div class="col-sm-2">
       <input name="shmc2" type="text" class="form-control form-control-user" placeholder="Available">
       </div>&emsp;
       
    </div>
    
     <label class="h5 text-primary">shop large</label>
        <div class="form-group row">
       <div class="col-sm-2 mb-3 mb-sm-0">
       <input name="shlc1" type="text" class="form-control form-control-user" placeholder="Total count">
       </div>
       <div class="col-sm-2">
       <input name="shlc2" type="text" class="form-control form-control-user" placeholder="Available">
       </div>&emsp;
       
    </div>
    
     <label class="h5 text-primary">Atrium north ,west</label>
        <div class="form-group row">
       <div class="col-sm-2 mb-3 mb-sm-0">
       <input name="anwc1" type="text" class="form-control form-control-user" placeholder="Total count">
       </div>
       <div class="col-sm-2">
       <input name="anwc2" type="text" class="form-control form-control-user" placeholder="Available">
       </div>&emsp;
       
    </div>
    <label class="h5 text-primary">Atrium south</label>
     <div class="form-group row">
       <div class="col-sm-2 mb-3 mb-sm-0">
       <input name="asc1" type="text" class="form-control form-control-user" placeholder="Total count">
       </div>
       <div class="col-sm-2">
       <input name="asc2" type="text" class="form-control form-control-user" placeholder="Available">
       </div>&emsp;
       
    </div>
    
     <label class="h5 text-primary">Cinema Theatre</label>
        <div class="form-group row">
       <div class="col-sm-2 mb-3 mb-sm-0">
       <input name="ctc1" type="text" class="form-control form-control-user" placeholder="Total count">
       </div>
       <div class="col-sm-2">
       <input name="ctc2" type="text" class="form-control form-control-user" placeholder="Available">
       </div>&emsp;
       
    </div>
    
     <label class="h5 text-primary">Marketing banners</label>
        <div class="form-group row">
       <div class="col-sm-2 mb-3 mb-sm-0">
       <input name="mbc1" type="text" class="form-control form-control-user" placeholder="Total count">
       </div>
       <div class="col-sm-2">
       <input name="mbc2" type="text" class="form-control form-control-user" placeholder="Available">
       </div>&emsp;
       
    </div>
    <br>
    <button id="sbt" type="submit" class="btn btn-primary col-sm-3 mb-5 mb-sm-0" style="padding: 15px;">Set values	</button> 
    <button type="reset" class="btn btn-danger col-sm-3 mb-5 mb-sm-0" style="padding: 15px;">Clear</button>
  </form>
</fieldset>
	</div>
			
			</div>
			<div class="form-group collapse" id="flr2">
	<fieldset class="jumbotron bg-transparent" style="border: 5px solid grey;">
  <legend class="h4 text-primary">floor2</legend>
  <form action="./floor2servlet" method="post" class="jumbotron bg-transparent" style="border:1px solid blue;border-radius:20px;">
   <div class="col-sm-3" style="float:right;">
		<%
ResultSet rs1=stmt.executeQuery("SELECT * from floor2");
%>
<p class="h5 text-danger">Current values</p>
<table class="table table-hover" id="tableMain">

<tr class="text-danger">
		<th>Type of shop</th>
        <th>Total</th>
        <th>Available</th>
      </tr>
<%
while (rs1.next()) {
%>
<tr class="text-success" style="font-size:20px;">
<td><%= rs1.getString("typeofshop") %></td>
<td><%= rs1.getString("total")%></td>
<td><%= rs1.getString("available")%></td>
</tr>
<% } %>
</table>
</div>
   
     <label class="h5 text-primary">shop small</label>
    <div class="form-group row">
       <div class="col-sm-2 mb-3 mb-sm-0">
       <input name="shsc1" type="text" class="form-control form-control-user" placeholder="Total count">
       </div>
       <div class="col-sm-2">
       <input name="shsc2" type="text" class="form-control form-control-user" placeholder="Available">
       </div>&emsp;
       
    </div>6+
    
     <label class="h5 text-primary">shop medium</label>
        <div class="form-group row">
       <div class="col-sm-2 mb-3 mb-sm-0">
       <input name="shmc1" type="text" class="form-control form-control-user" placeholder="Total count">
       </div>
       <div class="col-sm-2">
       <input name="shmc2" type="text" class="form-control form-control-user" placeholder="Available">
       </div>&emsp;
       
    </div>
    
     <label class="h5 text-primary">shop large</label>
        <div class="form-group row">
       <div class="col-sm-2 mb-3 mb-sm-0">
       <input name="shlc1" type="text" class="form-control form-control-user" placeholder="Total count">
       </div>
       <div class="col-sm-2">
       <input name="shlc2" type="text" class="form-control form-control-user" placeholder="Available">
       </div>&emsp;
       
    </div>
    
     <label class="h5 text-primary">Atrium north ,west</label>
        <div class="form-group row">
       <div class="col-sm-2 mb-3 mb-sm-0">
       <input name="anwc1" type="text" class="form-control form-control-user" placeholder="Total count">
       </div>
       <div class="col-sm-2">
       <input name="anwc2" type="text" class="form-control form-control-user" placeholder="Available">
       </div>&emsp;    
    </div>
    <label class="h5 text-primary">Atrium south</label>
     <div class="form-group row">
       <div class="col-sm-2 mb-3 mb-sm-0">
       <input name="asc1" type="text" class="form-control form-control-user" placeholder="Total count">
       </div>
       <div class="col-sm-2">
       <input name="asc2" type="text" class="form-control form-control-user" placeholder="Available">
       </div>&emsp;
       
    </div>
    
     <label class="h5 text-primary">Cinema Theatre</label>
        <div class="form-group row">
       <div class="col-sm-2 mb-3 mb-sm-0">
       <input name="ctc1" type="text" class="form-control form-control-user" placeholder="Total count">
       </div>
       <div class="col-sm-2">
       <input name="ctc2" type="text" class="form-control form-control-user" placeholder="Available">
       </div>&emsp;
       
    </div>
    
     <label class="h5 text-primary">Marketing banners</label>
        <div class="form-group row">
       <div class="col-sm-2 mb-3 mb-sm-0">
       <input name="mbc1" type="text" class="form-control form-control-user" placeholder="Total count">
       </div>
       <div class="col-sm-2">
       <input name="mbc2" type="text" class="form-control form-control-user" placeholder="Available">
       </div>&emsp;
       
    </div>
    <br>
    <button id="sbt" type="submit" class="btn btn-primary col-sm-3 mb-5 mb-sm-0" style="padding: 15px;">Set values	</button> 
    <button type="reset" class="btn btn-danger col-sm-3 mb-5 mb-sm-0" style="padding: 15px;">Clear</button>
  </form>
</fieldset></div></div>
			</div>
			<div class="form-group collapse" id="flr3">
						<fieldset class="jumbotron bg-transparent" style="border: 5px solid grey;">
  <legend class="h4 text-primary">floor3</legend>
  <form action="./floor3servlet" method="post" class="jumbotron bg-transparent" style="border:1px solid blue;border-radius:20px;">
   <div class="col-sm-3" style="float:right;">
		<%
ResultSet rs2=stmt.executeQuery("SELECT * from floor3");
%>
<p class="h5 text-danger">Current values</p>
<table class="table table-hover" id="tableMain">

<tr class="text-danger">
		<th>Type of shop</th>
        <th>Total</th>
        <th>Available</th>
      </tr>
<%
while (rs2.next()) {
%>
<tr class="text-success" style="font-size:20px;">
<td><%= rs2.getString("typeofshop") %></td>
<td><%= rs2.getString("total")%></td>
<td><%= rs2.getString("available")%></td>
</tr>
<% } %>
</table>
</div>
   
   
   <label class="h5 text-primary">Floor</label>
     <label class="h5 text-primary">shop small</label>
    <div class="form-group row">
       <div class="col-sm-2 mb-3 mb-sm-0">
       <input name="shsc1" type="text" class="form-control form-control-user" placeholder="Total count">
       </div>
       <div class="col-sm-2">
       <input name="shsc2" type="text" class="form-control form-control-user" placeholder="Available">
       </div>&emsp;
       
    </div>
    
     <label class="h5 text-primary">shop medium</label>
        <div class="form-group row">
       <div class="col-sm-2 mb-3 mb-sm-0">
       <input name="shmc1" type="text" class="form-control form-control-user" placeholder="Total count">
       </div>
       <div class="col-sm-2">
       <input name="shmc2" type="text" class="form-control form-control-user" placeholder="Available">
       </div>&emsp;
       
    </div>
    
     <label class="h5 text-primary">shop large</label>
        <div class="form-group row">
       <div class="col-sm-2 mb-3 mb-sm-0">
       <input name="shlc1" type="text" class="form-control form-control-user" placeholder="Total count">
       </div>
       <div class="col-sm-2">
       <input name="shlc2" type="text" class="form-control form-control-user" placeholder="Available">
       </div>&emsp;
       
    </div>
    
     <label class="h5 text-primary">Atrium north ,west</label>
        <div class="form-group row">
       <div class="col-sm-2 mb-3 mb-sm-0">
       <input name="anwc1" type="text" class="form-control form-control-user" placeholder="Total count">
       </div>
       <div class="col-sm-2">
       <input name="anwc2" type="text" class="form-control form-control-user" placeholder="Available">
       </div>&emsp;
       
    </div>
    <label class="h5 text-primary">Atrium south</label>
     <div class="form-group row">
       <div class="col-sm-2 mb-3 mb-sm-0">
       <input name="asc1" type="text" class="form-control form-control-user" placeholder="Total count">
       </div>
       <div class="col-sm-2">
       <input name="asc2" type="text" class="form-control form-control-user" placeholder="Available">
       </div>&emsp;
       
    </div>
    
     <label class="h5 text-primary">Cinema Theatre</label>
        <div class="form-group row">
       <div class="col-sm-2 mb-3 mb-sm-0">
       <input name="ctc1" type="text" class="form-control form-control-user" placeholder="Total count">
       </div>
       <div class="col-sm-2">
       <input name="ctc2" type="text" class="form-control form-control-user" placeholder="Available">
       </div>&emsp;
       
    </div>
    
     <label class="h5 text-primary">Marketing banners</label>
        <div class="form-group row">
       <div class="col-sm-2 mb-3 mb-sm-0">
       <input name="mbc1" type="text" class="form-control form-control-user" placeholder="Total count">
       </div>
       <div class="col-sm-2">
       <input name="mbc2" type="text" class="form-control form-control-user" placeholder="Available">
       </div>&emsp;
       
    </div>
    <br>
    <button id="sbt" type="submit" class="btn btn-primary col-sm-3 mb-5 mb-sm-0" style="padding: 15px;">Set values	</button> 
    <button type="reset" class="btn btn-danger col-sm-3 mb-5 mb-sm-0" style="padding: 15px;">Clear</button>
  </form>
</fieldset>
			
			</div>
			<div class="form-group collapse" id="flr4">
			
					<fieldset class="jumbotron bg-transparent" style="border: 5px solid grey;">
  <legend class="h4 text-primary">floor4</legend>
  <form action="./floor4servlet" method="post" class="jumbotron bg-transparent" style="border:1px solid blue;border-radius:20px;">
   <div class="col-sm-3" style="float:right;">
		<%
ResultSet rs3=stmt.executeQuery("SELECT * from floor4");
%>
<p class="h5 text-danger">Current values</p>
<table class="table table-hover" id="tableMain">

<tr class="text-danger">
		<th>Type of shop</th>
        <th>Total</th>
        <th>Available</th>
      </tr>
<%
while (rs3.next()) {
%>
<tr class="text-success" style="font-size:20px;">
<td><%= rs3.getString("typeofshop") %></td>
<td><%= rs3.getString("total")%></td>
<td><%= rs3.getString("available")%></td>
</tr>
<% } %>
</table>
</div>
   
   <label class="h5 text-primary">Floor</label>
     <label class="h5 text-primary">shop small</label>
    <div class="form-group row">
       <div class="col-sm-2 mb-3 mb-sm-0">
       <input name="shsc1" type="text" class="form-control form-control-user" placeholder="Total count">
       </div>
       <div class="col-sm-2">
       <input name="shsc2" type="text" class="form-control form-control-user" placeholder="Available">
       </div>&emsp;
       
    </div>
    
     <label class="h5 text-primary">shop medium</label>
        <div class="form-group row">
       <div class="col-sm-2 mb-3 mb-sm-0">
       <input name="shmc1" type="text" class="form-control form-control-user" placeholder="Total count">
       </div>
       <div class="col-sm-2">
       <input name="shmc2" type="text" class="form-control form-control-user" placeholder="Available">
       </div>&emsp;
       
    </div>
    
     <label class="h5 text-primary">shop large</label>
        <div class="form-group row">
       <div class="col-sm-2 mb-3 mb-sm-0">
       <input name="shlc1" type="text" class="form-control form-control-user" placeholder="Total count">
       </div>
       <div class="col-sm-2">
       <input name="shlc2" type="text" class="form-control form-control-user" placeholder="Available">
       </div>&emsp;
       
    </div>
    
     <label class="h5 text-primary">Atrium north ,west</label>
        <div class="form-group row">
       <div class="col-sm-2 mb-3 mb-sm-0">
       <input name="anwc1" type="text" class="form-control form-control-user" placeholder="Total count">
       </div>
       <div class="col-sm-2">
       <input name="anwc2" type="text" class="form-control form-control-user" placeholder="Available">
       </div>&emsp;
       
    </div>
    <label class="h5 text-primary">Atrium south</label>
     <div class="form-group row">
       <div class="col-sm-2 mb-3 mb-sm-0">
       <input name="asc1" type="text" class="form-control form-control-user" placeholder="Total count">
       </div>
       <div class="col-sm-2">
       <input name="asc2" type="text" class="form-control form-control-user" placeholder="Available">
       </div>&emsp;
       
    </div>
    
     <label class="h5 text-primary">Cinema Theatre</label>
        <div class="form-group row">
       <div class="col-sm-2 mb-3 mb-sm-0">
       <input name="ctc1" type="text" class="form-control form-control-user" placeholder="Total count">
       </div>
       <div class="col-sm-2">
       <input name="ctc2" type="text" class="form-control form-control-user" placeholder="Available">
       </div>&emsp;
       
    </div>
    
     <label class="h5 text-primary">Marketing banners</label>
        <div class="form-group row">
       <div class="col-sm-2 mb-3 mb-sm-0">
       <input name="mbc1" type="text" class="form-control form-control-user" placeholder="Total count">
       </div>
       <div class="col-sm-2">
       <input name="mbc2" type="text" class="form-control form-control-user" placeholder="Available">
       </div>&emsp;
       
    </div>
    <br>
    <button id="sbt" type="submit" class="btn btn-primary col-sm-3 mb-5 mb-sm-0" style="padding: 15px;">Set values	</button> 
    <button type="reset" class="btn btn-danger col-sm-3 mb-5 mb-sm-0" style="padding: 15px;">Clear</button>
  </form>
</fieldset>
			</div>
			<div class="form-group collapse" id="flr5">
						<fieldset class="jumbotron bg-transparent" style="border: 5px solid grey;">
  <legend class="h4 text-primary">floor5</legend>
  <form action="./floor5servlet" method="post" class="jumbotron bg-transparent" style="border:1px solid blue;border-radius:20px;">
   <div class="col-sm-3" style="float:right;">
		<%
ResultSet rs4=stmt.executeQuery("SELECT * from floor5");
%>
<p class="h5 text-danger">Current values</p>
<table class="table table-hover" id="tableMain">

<tr class="text-danger">
		<th>Type of shop</th>
        <th>Total</th>
        <th>Available</th>
      </tr>
<%
while (rs4.next()) {
%>
<tr class="text-success" style="font-size:20px;">
<td><%= rs4.getString("typeofshop") %></td>
<td><%= rs4.getString("total")%></td>
<td><%= rs4.getString("available")%></td>
</tr>
<% } %>
</table>
</div>
   
   <label class="h5 text-primary">Floor</label>
     <label class="h5 text-primary">shop small</label>
    <div class="form-group row">
       <div class="col-sm-2 mb-3 mb-sm-0">
       <input name="shsc1" type="text" class="form-control form-control-user" placeholder="Total count">
       </div>
       <div class="col-sm-2">
       <input name="shsc2" type="text" class="form-control form-control-user" placeholder="Available">
       </div>&emsp;
       
    </div>
    
     <label class="h5 text-primary">shop medium</label>
        <div class="form-group row">
       <div class="col-sm-2 mb-3 mb-sm-0">
       <input name="shmc1" type="text" class="form-control form-control-user" placeholder="Total count">
       </div>
       <div class="col-sm-2">
       <input name="shmc2" type="text" class="form-control form-control-user" placeholder="Available">
       </div>&emsp;
       
    </div>
    
     <label class="h5 text-primary">shop large</label>
        <div class="form-group row">
       <div class="col-sm-2 mb-3 mb-sm-0">
       <input name="shlc1" type="text" class="form-control form-control-user" placeholder="Total count">
       </div>
       <div class="col-sm-2">
       <input name="shlc2" type="text" class="form-control form-control-user" placeholder="Available">
       </div>&emsp;
       
    </div>
    
     <label class="h5 text-primary">Atrium north ,west</label>
        <div class="form-group row">
       <div class="col-sm-2 mb-3 mb-sm-0">
       <input name="anwc1" type="text" class="form-control form-control-user" placeholder="Total count">
       </div>
       <div class="col-sm-2">
       <input name="anwc2" type="text" class="form-control form-control-user" placeholder="Available">
       </div>&emsp;
       
    </div>
    <label class="h5 text-primary">Atrium south</label>
     <div class="form-group row">
       <div class="col-sm-2 mb-3 mb-sm-0">
       <input name="asc1" type="text" class="form-control form-control-user" placeholder="Total count">
       </div>
       <div class="col-sm-2">
       <input name="asc2" type="text" class="form-control form-control-user" placeholder="Available">
       </div>&emsp;
       
    </div>
    
     <label class="h5 text-primary">Cinema Theatre</label>
        <div class="form-group row">
       <div class="col-sm-2 mb-3 mb-sm-0">
       <input name="ctc1" type="text" class="form-control form-control-user" placeholder="Total count">
       </div>
       <div class="col-sm-2">
       <input name="ctc2" type="text" class="form-control form-control-user" placeholder="Available">
       </div>&emsp;
       
    </div>
    
     <label class="h5 text-primary">Marketing banners</label>
        <div class="form-group row">
       <div class="col-sm-2 mb-3 mb-sm-0">
       <input name="mbc1" type="text" class="form-control form-control-user" placeholder="Total count">
       </div>
       <div class="col-sm-2">
       <input name="mbc2" type="text" class="form-control form-control-user" placeholder="Available">
       </div>&emsp;
       
    </div>
    <br>
    <button id="sbt" type="submit" class="btn btn-primary col-sm-3 mb-5 mb-sm-0" style="padding: 15px;">Set values	</button> 
    <button type="reset" class="btn btn-danger col-sm-3 mb-5 mb-sm-0" style="padding: 15px;">Clear</button>
  </form>
</fieldset>
			</div>
			<div class="form-group collapse" id="flr6">
						<fieldset class="jumbotron bg-transparent" style="border: 5px solid grey;">
  <legend class="h4 text-primary">floor6</legend>
  <form action="./floor6servlet" method="post" class="jumbotron bg-transparent" style="border:1px solid blue;border-radius:20px;">
   <div class="col-sm-3" style="float:right;">
		<%
ResultSet rs5=stmt.executeQuery("SELECT * from floor6");
%>
<p class="h5 text-danger">Current values</p>
<table class="table table-hover" id="tableMain">

<tr class="text-danger">
		<th>Type of shop</th>
        <th>Total</th>
        <th>Available</th>
      </tr>
<%
while (rs5.next()) {
%>
<tr class="text-success" style="font-size:20px;">
<td><%= rs5.getString("typeofshop") %></td>
<td><%= rs5.getString("total")%></td>
<td><%= rs5.getString("available")%></td>
</tr>
<% } %>
</table>
</div>
   <label class="h5 text-primary">Floor</label>
     <label class="h5 text-primary">shop small</label>
    <div class="form-group row">
       <div class="col-sm-2 mb-3 mb-sm-0">
       <input name="shsc1" type="text" class="form-control form-control-user" placeholder="Total count">
       </div>
       <div class="col-sm-2">
       <input name="shsc2" type="text" class="form-control form-control-user" placeholder="Available">
       </div>&emsp;
       
    </div>
    
     <label class="h5 text-primary">shop medium</label>
        <div class="form-group row">
       <div class="col-sm-2 mb-3 mb-sm-0">
       <input name="shmc1" type="text" class="form-control form-control-user" placeholder="Total count">
       </div>
       <div class="col-sm-2">
       <input name="shmc2" type="text" class="form-control form-control-user" placeholder="Available">
       </div>&emsp;
       
    </div>
    
     <label class="h5 text-primary">shop large</label>
        <div class="form-group row">
       <div class="col-sm-2 mb-3 mb-sm-0">
       <input name="shlc1" type="text" class="form-control form-control-user" placeholder="Total count">
       </div>
       <div class="col-sm-2">
       <input name="shlc2" type="text" class="form-control form-control-user" placeholder="Available">
       </div>&emsp;
       
    </div>
    
     <label class="h5 text-primary">Atrium north ,west</label>
        <div class="form-group row">
       <div class="col-sm-2 mb-3 mb-sm-0">
       <input name="anwc1" type="text" class="form-control form-control-user" placeholder="Total count">
       </div>
       <div class="col-sm-2">
       <input name="anwc2" type="text" class="form-control form-control-user" placeholder="Available">
       </div>&emsp;
       
    </div>
    <label class="h5 text-primary">Atrium south</label>
     <div class="form-group row">
       <div class="col-sm-2 mb-3 mb-sm-0">
       <input name="asc1" type="text" class="form-control form-control-user" placeholder="Total count">
       </div>
       <div class="col-sm-2">
       <input name="asc2" type="text" class="form-control form-control-user" placeholder="Available">
       </div>&emsp;
       
    </div>
    
     <label class="h5 text-primary">Cinema Theatre</label>
        <div class="form-group row">
       <div class="col-sm-2 mb-3 mb-sm-0">
       <input name="ctc1" type="text" class="form-control form-control-user" placeholder="Total count">
       </div>
       <div class="col-sm-2">
       <input name="ctc2" type="text" class="form-control form-control-user" placeholder="Available">
       </div>&emsp;
       
    </div>
    
     <label class="h5 text-primary">Marketing banners</label>
        <div class="form-group row">
       <div class="col-sm-2 mb-3 mb-sm-0">
       <input name="mbc1" type="text" class="form-control form-control-user" placeholder="Total count">
       </div>
       <div class="col-sm-2">
       <input name="mbc2" type="text" class="form-control form-control-user" placeholder="Available">
       </div>&emsp;
       
    </div>
    <br>
    <button id="sbt" type="submit" class="btn btn-primary col-sm-3 mb-5 mb-sm-0" style="padding: 15px;">Set values	</button> 
    <button type="reset" class="btn btn-danger col-sm-3 mb-5 mb-sm-0" style="padding: 15px;">Clear</button>
  </form>
</fieldset>
			</div>
			</div>
			
			
</div>
<div class="form-group collapse" id="collapseExample2">		
<fieldset class="jumbotron bg-transparent" style="border: 5px solid grey;">
  <legend class="h4 text-primary">Manage space cost</legend>
  <form action="./costservlet" method="post" class="jumbotron bg-transparent" style="border:1px solid blue;border-radius:20px;">
        <div class="col-sm-4" style="float:right;">
		<%
ResultSet rs6=stmt.executeQuery("SELECT * from cost");
%>
<p class="h5 text-danger">Current Prices</p>
<table class="table table-hover">

<tr class="text-danger">
		<th>Type of shop</th>
        <th>cost-weekdays</th>
        <th>cost-weekends</th>
        <th>cost-public holidays</th>
      </tr>
<%
while (rs6.next()) {
%>
<tr class="text-success" style="font-size:20px;">
<td><%= rs6.getString("spacetype") %></td>
<td><%= rs6.getString("costwd")%></td>
<td><%= rs6.getString("costwe")%></td>
<td><%= rs6.getString("costph")%></td>
</tr>
<% } %>
</table>
</div>
<%
stmt.close();
con.close();
%>
     <label class="h5 text-primary">shop small</label>
    <div class="form-group row">
       <div class="col-sm-2 mb-3 mb-sm-0">
       <input name="shs1" type="text" class="form-control form-control-user" placeholder="weekdays">
       </div>
       <div class="col-sm-2">
       <input name="shs2" type="text" class="form-control form-control-user" placeholder="weekends">
       </div>&emsp;
       <div class="col-sm-2">
       <input name="shs3" type="text" class="form-control form-control-user" placeholder="public-holidays">
       </div>
    </div>
    
     <label class="h5 text-primary">shop medium</label>
        <div class="form-group row">
       <div class="col-sm-2 mb-3 mb-sm-0">
       <input name="shm1" type="text" class="form-control form-control-user" placeholder="weekdays">
       </div>
       <div class="col-sm-2">
       <input name="shm2" type="text" class="form-control form-control-user" placeholder="weekends">
       </div>&emsp;
       <div class="col-sm-2">
       <input name="shm3" type="text" class="form-control form-control-user" placeholder="public-holidays">
       </div>
    </div>
    
     <label class="h5 text-primary">shop large</label>
        <div class="form-group row">
       <div class="col-sm-2 mb-3 mb-sm-0">
       <input name="shl1" type="text" class="form-control form-control-user" placeholder="weekdays">
       </div>
       <div class="col-sm-2">
       <input name="shl2" type="text" class="form-control form-control-user" placeholder="weekends">
       </div>&emsp;
       <div class="col-sm-2">
       <input name="shl3" type="text" class="form-control form-control-user" placeholder="public-holidays">
       </div>
    </div>
    
     <label class="h5 text-primary">Atrium north ,west</label>
        <div class="form-group row">
       <div class="col-sm-2 mb-3 mb-sm-0">
       <input name="anw1" type="text" class="form-control form-control-user" placeholder="weekdays">
       </div>
       <div class="col-sm-2">
       <input name="anw2" type="text" class="form-control form-control-user" placeholder="weekends">
       </div>&emsp;
       <div class="col-sm-2">
       <input name="anw3" type="text" class="form-control form-control-user" placeholder="public-holidays">
       </div>
    </div>
    <label class="h5 text-primary">Atrium south</label>
     <div class="form-group row">
       <div class="col-sm-2 mb-3 mb-sm-0">
       <input name="as1" type="text" class="form-control form-control-user" placeholder="weekdays">
       </div>
       <div class="col-sm-2">
       <input name="as2" type="text" class="form-control form-control-user" placeholder="weekends">
       </div>&emsp;
       <div class="col-sm-2">
       <input name="as3" type="text" class="form-control form-control-user" placeholder="public-holidays">
       </div>
    </div>
    
     <label class="h5 text-primary">Cinema Theatre</label>
        <div class="form-group row">
       <div class="col-sm-2 mb-3 mb-sm-0">
       <input name="ct1" type="text" class="form-control form-control-user" placeholder="weekdays">
       </div>
       <div class="col-sm-2">
       <input name="ct2" type="text" class="form-control form-control-user" placeholder="weekends">
       </div>&emsp;
       <div class="col-sm-2">
       <input name="ct3" type="text" class="form-control form-control-user" placeholder="public-holidays">
       </div>
    </div>
    
     <label class="h5 text-primary">Marketing banners</label>
        <div class="form-group row">
       <div class="col-sm-2 mb-3 mb-sm-0">
       <input name="mb1" type="text" class="form-control form-control-user" placeholder="weekdays">
       </div>
       <div class="col-sm-2">
       <input name="mb2" type="text" class="form-control form-control-user" placeholder="weekends">
       </div>&emsp;
       <div class="col-sm-2">
       <input name="mb3" type="text" class="form-control form-control-user" placeholder="public-holidays">
       </div>
    </div>
    <br>
    <button id="sbt" type="submit" class="btn btn-primary col-sm-3 mb-5 mb-sm-0" style="padding: 15px;">Set costs	</button> 
    <button type="reset" class="btn btn-danger col-sm-3 mb-5 mb-sm-0" style="padding: 15px;">Clear</button>
  </form>
</fieldset>		
</div>
      
    
</body>
</html>