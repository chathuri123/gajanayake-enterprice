<%-- 
    Document   : AddBikeBrand
    Created on : July 03, 2015, 7:21:36 AM
    Author     : windya yasas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="content.jsp" %>

<script src="validateScript.js"></script>
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
self.xmlHttpReq.open('POST', "AddBike1.jsp", false); 
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
var word1 ='bmodel='+ escape( document.getElementById('bmodel').value);
var word2 ='supplier='+ escape( document.getElementById('supplier').value);
var word3 ='engineno='+ escape( document.getElementById('engineno').value);

var word5 ='chassis='+ escape( document.getElementById('chassis').value);
var word6 ='color='+ escape( document.getElementById('color').value);



var the_data =word1 +'&'+ word2+'&'+ word3+'&'+ word5+'&'+ word6;
self.xmlHttpReq.send(the_data); 





}




function updatepage(field,str){ 
document.getElementById(field).innerHTML = str;
alert('Successfuly Added');


} 


</script>


</head>
<% if(session.getAttribute("noti").toString()== "yes")
{
    %><%="<body class='page page-id-39 page-template-default no-fittext basic' onload='JavaScript:noti()'>"%><%
}
else
{
    %><%="<body class='page page-id-39 page-template-default no-fittext basic'>"%><% 
}
session.setAttribute("noti","No");
%>

<%@include file="DB_Connector.jsp"%>
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

<div id="primary" class="col-md-8 pull-left hfeed">
									<!-- #post-39 -->

					
<div id="comments" class="comments-area">
    <article id="post-39" class="post-39 page type-page status-publish hentry xfolkentry">
						<h1 class="entry-title">Add Bike</h1>

					    <!-- .entry-content -->

					    	<footer class="clearfix">
	    	</footer><!-- .entry -->
					</article>
	
	
<div id="respond" class="comment-respond">
<form class="comment-form" action="AddBike1.jsp" method="post">

<p ><label>Select Brand </label><br>
 <%
             Statement stmt2 =conn.createStatement();
             ResultSet rs2 = stmt2.executeQuery("select * from mbbrand"); %>
 
             <select name="bbrand" id="bbrand" style="width:250px" onchange='JavaScript:xmlhttpVPost("MbModel","bbrand","AddSparePartsValidate.jsp")'>
             <% while(rs2.next()) {%>

             <option value="<%=rs2.getString("BrandID")%>"><%=rs2.getString("Bname")%></option>
        
             <%}%>
             </select>  
             
    </p>
    <p><div id="MbModel"></div>
    </p>
</p>

<p ><label>Supplier</label><br>
    <%
            Statement stmt1 = conn.createStatement();
            ResultSet rs1 = stmt1.executeQuery("select * from user where supplier=true ");%>
            
       <select name="supplier" id="supplier" style="width:250px" >
        <% while(rs1.next()) {%>

        <option value="<%=rs1.getString("userID")%>"><%=rs1.getString("nameWithIni")%></option>
        
        <%}%> 
    
    </select>
    
        <a href="AddSupplier.jsp">Add Supplier</a>
    </p>
							
<p ><label>Engine No</label> 
<input  type="text" id="engineno"   size="70" aria-required="true" name="engineno" required placeholder="Enter the engine no"></p>


<p ><label>Chassis No</label> 
    <input  type="text" id="chassis"   size="70" aria-required="true" name="chassis" required placeholder="Enter the chassis no"></textarea></p>

<p ><label>Colour</label> 
<input  type="text" id="color"   size="70" aria-required="true" name="color" required placeholder="Enter the colour"></p>

<p class="form-submit">
 <input type="submit"  class="submit"  value="Add"> 

</p>     					
					
</form>
							</div><!-- #respond -->
			</div><!-- #comments .comments-area -->			</div>
			
				<div id="secondary" class="col-md-4" role="complementary">
<article id="post-39" class="post-39 page type-page status-publish hentry xfolkentry">
						<h1 class="entry-title" style="color:white">Add Bike</h1>

					    <!-- .entry-content -->

					    	<footer class="clearfix">
	    	</footer><!-- .entry -->
					</article>
<aside id="search-2" class="widget widget_search">


</aside>

</div><!-- #secondary.widget-area -->		</div>
	</div>

	</main><!-- main -->
        <%@include file="footer.jsp" %>
</div><!-- #page -->



</body></html>
