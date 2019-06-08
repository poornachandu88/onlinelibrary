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
				  
				  
				  
 	
  	   			<form name=F1 onSubmit="return dil(this)" action="/onlinelibrary2/onlinelibrary2/updatebookdetails1" method="post">
				 
				  
				  <%if(request.getAttribute("wrong")!=null)
			{
			out.print("<div>");
			out.print("<font color='blue'><font size='4'>"+request.getAttribute("wrong")+"");
			
			out.print("</div>"); 
			}
			
			 %>
				  
				<div >
					<div>BOOK  NAME: <input type="text" name="bookname" required="required" placeholder="bookname"/></div><br>
			     	<div>AUTHOR NAME: <input type="text" name="authorname" required="required" placeholder="bookauthor"/></div>
				</div>
				<br>
		         <input class="btn btn-primary" type="submit" value="Submit">
					
					<INPUT class="btn btn-primary" TYPE=RESET VALUE="CLEAR">
					
					
				
					
               		</form>
	
	
	
	
	
	</div>
	</div>
	<!-- Footer -->
<div style="margin-top: 20%">
	<%@include file="./footer.jsp" %>
</div>
	 <!-- Bootstrap core JavaScript -->
	<script src="${js}/jquery.min.js"></script>
	<script src="${js}/bootstrap.bundle.min.js"></script>
	<script src="${js}/custom.js"></script>
	<script src="${js}/custom.min.js"></script>


</body>
 
</html>
	