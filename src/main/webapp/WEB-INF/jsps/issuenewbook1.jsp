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
        
     	 if(request.getAttribute("deleted")!=null)
			{
			out.print("<div>");
			out.print("<font color='blue'><font size='4'>"+request.getAttribute("deleted")+"");
			
			out.print("</div>"); 
			}
			
	     
		%>

<table class="table table-hover">
  <thead><%
  int id=0;
  try{
           String ph=request.getParameter("bookid");
          
  		  id=Integer.parseInt(ph);
  		
  }catch(NumberFormatException nfe){
  	out.print("you have given text give me the id number");
  	request.setAttribute("exception","you have given text give me the id number");	
  	
  }

        
      	  	try {
			Connection con=GetCon.getCon();
			PreparedStatement ps=con.prepareStatement("select * from BOOKDETAILS where id = '"+id+"' ");
	
			ResultSet rs=ps.executeQuery();
					
			out.print("<tr><th>ID</th><th>BOOKNAME</th><th>AUTHOR</th></tr>");
			
			if(rs.next()){
					out.print("<tr>");
				
				out.print("<td>" + rs.getString(1) + "</td>");
				out.print("<td>" + rs.getString(2) + "</td>");
				out.print("<td>" + rs.getString(3) + "</td>");
				out.print("</tr>");
				
				
				}
			else
				 out.print("your given id is wrong");
			request.setAttribute("wrong","your given id is wrong");
			
				
			}
        
			     			
	      
			 catch (SQLException e) {
			e.printStackTrace();
		
			}
		%></thead>
		</table>
		
		
		
		</div>
	</div>
	<!-- Footer -->
<div style="margin-top: 20%">
	<%@include file="./footer.jsp"%>
</div>
	 <!-- Bootstrap core JavaScript -->
	<script src="${js}/jquery.min.js"></script>
	<script src="${js}/bootstrap.bundle.min.js"></script>
	<script src="${js}/custom.js"></script>
	<script src="${js}/custom.min.js"></script>


</body>
 
</html>
  