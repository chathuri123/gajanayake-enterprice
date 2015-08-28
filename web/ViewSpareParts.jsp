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


									<!-- #post-39 -->

					
<div id="comments" class="comments-area">
	
	
<div id="respond" class="comment-respond">
    <div id="secondary" class="col-md-10" >



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
   <% while(rs.next()) {%>
  <tr>
    <td><%=rs.getString("SparePartID")%></td>
    <td><%=rs.getString("name")%></td>
    <td><%=rs.getString("SubCategory")%></td>
    <td><%=rs.getString("ShellNo")%></td>
    <td><%=rs.getString("PurchasePrice")%></td>
    <td><%=rs.getString("SalePrice")%></td>
    <td><%=rs.getString("Quantity")%></td>
    
  
    <td><a href="ViewSpareParts1.jsp?spID=<%=rs.getString("SparePartID")%>" title="View/Edit"><img style="width: 35px;height: 35px" src="Images/edit.png"></a></td>
    <td><a href="DeleteSparePart.jsp?spID=<%=rs.getString("SparePartID")%>" onclick="return confirm('Are you sure you want to delete this item?');"title="Delete"><img src="Images/Delete.png"></a></td>
   
  </tr>
 <%}%>
</table>
</div>
    

    </div>
							</div><!-- #respond -->
			</div><!-- #comments .comments-area -->			
			
				


	
    



</div><!-- #secondary.widget-area -->		</div>
	</div>

	</main><!-- main -->
        <%@include file="footer.jsp" %>
</div><!-- #page -->



</body></html>
