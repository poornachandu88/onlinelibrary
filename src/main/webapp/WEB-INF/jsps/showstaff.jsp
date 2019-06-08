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
	
	
	<c:if test="${userClickdeletestaff==true}">

		<%@include file="./deletestaff.jsp"%>
	</c:if>

	<!-- Page Content -->
<div class="content">
 
 <div class="adminlogin">
				  
  
 	
<table><%
        
     	 if(request.getAttribute("deleted")!=null)
			{
			out.print("<div>");
			out.print("<font color='orange'><font size='4'>"+request.getAttribute("deleted")+"");
			
			out.print("</div>"); 
			}
			
	     
		%></table>
		
	
	
	
	
		
		
		
		
		
		
<table class="table table-hover">
  <thead>
<%
       
      	try {
			Connection con=GetCon.getCon();
			
			PreparedStatement ps=con.prepareStatement("Select * from NEWSTAFFMEMBER");
			
			ResultSet rs=ps.executeQuery();
			out.print("<font color='blue'> Details of staff</font>");
			out.print("<br>");
			
			out.print("<td><a href='/onlinelibrary2/onlinelibrary2/deletestaff'>Delete</a></td>");	
			out.print("<br>");
			out.print("<br>");
			out.print("<tr><th scope="+"col"+">ID</th><th scope="+"col"+">NAME</th><th scope="+"col"+">PASSWORD</th><th scope="+"col"+">PHONE</th><th scope="+"col"+">ADDRESS</th><th scope="+"col"+">SYD</th></tr>");
			
			
			while(rs.next()){
						
				out.print("<tr>");
				
				out.print("<td>" + rs.getString(1) + "</td>");
				out.print("<td>" + rs.getString(2) + "</td>");
				out.print("<td>" + rs.getString(3) + "</td>");
				out.print("<td>" + rs.getString(5) + "</td>");
				out.print("<td>" + rs.getString(6) + "</td>");
				out.print("<td>" + rs.getString(7) + "</td>");
				out.print("</tr>");
			
        
			}
		
			} catch (SQLException e) {
			e.printStackTrace();
			
		}
	
		%>
		
		
		</thead>
		</table>


  
    	
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
    