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
        
        String username=request.getParameter("username");
		String password=request.getParameter("password");
		
       String repassword=request.getParameter("repassword");
		String phone=request.getParameter("phone");
		
	
		String adderess=request.getParameter("adderess");
		
		String syd=request.getParameter("syd");
			
	   int status=RegisterUser1.register1(username,password,repassword,phone,adderess,syd);
	   
	    
		if(status>0){
				
			
			
			%><br><br><%
			
			request.setAttribute("newstaff","New staff member has been register");
			%>
			<jsp:forward page="/onlinelibrary2/stafflogin"></jsp:forward> 
			<% 
			}
	
		else{
		    out.print("Sorry try later"); 
			request.setAttribute("sorrynewstaff","Sorry try later");
			%>
			<jsp:forward page="/onlinelibrary2/admin1"></jsp:forward> 
			<%
		}%>


	
       
       
       
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