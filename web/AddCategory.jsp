<%-- 
    Document   : AddCategory
    Created on : July 03, 2015, 7:21:36 AM
    Author     : chathuri Lakmini
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
self.xmlHttpReq.open('POST', "AddCategory1.jsp", false); 
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
var word1 ='cat='+ escape( document.getElementById('cat').value);


var the_data =word1;
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
						<h1 class="entry-title">Add Category</h1>

					    <!-- .entry-content -->

					    	<footer class="clearfix">
	    	</footer><!-- .entry -->
					</article>
	
	
<div id="respond" class="comment-respond">
<form class="comment-form" action="AddCategory1.jsp" method="post">
							
<p ><label>Category</label> 
<input  type="text" id="cat" size="70" aria-required="true" name="cat" required placeholder="Enter the category"></p>

<p class="form-submit">
 <input type="submit"  class="submit"  value="Add"> 

</p>     					
					
</form>
							</div><!-- #respond -->
			</div><!-- #comments .comments-area -->			</div>
			
				<div id="secondary" class="col-md-4" role="complementary">
<article id="post-39" class="post-39 page type-page status-publish hentry xfolkentry">
						<h1 class="entry-title" style="color:white">Add Category</h1>

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
