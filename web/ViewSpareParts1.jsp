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
 <%@include file="DB_Connect.jsp"%>    
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

<form action="ViewSpareParts1.jsp" method="post"  class="comment-form">
<p ><label>Item Name</label> 
<input  type="text" name="iname" onchange="btn()"  size="70" aria-required="true" id="iname" required placeholder="Enter the Item name"></p>
</form>

 <%  

 String Iname=request.getParameter("iname");
 
 Statement stmt = conn.createStatement();
 ResultSet rs = stmt.executeQuery("select * from spareparts where itemname LIKE '%"+Iname+"%'");%>
 
 <br>
 <table border="1" align="left" width="600">

  <tr>
    <td>Item Name</td>
    <td>Model No</td>
    <td>Shell No</td>
    <td>Purchase Rate</td>
    <td>Sales Rate</td>
    <td>Quantity</td>
    <td>Description</td>
    

  </tr>
   <% while(rs.next()) {%>
  <tr>
    <td><%=rs.getString("itemname")%></td>
    <td><%=rs.getString("modelno") %></td>
    <td><%=rs.getString("shellno") %></td>
    <td><%=rs.getDouble("purchaserate") %></td>
    <td><%=rs.getDouble("salesrate") %></td>
    <td><%=rs.getInt("qty") %></td>
    <td><%=rs.getString("Description") %></td>
    <td><a href="View1SparePart.jsp">View and Edit</a></td>
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


</aside>

</div><!-- #secondary.widget-area -->		</div>
	</div>

	</main><!-- main -->
        <%@include file="footer.jsp" %>
</div><!-- #page -->



</body></html>
