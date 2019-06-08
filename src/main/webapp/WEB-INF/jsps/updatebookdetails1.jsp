<%@ page import="java.sql.*"%>
<%@ page import="java.io.*" %>

<%@ page import="lnlinelibrary2.onlinelibrary2.*"%>
        
<table>

       <%
         String bookname=request.getParameter("bookname");
         String authorname=request.getParameter("authorname");
        
	    int status=RegisterUser2.register1(bookname,authorname);
	   
	    
		if(status>0){
				
			out.print("New book has been updated");
			request.setAttribute("newbook","New book has been updated");
			%>
			<jsp:forward page="/onlinelibrary2/bookdetails"></jsp:forward> 
			<% 
			}
		//}
		else{
		    out.print("Sorry try later"); 
			request.setAttribute("sorrynewstaff","Sorry try later");
			%>
			<jsp:forward page="/onlinelibrary2/admin1"></jsp:forward> 
			<%
		}

//}
	
		
			%></table>
    	
   
      