<%--
..................
    Document   : purchaseBike
    Created on : Jun 30, 2015, 5:46:57 PM
    Author     : windya yasas 
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="content.jsp" %>
<%@include file="DB_Connector.jsp" %>

<script>

</script>
<script src="validateScript.js"></script>
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
    
<form action="sellBike1.jsp" method="post"  class="comment-form" >
<br>							
<p ><label>Customer </label><br>
        
<input  type="name" id="Fname" name="Fname"  size="70" aria-required="true" required placeholder="Search Customer Using NIC/ID/Name"></p>
<p><a href="AddCustomer.jsp" style="padding:10px">Add customer</a>
</p>

 <p><label>Bike Brand</label><br>
        <%
             Statement stmt2 = conn.createStatement();
             ResultSet rs2 = stmt2.executeQuery("select * from mbbrand"); %>
 
             <select name="bbrand" id="bbrand" style="width:250px" onchange='JavaScript:xmlhttpVPost("MbModel","bbrand","sellBikeValidate.jsp")'>
             <% while(rs2.next()) {%>

             <option><%=rs2.getString("Bname")%></option>
        
               <%}%>
             </select>
    
    </p>
    <p><div id="MbModel"></div>
    </p>
<p><label>Select Engine and Chassis no</label> <br>
    <select name="BEnginNo" id="BEnginNo" style="width:350px"></select>
</p>
<p><label>Discount</label> <br>
    <input  onmousemove="btn()" type="number" name="Discount" size="70" aria-required="true" id="modelNo" required placeholder="Enter the Discount"></p>

</p>
<p><label>Select Payment type</label> <br>
    <select name="Ptype" id="Ptype" style="width:150px">
        <option value="">Leasing</option>
        <option value="">Cash</option>
    </select>
</p>
        
<p ><label>Current Pay Amount</label> 
<input  onmousemove="btn()" type="text" name="modelNo" size="70" aria-required="true" id="modelNo" required placeholder="Enter the Model number"></p>
<br>
<p>Release Bike and Leave as a pending transaction</p>
<p class="form-submit">
<input type="submit" class="submit" value="Release"> 
</p>					
</form>
        
                
                
							</div><!-- #respond -->
			</div><!-- #comments .comments-area -->			</div>
			
				<div id="secondary" class="col-md-4" >
<article id="post-39" class="post-39 page type-page status-publish hentry xfolkentry">
						<h1 class="entry-title">Purchase Bike </h1>

					    <!-- .entry-content -->

					    	<footer class="clearfix">
	    	</footer><!-- .entry -->
					</article>
<aside id="search-2" class="widget widget_search">
    <form action="purchaseBike1.jsp" method="post"  class="comment-form" >
<p><label>Leasing Company</label><br>
    <select name="BBrand" id="BBrand" style="width:150px"></select>
    </p>
    <p>Least Down payment : </p>
<p><label>No Of years</label><br>
    <select name="BBrand" id="BBrand" style="width:150px"></select>
    </p>
    <p>Estimated monthly payment : </p>
    <p class="form-submit">
<input type="submit" class="submit" value="Submit"> 
</p>	
    </form>  
</aside>

</div><!-- #secondary.widget-area -->		</div>
	</div>

	</main><!-- main -->
        <%@include file="footer.jsp" %>
</div><!-- #page -->



</body></html>

