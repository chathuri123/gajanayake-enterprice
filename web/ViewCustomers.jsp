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

   <div id="primary" class="col-md-10">
									<!-- #post-39 -->

					
<div id="comments" class="comments-area">
    <article id="post-39" class="post-39 page type-page status-publish hentry xfolkentry">
						<h1 class="entry-title">View Customer Details</h1>

					    <!-- .entry-content -->

					    	<footer class="clearfix">
	    	</footer><!-- .entry -->
					</article>

	
	
<div id="respond" class="comment-respond">

<br>

<form action="ViewCustomers.jsp" method="post"  class="comment-form">
<p ><label>Customer</label> 
<input  type="text" name="userid" onchange="btn()"  size="70" aria-required="true" id="userid" required placeholder="Search by cutomer ID"></p>
</form>
<%  

 String userid=request.getParameter("userid");
 
 Statement stmt1 = conn.createStatement();
 ResultSet rs1 = stmt1.executeQuery("select * from user where userID LIKE '%"+userid+"%' ");
%>

 
 
 <br>
 <div class="table-responsive">
 <table border="1" align="left" width="600">

   <tr style="background-color: #555; color: #ffffff; ">
    <td>Customer ID</td>
    <td>Full Name</td>
   
    <td style="width: 2px">Email</td>
    <td>Address</td>
    <td>NIC No</td>
   

  </tr>
   <% while(rs1.next()) {%>
  <tr>
    <td><%=rs1.getString("userID")%></td>
    <td><%=rs1.getString("nameWithIni") %></td>
    
    <td style="width: 2px"><%=rs1.getString("Email") %></td>
    <td><%=rs1.getString("Address") %></td>
    <td><%=rs1.getString("NIC") %></td>
    
    <td><a href="ViewCustomer1.jsp?ID=<%=rs1.getString("userID")%>" title="View/Edit"><img style="width: 35px;height: 35px" src="Images/edit.png"></a></td>
    <td><a href="DeleteCustomer.jsp?ID=<%=rs1.getString("userID")%>"  onclick="return confirm('Are you sure you want to delete this item?');" title="Delete"><img src="Images/Delete.png"></a></td>
   
   
  </tr>
 <%}%>
</table>
</div>
    

  
							</div><!-- #respond -->
			</div><!-- #comments .comments-area -->		
   </div>
					</div>
	</div>

	</main><!-- main -->
        <%@include file="footer.jsp" %>
</div><!-- #page -->



</body></html>

