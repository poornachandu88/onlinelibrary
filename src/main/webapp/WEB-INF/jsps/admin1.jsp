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
				  
  
  <div class="jumbotron">
  <h1 class="display-3">Welcome  <% String user=request.getParameter("username");  %><%= user %></h1>
  <p class="lead"></p>
  <hr class="my-2">
  <p><img alt="" src="${images}/johndewey1-2x.jpg" width="400" height="150"></p>
  <p class="lead">
   
  </p>
</div>
    	
<div class="user">

<%if(request.getAttribute("sorrynewstaff")!=null)
			{
			out.print("<div>");
			out.print("<font color='blue'><font size='4'>"+request.getAttribute("sorrynewstaff")+"");
			
			out.print("</div>"); 
			}
			
			 %>  	
			 <%
        
        String username=request.getParameter("username");
		String password=request.getParameter("password");
	    boolean status=verifyLogin2.checkLogin(username,password);
		
		try {
		if(status==true){
			out.print("Welcome    " + username);
		  
			out.println("<br><br><a href='/onlinelibrary2/onlinelibrary2/newstaff'> Create new staff </a><br>");
			out.println("<br><a href='/onlinelibrary2/onlinelibrary2/showstaff'> Show staff deatils </a><br>");
			out.println("<br><a href='/onlinelibrary2/onlinelibrary2/bookdetails'> Show Book deatils </a><br>");

		 
			
			Connection con=GetCon.getCon();
			PreparedStatement ps=con.prepareStatement("");
           			
		}
		else{
			out.print("Please check your username and Password");
			request.setAttribute("aaa","Please check your username and Password");
			%>
		
		
			<jsp:forward page="/onlinelibrary2/admin"></jsp:forward> 	<br><%
 	
		
		
		}}
		
		
		catch(SQLException e) 
		{
 		e.printStackTrace();
		}
 		
 		
 		%>
 
 </div>
 
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