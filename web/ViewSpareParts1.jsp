<%-- 
    Document   : ViewSpareParts
    Created on : 04-Jul-2015, 01:25:22
    Author     : chathuri lakmini
--%>


<%@page import="javax.servlet.*"%>
<%@page import="javax.servlet.http.*"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="content.jsp" %>

<script>

/*function btn() {
  var y = document.getElementById('fname');
  alert(y)

}*/

</script>

</head>
<body class="page page-id-39 page-template-default no-fittext basic">
    
 <%@include file="DB_Connector.jsp"%>    
	<div id="page">

		<header id="header">
			<%@include file="header.jsp" %>
<!-- #site-navigation -->

			 <div class="title-card-wrapper">
               
			</div>

		</header>

		<main>
	<div class="container">
		<div class="row">

<div id="primary" class="col-md-8 pull-right hfeed">
									<!-- #post-39 -->

					
<div id="comments" class="comments-area">
	
	
<div id="respond" class="comment-respond">

<br>

<%  

 String ID=request.getParameter("spID");
 
 Statement stmt = conn.createStatement();
 ResultSet rs = stmt.executeQuery("select * from spareparts where SparePartID='"+ID+"'");
 while(rs.next()) {%>
 
 <%String catId=rs.getString("SubCategory");%>

<form action="AddSpareParts1.jsp" method="post"  class="comment-form" >
<br>							
<p ><label>Spare Part ID</label> 
    <input type="text" name="sparepartid" size="70" aria-required="true" id="sparepartid" value="<%=rs.getString("SparePartID")%>"></p>

<p ><label>Name</label> 
    <input type="text" name="Name" size="70" aria-required="true" id="Name" value="<%=rs.getString("Name")%>"></p>

<p ><label>Sub Category</label> </p>
    <%
        Statement stmt1 = conn.createStatement();
        
        ResultSet rs1 = stmt1.executeQuery("select SubCatName from subcategory where SubCatID='"+catId+"'");%>
 
        <p>       <select name="cat" id="cat" style="width:250px">
        <% while(rs1.next()) {%>

        <option value="<%=rs1.getString("SubCatName")%>"><%=rs1.getString("SubCatName")%></option>
         <%}%>
     <% 
         Statement stmt2 = conn.createStatement();
        ResultSet rs2 = stmt2.executeQuery("select SubCatName from subcategory" );%>
   
    
        <% while(rs2.next()) {%>

        <%="<option value='"+rs2.getString("SubCatName")+"'>"+rs2.getString("SubCatName")+"</option>"%>
        
        <%}%>
   
        
 
   
    </select>
                
</p>

</form>

 <%}%>   





  
							</div><!-- #respond -->
			</div><!-- #comments .comments-area -->			</div>
			
				<div id="secondary" class="col-md-4" >
<article id="post-39" class="post-39 page type-page status-publish hentry xfolkentry">
						<h1 class="entry-title">View Product Details</h1>

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
