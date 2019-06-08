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

int id=0;
try{

          String bookid=request.getParameter("bookid");
        
		 id=Integer.parseInt(bookid);
}catch(NumberFormatException nfe)
   {
	out.print("<h1>Give valid number</h1>");
	request.setAttribute("exception","<h1>Give valid number</h1>");
	}
      		Connection con=GetCon.getCon();
		     				   
		try {
			PreparedStatement ps=con.prepareStatement("delete  from BOOKDETAILS where id = '"+id+"' ");
			
			int bookdeleted =ps.executeUpdate();
           			
		    if(bookdeleted==1)
		    {          			
	        out.print("book details has been deleted");
			request.setAttribute("deleted","book details has been deleted");
			%>			
			<jsp:forward page="/onlinelibrary2/bookdetails"></jsp:forward> 
			<% 
				
			}
           	
          
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	//	}else{
		out.println("your have given wrong book id");
		request.setAttribute("wrong","your have given wrong book id");	
		%>			
			<jsp:forward page="/onlinelibrary2/deletebookdetails"></jsp:forward> 
			<% 
		//}
		
		%>



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
        
	