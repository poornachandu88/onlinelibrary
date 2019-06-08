<%@ page import="java.sql.*"%>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.*"%>
<%@ page import="lnlinelibrary2.onlinelibrary2.*"%>
	
	<% 
		
		
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String repassword=request.getParameter("repassword");
		 
		 String phone=request.getParameter("phone");
	
		String adderess=request.getParameter("adderess");
		
		String syd=request.getParameter("syd");
			
	    int status=RegisterUser.register(username, password, repassword,phone, adderess,syd);
	   
	    
		if(status>0){
			out.print("New staff member has been register");
			request.setAttribute("welcome","WELCOME! YOU HAVE BEEN REGISTERD");
			
			%>
			<jsp:forward page="/onlinelibrary2/member"></jsp:forward>
			
			<%
		}
		else{
			out.print("Sorry,Registration failed. please try later");
			%> 
			<jsp:forward page="/onlinelibrary2/member"></jsp:forward>
			<%
		}
		
	



%>
