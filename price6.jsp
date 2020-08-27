<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Book a space</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<% 
HttpSession s=request.getSession();
String un=s.getAttribute("uid").toString();
%>
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
String frm=request.getParameter("frm");
String to=request.getParameter("to");
String ans="";
String sp=request.getParameter("sp");
String tc=request.getParameter("tc");
String td=request.getParameter("td");
String we=request.getParameter("we");
String dsp="";
String dcwd="";
String dcwe="";
String dcph="";
int c=0;
%>
<%
Connection con=null;
PreparedStatement stmt=null;
try{  
	Class.forName("com.mysql.jdbc.Driver");  
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cdetails","root","manager");   
	
}catch(Exception e){ System.out.println(e);}
%>
<%
try {
	String query=" insert into tempd(tfrm,tto)"+" values (?, ?)";
	stmt = con.prepareStatement(query);
	stmt.setString(1,frm);
	stmt.setString(2, to);
	stmt.execute();
	ResultSet rs=stmt.executeQuery("select count(listofholidays) from holidays,tempd where listofholidays>=tfrm AND listofholidays<=tto");
	if(rs.next()){
	ans=rs.getString("count(listofholidays)");
	}
	String dq="delete from tempd";
	stmt.executeUpdate(dq);
	}catch(Exception e) {System.out.println(e);}

%>
<%
String q="select * from cost where spacetype='"+sp+"'";
stmt=con.prepareStatement(q);
ResultSet rs1=stmt.executeQuery(q);
while(rs1.next()){
	 dsp=rs1.getString("spacetype");
	dcwd=rs1.getString("costwd");
	 dcwe=rs1.getString("costwe");
	 dcph=rs1.getString("costph");
}
%>
<%
String q2="select available from floor6 where typeofshop='"+sp+"'";
stmt=con.prepareStatement(q2);
ResultSet rs2=stmt.executeQuery(q2);
while(rs2.next()){
	c=Integer.parseInt(rs2.getString("available"));
}
%>
<%
if(c>0 && Integer.parseInt(tc)<=c){
%>
<%String uq="update floor6 set available=available-1 where typeofshop='"+sp+"'";
stmt.executeUpdate(uq);
%>
<fieldset class="jumbotron bg-transparent" style="border: 5px solid grey;">
  <legend class="h4 text-primary">Confirm booking</legend>
      <div class="alert alert-success alert-dismissible fade show sticky-top" role="alert">
  You have<strong> Successfully </strong> booked the space check details below.
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>
  <form  class="jumbotron bg-transparent" style="border:1px solid blue;border-radius:20px;">
    <div class="col-sm-6 mb-3 mb-sm-0">
    <p class="h5 text-warning">The current costs are:</p>
    <table class="table table-responsive">
<tr>
<th class="h6 text-info">spacetype</th>
<th class="h6 text-info">cost during week days</th>
<th class="h6 text-info">cost during weekends</th>
<th class="h6 text-info">cost during public holidays</th>
</tr>
<tr>
<td class="h6 text-secondary"><%= dsp%></td>
<td class="h6 text-secondary">&#8377;<%= dcwd%></td>
<td class="h6 text-secondary">&#8377;<%= dcwe%></td>
<td class="h6 text-secondary">&#8377;<%= dcph%></td>
</tr>
</table>
    <table class="table table-responsive">
    <tr>
    <td class="h5 text-danger">Space Type</td>
    <td class="h5 text-primary"><%= sp%></td>
    </tr>
    <tr>
    <td class="h5 text-danger">No of shops</td>
    <td class="h5 text-primary"><%= tc%></td>
    </tr>
    <tr>
    <td class="h5 text-danger">From</td>
    <td class="h5 text-primary"><%= frm%></td>
    </tr>
    <tr>
    <td class="h5 text-danger">To</td>
    <td class="h5 text-primary"><%= to%></td>
    </tr>
    <tr>
    <td class="h5 text-danger">Weekdays</td>
    <td class="h5 text-primary"><%= td%> days</td>
    </tr>
    <tr>
    <td class="h5 text-danger">Weekends</td>
    <td class="h5 text-primary"><%= we%> days</td>
    </tr>
    <tr>
    <td class="h5 text-danger">Public holidays</td>
    <td class="h5 text-primary"><%= ans%> days</td>
    </tr>
    <tr>
    <td class="h5 text-danger">Price</td>
    <td class="h5 text-success">&#8377;<%= ((Integer.parseInt(td)-Integer.parseInt(we)-Integer.parseInt(ans))*Integer.parseInt(dcwd))+(Integer.parseInt(we)*Integer.parseInt(dcwe))+(Integer.parseInt(ans)*Integer.parseInt(dcph))*Integer.parseInt(tc)%></td>
    </tr>
    </table>
  </div>
  <p align="center"><a  href="logc.jsp" class="btn btn-success col-sm-5 mb-5 mb-sm-0" style="padding: 15px;">OK</a>
  </p></form>
</fieldset>
<%
//this is where you insert values into table
int p=((Integer.parseInt(td)-Integer.parseInt(we)-Integer.parseInt(ans))*Integer.parseInt(dcwd))+(Integer.parseInt(we)*Integer.parseInt(dcwe))+(Integer.parseInt(ans)*Integer.parseInt(dcph))*Integer.parseInt(tc);
try {
		String query=" insert into bspacesf6(cmail,shoptype,units,bfrom,bto,price)"+" values (?, ?, ?, ?, ?,?)";
		stmt = con.prepareStatement(query);
		stmt.setString(1,un);
		stmt.setString(2, sp);
		stmt.setString(3, tc);
		stmt.setString(4, frm);
		stmt.setString(5, to);
		stmt.setInt(6,p);
		stmt.execute();
		stmt.close();
		con.close();

		}catch(Exception e) {System.out.println(e);}%>

<%
}else{%>
<script type="text/javascript">
swal({
    title: "Something went wrong!",
    text: "The space you are trying to book is not available!",
    type: "success"
}).then(function() {
    window.location = "logc.jsp";
});
</script>
<%} %>
</body>
</html>
