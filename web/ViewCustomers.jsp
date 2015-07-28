<%-- 
    Document   : ViewCustomers
    Created on : Jul 28, 2015, 6:21:59 AM
    Author     : windya yasas
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

<form action="ViewSpareParts1.jsp" method="post"  class="comment-form">
<p ><label>Customer</label> 
<input  type="text" name="iname" onchange="btn()"  size="70" aria-required="true" id="iname" required placeholder="Search by cutomer Name/ID/Nic"></p>
</form>

 <%
 Statement stmt = conn.createStatement();
 ResultSet rs = stmt.executeQuery("select * from spare_parts");%>
 
 <br>
 <table border="1" align="left" width="600">

  <tr>
    <td>Item Name</td>
    <td>Model No</td>
    <td>Shell No</td>
    <td>Purchase Rate</td>
    <td>Sales Rate</td>
    <td>Quantity</td>
    <td></td>
    

  </tr>
   <% while(rs.next()) {%>
  <tr>
    <td><%=rs.getString("SpareId")%></td>
    <td><%=rs.getString("Spare_Name") %></td>
    <td><%=rs.getString("Shell_Number") %></td>
    <td><%=rs.getDouble("Quantity") %></td>
    <td><%=rs.getDouble("Model_Id") %></td>
    <td><%=rs.getInt("Brand_Id") %></td>
    <td><a href="">View/edit</a><td>
   
  </tr>
 <%}%>
</table>
</form>
    

  
							</div><!-- #respond -->
			</div><!-- #comments .comments-area -->			</div>
			
				<div id="secondary" class="col-md-4" >
<article id="post-39" class="post-39 page type-page status-publish hentry xfolkentry">
						<h1 class="entry-title">View Customer Details</h1>

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

