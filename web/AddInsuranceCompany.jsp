<%-- 
    Document   : AddInsuranceCompany
    Created on : Jul 29, 2015, 4:26:24 AM
    Author     : windya yasas
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="content.jsp" %>



</head>
<body class="page page-id-39 page-template-default no-fittext basic">

	<div id="page">

		<header id="header">
			<%@include file="header.jsp" %>
<!-- #site-navigation -->


<script>
    
$(document).ready(function() {
    
    
    
    

    $('#inpolfrm #plcmp').bind('input', function(){
        
       var tmp;
        
       $.ajax({type:    'POST',
                 url:     'InCmpList.jsp',
                 cache:   false,
                 success: function(data){
                     tmp = data.split("|");
                     for(var x=0;x<tmp.length;x++)
                     {
                         
                         tmp[x]= $.trim(tmp[x]);
                         
                         
                     }
                    $( "#plcmp" ).autocomplete({
                        minLength:1,
               source: tmp
            });
                    
                 }
                });
        
        

            
            
  
  
});
    
    
    
    
    
        // process the form
    $('#inpolfrm').submit(function(event) {


    var postData = $(this).serializeArray();
    var formURL = $(this).attr("action");
  
    
  
	var request =  $.ajax({
	    type: "POST",
	    url: formURL,
	    data: postData
	  });
          
          
          
          request.done(function( msg ) {
 if(msg.indexOf("ok") >= 0){
     
     
     $("#msg").text("Insurance Policy Added.");
     
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
    
    $('#inpolfrm')[0].reset();
     
     
     
 }
 
 else
 {
     $("#msg").text("Insurance Policy Not Added.\n"+msg);
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
     
     
     $("#msg").text("Insurance Company Added.");
     
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
    
    $('#infrm')[0].reset();
     
     
     
 }
 
 else
 {
     $("#msg").text("Insurance Company Not Added.\n"+msg);
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

					    		
<h1 class="entry-title">Add Insurance Company</h1>
<footer class="clearfix">
	    	</footer><!-- .entry -->
</article>
<div id="respond" class="comment-respond">
    
    <form  id="infrm"  action="AddInsuranceCompany1.jsp" method="POST" class="comment-form" >

							
<p ><label for="name">Name </label> 
<input  type="text" id="name"   size="70" aria-required="true" name="name_" required placeholder="Enter the Company Name"></p>
<p ><label for="regno">Reg-No</label> 
<input id="regno" type="text"  size="70" aria-required="true" name="regno_" required placeholder="Enter the Reg-No"></p>
<p ><label for="address">Address </label> 
<input  id="address" type="text"  size="70" aria-required="true" name="address_" required placeholder="Enter the Address"></p>
<p ><label for="telh">Tel (Head Office) </label> 
<input  id="telh" type="text"  pattern= "[0-9]{10}"  title= "Ten digit TelNo." aria-required="true" name="telh_" required placeholder="Enter the number"></p>



<p class="form-submit">
    <input type="submit" class="submit" value="Add Company">
</p>					
</form>
							</div><!-- #respond -->
			</div><!-- #comments .comments-area -->			</div>
			
				<div id="secondary" class="col-md-4" role="complementary">
<article id="post-39" class="post-39 page type-page status-publish hentry xfolkentry">
						
<H3>Add Insurance Policy</H3>
					    <!-- .entry-content -->

					    	
					</article>
<aside id="search-2" class="widget widget_search">
    <form id="inpolfrm" action="AddInsurancePolicy1.jsp" method="POST" class="comment-form" >
       
        <p>
            
            <label for="plcmp">Insurance Company </label> 
      <input type="text" id="plcmp" name="plcmp" size="40" aria-required="true" required placeholder="Enter the Company Name">
        </p>
        
        
        
<p ><label for="plname">Name </label> 
<input  type="text" id="plname"    size="40" aria-required="true" name="plname" required placeholder="Enter the Policy Name"></p>


<p ><label for="value_">Value </label> 
    <input  type="number" id="value_"   min="1.00" size="40" aria-required="true" name="value_" required placeholder="Enter the Value"></p>
<p class="form-submit">
 <input type="submit" class="submit" value="Add Policy">
</p>
    </form>
</aside>

</div><!-- #secondary.widget-area -->		</div>
	</div>

	</main><!-- main -->
        <%@include file="footer.jsp" %>
</div><!-- #page -->



</body></html>
