<%-- 
    Document   : AddInsuranceCompany
    Created on : Jul 29, 2015, 4:26:24 AM
    Author     : windya yasas
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="javax.servlet.*"%>
<%@page import="javax.servlet.http.*"%>
<%@page import="java.sql.*"%>
<%@include file="content.jsp" %>

<%@include file="DB_Connector.jsp"%>  

</head>
<body class="page page-id-39 page-template-default no-fittext basic">

	<div id="page">

		<header id="header">
			<%@include file="header.jsp" %>
<!-- #site-navigation -->


<script>
    
$(document).ready(function() {
    
    
    
    

    // process the form
    $('#infrm').submit(function(event) {


    var postData = $(this).serializeArray();
    var formURL = $(this).attr("action");
  
    
  
	var request =  $.ajax({
	    type: "POST",
	    url: formURL,
	    data: postData
	  });
          
          
          
          request.done(function( msg ) {
 if(msg.indexOf("ok") >= 0){
     
     
     $("#msg").text("Insurance Company Updated.");
     
      $(function() {
    $( "#dialog-message" ).dialog({
      modal: true,
      buttons: {
        Ok: function() {
          $( this ).dialog( "close" );
          
          
          location.replace("ViewInsuranceCompanies.jsp");
          
          
          
          
        }
      }
    });
  });
    
    
     
     
     
 }
 
 else
 {
     $("#msg").text("Insurance Company Not Updated.\n"+msg);
      $(function() {
    $( "#dialog-message" ).dialog({
      modal: true,
      buttons: {
        Ok: function() {
          $( this ).dialog( "close" );
        }
      }
    });
  });
     
 }
 
 
 
 
 
 
 
});
          
          
	 
  
  
  
         event.preventDefault();
    });

});
  


</script>

			 <div class="title-card-wrapper">
               
			</div>

		</header>

		<main>
                    <br>
	<div class="container">
            
            
            
      <div id="dialog-message" >
          <p id="msg">
		
	</p>
	
</div>
            
            
      
            
            
            
            
            
            
            
		<div class="row">

<div id="primary" class="col-md-8 pull-left hfeed">
									<!-- #post-39 -->

					
<div id="comments" class="comments-area">
<article id="post-39" class="post-39 page type-page status-publish hentry xfolkentry">
						

					    <!-- .entry-content -->

					    		
<h1 class="entry-title">Edit Insurance Company</h1>
<footer class="clearfix">
	    	</footer><!-- .entry -->
</article>
<div id="respond" class="comment-respond">
    
    <form  id="infrm"  action="EditInsuranceCompany1.jsp" method="POST" class="comment-form" >
        
        
        
        <%  ResultSet rs;
 String id=request.getParameter("id");
 Statement stmt = conn.createStatement();
 String sql="select * from insurancecompany where InsuranceID = '"+id+"'";
 
 
 
 
 rs = stmt.executeQuery(sql);  %> <% while(rs.next()) {%>
        
        

 <input   type='hidden' id="id"  value="<%=rs.getString("InsuranceID")%>"   name="id_">
							
<p ><label for="name">Name </label> 
<input  type="text" id="name"  value="<%=rs.getString("Name")%>" size="70" aria-required="true" name="name_" required placeholder="Enter the Company Name"></p>
<p ><label for="regno">Reg-No</label> 
<input id="regno" type="text" value="<%=rs.getString("C_RegNo")%>" size="70" aria-required="true" name="regno_" required placeholder="Enter the Reg-No"></p>
<p ><label for="address">Address </label> 
<input  id="address" type="text" value="<%=rs.getString("Address")%>" size="70" aria-required="true" name="address_" required placeholder="Enter the Address"></p>
<p ><label for="telh">Tel (Head Office) </label> 
<input  id="telh" type="text" value="0<%=rs.getString("TelNo")%>" pattern= "[0-9]{10}"  title= "Ten digit TelNo." aria-required="true" name="telh_" required placeholder="Enter the number"></p>



<p class="form-submit">
    <input type="submit" class="submit" value="Update Company">
</p>	

<%}%>


</form>
							</div><!-- #respond -->
			</div><!-- #comments .comments-area -->			</div>
			
						</div>
	</div>

	</main><!-- main -->
        <%@include file="footer.jsp" %>
</div><!-- #page -->



</body></html>
