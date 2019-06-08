<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="javax.servlet.*"%>
<%@ page import="lnlinelibrary2.onlinelibrary2.*"%>

<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />


<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">


<title>Library Management System -${title}</title>

<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${css}/custom.css" rel="stylesheet">

<!-- boots watch -->
<link href="${css}/custom.min.css" rel="stylesheet">


</head>

<body>


	<!-- Navigation -->
	<%@include file="./navbar.jsp"%>

	<!-- Page Content -->
<div class="content">
 
 <div class="adminlogin">
				  
				  

<%
	out.print("<font color=blue> WELCOME TO REGISTRATION FORM");
%>


<form name=F1 onSubmit="return dil(this)" action="/onlinelibrary2/onlinelibrary2/staffreg"	method="post">
	<fieldset>

		<%
			out.println("<br><a color='black' href='/onlinelibrary2/onlinelibrary2/showstaff'> Click to see staff deatils </a><br>");
		%>

		<%
			if (request.getAttribute("newstaff") != null) {
				out.print("<div>");
				out.print("<font color='red'><font size='4'>" + request.getAttribute("newstaff") + "");

				out.print("</div>");
			}
		%>


		<div class="form-group">
			<label for="example username">USER NAME:</label> <input type="text"
				class="form-control" id="exampleInputPassword1"
				 name="username" required="required"/>
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">PASSWORD:</label> <input
				type="password" class="form-control" id="exampleInputPassword1"
				 name="password" required="required"/>
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">RE-PASSWORD:</label> <input
				type="password" class="form-control" id="exampleInputPassword1"
				 name="repassword" required="required"/>
		</div>
		<div class="form-group">
			<label for="example username">PHONE:</label> <input type="text"
				class="form-control" id="exampleInputPassword1"
				 name="phone" required="required"  pattern="[789][0-9]{9}"/>
				phone no mustbe this format [789][0-9]{9}
		</div>
		<div class="form-group">
			<label for="exampleTextarea">ADDRESS:</label>
			<textarea class="form-control" id="exampleTextarea" rows="3"
				name="adderess" required="required"></textarea>
		</div>

		<div class="form-group">
			<label for="example username">Select your designation:</label> <input
				type="text" class="form-control" id="exampleInputPassword1"
				 name="syd" />
		</div>
		<fieldset>
			<button type="submit" class="btn btn-primary">Submit</button>
			<button type="reset" class="btn btn-primary" VALUE="CLEAR">CLEAR</button>

		</fieldset>



	</fieldset>
</form>



</div>
	</div>
	<!-- Footer -->

	<%@include file="./footer.jsp"%>

	 <!-- Bootstrap core JavaScript -->
	<script src="${js}/jquery.min.js"></script>
	<script src="${js}/bootstrap.bundle.min.js"></script>
	<script src="${js}/custom.js"></script>
	<script src="${js}/custom.min.js"></script>


</body>
 
</html>