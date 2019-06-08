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


	<%@include file="./home.jsp"%>

	<!-- /.container -->



	<!-- conditions for all statements -->
	<c:if test="${userClickBooksDetails==true}">

		<%@include file="./bookdetailsforbookdetails.jsp"%>
	</c:if>


	<c:if test="${userClickAboutUs==true}">

		<%@include file="./aboutus.jsp"%>
	</c:if>


	<c:if test="${userClickContactUs==true}">

		<%@include file="./contactus.jsp"%>
	</c:if>

   <c:if test="${userClickAdmin==true}">

		<%@include file="./admin.jsp"%>
	</c:if>
	
	
	
	 <c:if test="${userClickAdmin1==true}">

		<%@include file="./admin1.jsp"%>
	</c:if>
	
	
	
	<c:if test="${userClickAdminWelcome==true}">

		<%@include file="./admin1.jsp"%>
	</c:if>

	<c:if test="${userClickMember==true}">

		<%@include file="./member.jsp"%>
	</c:if>

	
<c:if test="${userClickMemberLogin==true}">

		<%@include file="./memberlogin.jsp"%>
	</c:if>
	
    <c:if test="${userClickNewStaff==true}">

		<%@include file="./newstaff.jsp"%>
	</c:if>

<c:if test="${userClickShowStaff==true}">

		<%@include file="./showstaff.jsp"%>
	</c:if>

  <c:if test="${userClickBookDetails==true}">

		<%@include file="./bookdetails.jsp"%>
	</c:if>
 <c:if test="${userClickbookdetailsformember==true}">

		<%@include file="./bookdetailsformember.jsp"%>
	</c:if>

   

<c:if test="${userClickRegister==true}">

		<%@include file="./Register.jsp"%>
	</c:if>

<c:if test="${userClickCreateServlet==true}">

		<%@include file="./member.jsp"%>
	</c:if>




<c:if test="${userClickdeletestaff1==true}">

		<%@include file="./deletestaff1.jsp"%>
	</c:if>


<c:if test="${userClickdeletebookdetails==true}">

		<%@include file="./deletebookdetails.jsp"%>
	</c:if>
	
	
	<c:if test="${userClickissuenewbook==true}">

		<%@include file="./issuenewbook1.jsp"%>
	</c:if>
	<c:if test="${userClickissuenewbook==true}">

		<%@include file="./issuenewbook1.jsp"%>
	</c:if>
	
	<c:if test="${userClickNewStaff1==true}">

		<%@include file="./staff1login1.jsp"%>
	</c:if>
	
	
	<!-- Footer -->

	<%@include file="./footer.jsp"%>

	 <!-- Bootstrap core JavaScript -->
	<script src="${js}/jquery.min.js"></script>
	<script src="${js}/bootstrap.bundle.min.js"></script>
	<script src="${js}/custom.js"></script>
	<script src="${js}/custom.min.js"></script>


</body>
 
</html>
