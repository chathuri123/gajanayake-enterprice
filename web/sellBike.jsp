<%--
..................
    Document   : purchaseBike
    Created on : Jun 30, 2015, 5:46:57 PM
    Author     : windya yasas 
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="content.jsp" %>
<%@include file="DB_Connector.jsp" %>

<script>
   
function xmlhttpPost(field)
{ 
var xmlHttpReq = false; 
var self = this; 

// Mozilla/Safari 
if (window.XMLHttpRequest) { 
self.xmlHttpReq = new XMLHttpRequest(); 
} 
// IE 
else if (window.ActiveXObject) { 
self.xmlHttpReq = new ActiveXObject("Microsoft.XMLHTTP"); 
} 
self.xmlHttpReq.open('POST', "sellBike1.jsp", false); 
self.xmlHttpReq.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded'); 
self.xmlHttpReq.onreadystatechange = function()
{
    
    if (self.xmlHttpReq.readyState != 4 && self.xmlHttpReq.status == 200)
 {
     document.getElementById(field).innerHTML = "Validating..";
 }
  else if (self.xmlHttpReq.readyState == 4)
  { 
     updatepage(field,self.xmlHttpReq.responseText); 
  } 
}
var word1 ='field='+ escape(field);




var the_data =word1;
self.xmlHttpReq.send(the_data); 





}




function updatepage(field,str){ 
document.getElementById(field).innerHTML = str;
alert('Successfuly Added');


} 

</script>


<script src="validateScript.js"></script>
</head>
<body class="page page-id-39 page-template-default no-fittext basic">

	<div id="page">

		<header id="header">
			<%@include file="header.jsp" %>
<!-- #site-navigation -->

			 <div class="title-card-wrapper">
               
			</div>

		</header>
<form class="comment-form" >	
		<main>
                     <br>  
	<div class="container">
		<div class="row">
                    
                   
                    
<div id="primary" class="col-md-8 pull-left hfeed">
   

									<!-- #post-39 -->

					
<div id="comments" class="comments-area">
	
	
<div id="respond" class="comment-respond">
     <article  class="post-39 page type-page status-publish hentry xfolkentry">
						<h1 class="entry-title">Sell Bike </h1>

    </article>
    							
<p ><label>Customer </label><br>
        
 <%
            Statement stmt1 = conn.createStatement();
            ResultSet rs1 = stmt1.executeQuery("select * from user where Customer=1 ");%>
     <select name="Customer" id="Customer" style="width:350px" onchange='JavaScript:xmlhttpVPost("Customer1","Customer","sellBikeValidate.jsp")' >
        <% while(rs1.next()) {%>

        <option value="<%=rs1.getString("userID")%>">Customer ID<%=" - "+rs1.getString("userID")+" | "%> Name<%=" - "+rs1.getString("fname")+" "%></option>
        
        <%}%> 
    
    </select>
    
<a href="AddCustomer.jsp" style="padding:10px">Add customer</a>
</p>
<div id="Customer1"></div>

 <p><label>Bike Brand</label><br>
        <%
             Statement stmt2 = conn.createStatement();
             ResultSet rs2 = stmt2.executeQuery("select * from mbbrand"); %>
 
             <select name="bbrand" id="bbrand" style="width:250px" onchange='JavaScript:xmlhttpVPost("MbModel","bbrand","sellBikeValidate.jsp")'>
             <% while(rs2.next()) {%>

             <option><%=rs2.getString("Bname")%></option>
        
               <%}%>
             </select>
    
    </p>
    <p><div id="MbModel"></div>
    </p>
    <p><div id='Mbike'></div></p>


<p><label>Select Payment type</label> <br>
    <select name="Ptype" id="Ptype" style="width:150px" onchange='JavaScript:xmlhttpVPost("Servises","Ptype","sellBikeValidate.jsp")' >
        <option value="Leasing">Leasing</option>
        <option value="Cash">Cash</option>
    </select>
</p>
        
<br>
<p>Release Bike and Leave as a pending transaction</p>
<p class="form-submit">
<input type="submit" class="submit" onclick='JavaScript:xmlhttpPost("release")' value="Release"> 
</p>					
        
                
                
							</div><!-- #respond -->
			</div><!-- #comments .comments-area -->			</div>
            
			
				<div id="secondary" class="col-md-4" >
                                     

<aside id="search-2" class="widget widget_search">
    <div   class="comment-form" style="background-color:#fffff;color:white;padding:10px;border-radius:5px;visibility:false;height:145px" ></div>

    <div id="price" class="comment-form" style="background-color:#dd1557;color:white;padding:10px;border-radius:5px;visibility:false;" ></div>
    <div id="Servises"  class="comment-form" style="background-color:#96a092;padding:10px;border-radius:5px;visibility:false;" >

    </div>  
</aside>

</div><!-- #secondary.widget-area -->		</div>
	</div>

	</main><!-- main -->
        </form>

        <%@include file="footer.jsp" %>
</div><!-- #page -->



</body></html>

