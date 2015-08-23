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

<%
 Statement stmt1 = conn.createStatement();
 ResultSet rs1 = stmt1.executeQuery("select * from spareparts");%>
 
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
   <% while(rs1.next()) {%>
  <tr>
    <td><%=rs1.getString("SparePartID")%></td>
    <td><%=rs1.getString("name")%></td>
    <td><%=rs1.getString("SubCategory")%></td>
    <td><%=rs1.getString("ShellNo")%></td>
    <td><%=rs1.getString("PurchasePrice")%></td>
    <td><%=rs1.getString("SalePrice")%></td>
    <td><%=rs1.getString("Quantity")%></td>
    
  
    <td><a href="">View/edit</a><td>
    <td><a href="DeleteSparePart.jsp?spID=<%=rs1.getString("SparePartID")%>">Remove</a>
   
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
