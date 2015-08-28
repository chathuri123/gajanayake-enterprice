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

		<main >
                     
	<div class="container" >
		<div class="row" >


									<!-- #post-39 -->

					
<div id="comments" class="comments-area" >
	
  <div id="secondary" class="col-md-10" >	
<div id="respond" class="comment-respond">
     <article id="post-39" class="post-39 page type-page status-publish hentry xfolkentry">
                                        <h1 class="entry-title">View All Products</h1>

                                        <!-- .entry-content -->

                                        <footer class="clearfix">
                                        </footer><!-- .entry -->
                                    </article>	
    



<%
 Statement stmt1 = conn.createStatement();
 ResultSet rs1 = stmt1.executeQuery("select * from spareparts");%>
 
<div class="table-responsive">
 <table border="1" align="left" width="600">

   <tr style="background-color: #555; color: #ffffff; ">
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
    
  
    <td><a href="ViewSpareParts1.jsp?spID=<%=rs1.getString("SparePartID")%>" title="View/Edit"><img style="width: 35px;height: 35px" src="Images/edit.png"></a></td>
    <td><a href="DeleteSparePart.jsp?spID=<%=rs1.getString("SparePartID")%>" onclick="return confirm('Are you sure you want to delete this item?');"title="Delete"><img src="Images/Delete.png"></a></td>
   
  </tr>
 <%}%>
</table>
</div>
    

  
							</div><!-- #respond -->
</div>
			</div><!-- #comments .comments-area -->			
			
						</div>
	</div>

	</main><!-- main -->
        <%@include file="footer.jsp" %>
</div><!-- #page -->



</body></html>
