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
				  














<h3>Welcome to Member Login</h3>
				  <br>


   		   
				 
    
    	<form name=F1 onSubmit="return dil(this)" action="/onlinelibrary2/onlinelibrary2/memberlogin" method="post">
    	 <fieldset>
				   
				  <%if(request.getAttribute("check")!=null)
			{
			out.print("<div>");
			out.print("<font color='blue'><font size='4'>"+request.getAttribute("check")+"");
			
			out.print("</div>"); 
			}
			
			 %>
			 
			  <%if(request.getAttribute("welcome")!=null)
			{
			out.print("<div>");
			out.print("<font color='red'><font size='4'>"+request.getAttribute("welcome")+"");
			
			out.print("</div>"); 
			}
			
			 %>
	
	    			
  		
  		    			 <div class="form-group">
      <label for="example username">LOGIN NAME:</label>
      <input type="text" class="form-control" id="exampleInputPassword1" placeholder="username" name="username" required="required"/>
    </div>
    <div class="form-group">
      <label for="exampleInputPassword1">PASSWORD:</label>
      <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" name="password" required="required"/>
    </div>
  		   
					
					 <fieldset>
               <button type="submit" class="btn btn-primary">Submit</button>
               <button type="reset" class="btn btn-primary" VALUE="CLEAR">CLEAR</button>
                  
               </fieldset>
					
           	
             	
            </fieldset>
            
            </form>
            
            
            <a href="/onlinelibrary2/onlinelibrary2/Register">New User</a>
				
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
	
             