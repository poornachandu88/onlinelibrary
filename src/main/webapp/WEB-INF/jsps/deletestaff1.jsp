<%@ page import="java.sql.*"%>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.*"%>
<%@ page import="lnlinelibrary2.onlinelibrary2.*"%>
    	
  		
<table>
<%

int id=0;
try{
         String ph=request.getParameter("staffid");
        
		  id=Integer.parseInt(ph);
		
}catch(NumberFormatException nfe){
	out.print("you have given text give me the id number");
	request.setAttribute("exception","you have given text give me the id number");	
	
}
		 Connection con=GetCon.getCon();
		
		 
			     				   
		try {
			PreparedStatement ps=con.prepareStatement("delete  from NEWSTAFFMEMBER where id = '"+id+"' ");
			
			int rowaffected=ps.executeUpdate();
           			
		    if(rowaffected==1){          			
	        out.print("your Details has been deleted");
			request.setAttribute("deleted","your Details has been deleted");
			%>			
			<jsp:forward page="/onlinelibrary2/showstaff"></jsp:forward> 
			<% 
				
			}
           	
          
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	
		out.println("your given id is wrong");
		request.setAttribute("wrong","your given id is wrong");	
		%>			
			<jsp:forward page="/onlinelibrary2/deletestaff"></jsp:forward> 
			<% 
		
		
		%></table>


    	
		
            
	