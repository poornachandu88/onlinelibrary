



  	
  	   			<form name=F1 onSubmit="return dil(this)" action="/onlinelibrary2/onlinelibrary2/deletestaff1" method="get" >
					
				  
				  <%if(request.getAttribute("wrong")!=null)
			{
			out.print("<div>");
			out.print("<font color='blue'><font size='4'>"+request.getAttribute("wrong")+"");
			
			out.print("</div>"); 
			}
			
			 %>
				
				<%if(request.getAttribute("exception")!=null)
			{
			out.print("<div>");
			out.print("<font color='blue'><font size='4'>"+request.getAttribute("exception")+"");
			
			out.print("</div>"); 
			}
			
			 %>  
				
					
           <br>
           <br>    		
		
		<div class="form-group">
  <label class="" for="inputSuccess1" style="text-align: center; margin-right: 40%">Staff ID:</label>
  <input type="text" name="staffid" value="" class="form-control is-valid" id="inputValid" required="required">
 
 <br>
 <br>
  <a ><INPUT TYPE="submit" VALUE="SUBMIT" type="button" class="btn btn-primary" ></a>
      <INPUT TYPE=RESET VALUE="CLEAR" type="button" class="btn btn-primary">
 
 
  <div class="valid-feedback"></div>
</div>

    


  	
    	</form>
    	
		
            
          
				
  