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
<%@include file="DB_Connector.jsp"%>    

<script>

/*function btn() {
  var y = document.getElementById('fname');
  alert(y)

}*/

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

<br>

<form action="ViewSpareParts.jsp" method="post"  class="comment-form">
    
<p ><label>Item Name</label> 
<input  type="text" name="iname" onchange="btn()"  size="70" aria-required="true" id="iname" required placeholder="Search By Name"></p>
</form>
<%  

 String Iname=request.getParameter("iname");
 
 Statement stmt = conn.createStatement();
 ResultSet rs = stmt.executeQuery("select * from spareparts where Name LIKE '%"+Iname+"%'");
%>

<%
 //Statement stmt1 = conn.createStatement();
 //ResultSet rs1 = stmt1.executeQuery("select * from spareparts");%>
 
 <br>
 <table border="1" align="left" width="600">

  <tr>
    <td>Spare Part ID</td>
    <td>Name</td>
    <td>Sub Category</td>
    <td>Shell Number</td>
    <td>Purchase Rate</td>
    <td>Sales Rate</td>
    <td>Quantity</td>
   

  </tr>
   <% while(rs.next()) {%>
  <tr>
    <td><%=rs.getString("SparePartID")%></td>
    <td><%=rs.getString("name")%></td>
    <td><%=rs.getString("SubCategory")%></td>
    <td><%=rs.getString("ShellNo")%></td>
    <td><%=rs.getString("PurchasePrice")%></td>
    <td><%=rs.getString("SalePrice")%></td>
    <td><%=rs.getString("Quantity")%></td>
    
  
    <td><a href="ViewSpareParts1.jsp?spID=<%=rs.getString("SparePartID")%>">View/edit</a><td>
    <td><a href="DeleteSparePart.jsp?spID=<%=rs.getString("SparePartID")%>" onclick="return confirm('Are you sure you want to delete this item?');">Remove</a>
   
  </tr>
 <%}%>
</table>
</form>
    

  
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
<div id="upload-area">
   
	<div id="preview" style="padding:10px">
		<img width="400px" height="400px" src="Images/Pisston.jpg" id="thumb">
	</div>

	
    
</div>

</aside>

</div><!-- #secondary.widget-area -->		</div>
	</div>

	</main><!-- main -->
        <%@include file="footer.jsp" %>
</div><!-- #page -->



</body></html>
