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


<%  

 String userid=request.getParameter("userid");
 
 Statement stmt1 =conn.createStatement();
 ResultSet rs1 = stmt1.executeQuery("select * from user where Customer=1");
%>

 
 
 <br>
 
 <table border="1" align="left" width="600">

  <tr>
    <td>Customer ID</td>
    <td>First name</td>
    <td>Last name</td>
    <td>Email</td>
    <td>Address</td>
    <td>NIC No</td>
    

  </tr>
   <% while(rs1.next()) {%>
  <tr>
    <td><%=rs1.getString("userID")%></td>
    <td><%=rs1.getString("fname") %></td>
    <td><%=rs1.getString("lname") %></td>
    <td><%=rs1.getString("Email") %></td>
    <td><%=rs1.getString("Address") %></td>
    <td><%=rs1.getString("NIC") %></td>

   
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
    <div id="upload-area">
   
	<div id="preview" style="padding:10px">
		<img width="400px" height="400px" src="Images/User.jpg" id="thumb">
	</div>

	
    
</div>

</aside>

</div><!-- #secondary.widget-area -->		</div>
	</div>

	</main><!-- main -->
        <%@include file="footer.jsp" %>
</div><!-- #page -->



</body></html>

