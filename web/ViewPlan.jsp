<%-- 
    Document   : ViewSpareParts
    Created on : 04-Jul-2015, 01:25:22
    Author     : chathuri lakmini
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="content.jsp" %>
<%@include file="DB_Connector.jsp"%>    

<script>

$(document).ready(function() {
    
    
    
    
     $('.del').click(function () {
   
    var id_ = $(this).attr('id');
       
       
       $("#msg").text("This Plan will be permanently deleted and cannot be recovered. Are you sure?");
    
    $( "#dialog-message" ).dialog({
      resizable: false,
      height:160,
      modal: true,
      buttons: {
        "Delete   ": function() {
         
          $( this ).dialog( "close" );
          
         
         $.ajax({type:    'POST',
                 url:     'DeletePlan1.jsp',
                 data:   {id : id_},
                 success: function(data){
                  
                  $("#msg").text("Leasing Plan Deleted..");
                  
                   $( "#dialog-message" ).dialog({
      modal: true,
      buttons: {
        Ok: function() {
          $( this ).dialog( "close" );
          location.replace("ViewPlans.jsp");
        }
      }
    });
                  
                    
                 }
                });
                
                
                
               
         
         
        },
        Cancel: function() {
          $( this ).dialog( "close" );
        }
      }
    });
  return false;
    
});
    
 
    
    
    
    

  });
</script>

</head>
<body class="page page-id-39 page-template-default no-fittext basic">
	<div id="page">

		<header id="header">
			<%@include file="header.jsp" %>
<!-- #site-navigation -->

			 <div class="title-card-wrapper">
               
			</div>

		</header>

		<main>
                     <br>  
	<div class="container">
		<div class="row">

<div id="primary" class="col-md-8 pull-right hfeed">
									<!-- #post-39 -->

					
<div id="comments" class="comments-area">
	
	
<div id="respond" class="comment-respond">
 <div id="dialog-message" >
          <p id="msg">
		
	</p>
	
</div>
<br>

<form action="ViewPlan.jsp" method="post"  class="comment-form">
    
    
    
    <div class="row">
        
        <div class="col-md-8">
            
            
           
            <input  autocomplete="off" type="text" name="name_"   size="70" aria-required="true" id="name_"  placeholder="Search By Name">


        </div>
        
        <div class="col-md-4 ">
            
            <input type="submit" value="Search" style="margin-left: 30px;" class="pull-left aligncenter">
            
        </div>
        
        
        
    </div>
    
    
    
    
    




</form>
<%  
 String Iname=request.getParameter("name_");
  
 Statement stmt = conn.createStatement();
ResultSet rs = stmt.executeQuery("select p.PlanID,p.Name,p.NoOfyears,p.LeasingID,p.minDownPayment,p.rate,c.LeasingID,c.Name as Name_ from leasingplans p,leasingcompany c where p.LeasingID=c.LeasingID and p.Name LIKE '%"+Iname+"%'");
 

 
 
 
%>


 
 <br>
 <table border="1" align="left" width="600">

  <tr>
    <td>Leasing Company</td>
    <td>Name</td>
    <td>No Of Years</td>
    <td>Minimum DownPayment</td>
    <td>Rate</td>
<td></td>
<td></td>
   <td></td>

  </tr>
   <% while(rs.next()) {%>
  <tr>
   
    <td><%=rs.getString("Name_")%></td>
    <td><%=rs.getString("Name")%></td>
    <td><%=rs.getString("NoOfyears")%></td>
    <td><%=rs.getString("minDownPayment")%></td>
<td><%=rs.getString("rate")%></td>
    <td><a href="EditPlan.jsp?id=<%=rs.getString("PlanID")%>">View/edit</a><td>
    <td><a href="" id="<%=rs.getString("PlanID")%>" class="del" onclick="return confirm('Are you sure you want to delete this item?');">Delete</a></td>
   
  </tr>
 <%}%>
</table>

    

  
							</div><!-- #respond -->
			</div><!-- #comments .comments-area -->			</div>
			
				<div id="secondary" class="col-md-4" >
<article id="post-39" class="post-39 page type-page status-publish hentry xfolkentry">
						<h1 class="entry-title">View Leasing Plans</h1>

					    <!-- .entry-content -->

					    	<footer class="clearfix">
	    	</footer><!-- .entry -->
					</article>
<aside id="search-2" class="widget widget_search">
<div id="upload-area">
   
	<div id="preview" style="padding:10px">
		<img width="400" height="400" src="Images/operating-lease.jpg" id="thumb">
	</div>

	
    
</div>

</aside>

</div><!-- #secondary.widget-area -->		</div>
	</div>

	</main><!-- main -->
        <%@include file="footer.jsp" %>
</div><!-- #page -->



</body></html>
