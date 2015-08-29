<%-- 
    Document   : AddSubCategory
    Created on : 27-Aug-2015, 14:52:42
    Author     : chathuri lakmini
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
self.xmlHttpReq.open('POST', "AddSubCategory1.jsp", false); 
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
var word2 ='subcat='+ escape( document.getElementById('subcat').value);

var the_data =word1 + '&' + word2;
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

<div id="primary" class="col-md-8 pull-right hfeed">
									<!-- #post-39 -->

					
<div id="comments" class="comments-area">
    <article id="post-39" class="post-39 page type-page status-publish hentry xfolkentry">
						
<h1 class="entry-title" style="color:white">Add Sub Category</h1>
					    <!-- .entry-content -->

					    	<footer class="clearfix">
	    	</footer><!-- .entry -->
					</article>
	
	

			</div><!-- #comments .comments-area -->	
                         <div id="respond" class="comment-respond">
                      
<%  

 Statement stmt = conn.createStatement();
 ResultSet rs = stmt.executeQuery("select * from subcategory");
%>

<table border="1" align="left" width="600">

  <tr>
    <td>Sub Category ID</td>
    <td>Category ID</td>
    <td>Sub Category Name</td>
    

  </tr>
   <% while(rs.next()) {%>
  <tr>
    <td><%=rs.getString("SubCatID")%></td>
    <td><%=rs.getString("CatID")%></td>
    <td><%=rs.getString("SubCatName")%></td>
   
    <td><a href="UpdateSubCategory.jsp?subcatID=<%=rs.getString("SubCatID")%>" onclick="return confirm('Are you sure you want to delete this item?');">Remove</a>
   
  </tr>
 <%}%>
</table>
                         </div>
</div>
			
				<div id="secondary" class="col-md-4" role="complementary">
<article id="post-39" class="post-39 page type-page status-publish hentry xfolkentry">
						
<h1 class="entry-title">Add Sub Category</h1>
					    <!-- .entry-content -->

					    	<footer class="clearfix">
	    	</footer><!-- .entry -->
					</article>
<aside id="search-2" class="widget widget_search">
    <div id="respond" class="comment-respond">
    
<form class="comment-form" action="AddSubCategory1.jsp" method="post">

<p><label>Category</label><br>
       <%
            Statement stmt1 = conn.createStatement();
            ResultSet rs1 = stmt1.executeQuery("select * from category");%>
            
       <select name="cat" id="cat" style="width:270px" >
        <% while(rs1.next()) {%>

        <option value="<%=rs1.getString("CatID")%>"><%=rs1.getString("CatName")%></option>
        
        <%}%> 
    
</select>
        
<p ><label>Sub Category</label> 
<input  type="text" id="subcat" size="30" aria-required="true" name="subcat" required placeholder="Enter the sub category"></p>

<p class="form-submit">
<input type="submit"  class="submit"  value="Add"> 

</p>     					
					
</form>
							</div><!-- #respond -->
    

    

</aside>

</div><!-- #secondary.widget-area -->		</div>
	</div>

	</main><!-- main -->
        <%@include file="footer.jsp" %>
</div><!-- #page -->



</body></html>

