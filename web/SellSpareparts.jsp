<%--
..................
    Document   : SellSpareparts
    Created on : Jun 30, 2015, 5:46:57 PM
    Author     : Chathuri Lakmini 
--%>


<%@page import="java.util.List"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="content.jsp" %>
<%@include file="DB_Connector.jsp"%>    


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
<article id="post-39" class="post-39 page type-page status-publish hentry xfolkentry">
						<h1 class="entry-title">Sell Spare Parts </h1>

					    <!-- .entry-content -->

					    	<footer class="clearfix">
	    	</footer><!-- .entry -->
					</article>	
	
<div id="respond" class="comment-respond">
    
<form action="AddSpareParts1.jsp" method="post"  class="comment-form" >
<br>							
<p ><label>Category</label> <br>
 <%
 Statement stmt = conn.createStatement();
 ResultSet rs = stmt.executeQuery("select * from spareparts");%>
    <select name="iname" id="iname" style="width:250px" onChange="JSGetSelectedItem()">
           <% while(rs.next()) {%>

           <option><%=rs.getString("SparePartID")%></option>%>
      
         <%}%>
    </select>
                
</p>

<p><label>Sub-Category</label><br>
    <select name="subcat" id="subcat" style="width:250px">
         <option value="2">Mud Guard</option>
        <option value="">Covering</option>
        <option value="">Side Mirrors</option>
    </select>
    </p>
    <p><label>Customer</label><br>
    <select name="subcat" id="subcat" style="width:250px">
        <option value="2">A.s.k nimal</option>
        <option value=""></option>
        <option value=""></option>
    </select>
        <a href="AddSuplier.jsp">Add Customer</a>
    </p>
    <p><label>Bike Brand</label><br>
    <select name="subcat" id="subcat" style="width:250px">
         <option value="2">Suzuki</option>
        <option value="">TVS</option>
        <option value="">Honda</option>
    </select>
    </p>
    <p><label>Bike Model<br>
    <select name="subcat" id="subcat" style="width:250px">
         <option value="2">Gixxer</option>
        <option value="">GS125</option>
        <option value="">GN125</option>
    </select>
    </p>
    
<p ><label>Model Number</label> 
    
<p ><label>Shell Number</label> 


<p><label>Quantity</label> 
<input  type="number"  size="70" aria-required="true" name="qty" id="qty" required placeholder="Enter the Quantity"></p>

<p><label>Description</label> 
    <textarea rows="4" aria-required="true" name="descrip" id="descrip" required placeholder="Enter the Desription"></textarea></p>
<br>

<p class="form-submit">
<input type="submit" class="submit" value="Add"> 
</p>					
</form>
        
                
                
							</div><!-- #respond -->
			</div><!-- #comments .comments-area -->			</div>
			
				<div id="secondary" class="col-md-4" >

						
                                                

					    <!-- .entry-content -->
                                            <br>
                                            <br>
                                            <br>

<div id="upload-area">
   
	<div id="preview" style="padding:10px">
		<img width="400px" height="400px" src="Images/Pisston.jpg" id="thumb">
	</div>

	

                                            <aside id="search-2" class="widget widget_search">
                                             <h3 >Price and Cost </h3>
                                            <hr> 
                                            <form action="AddInsurancePlans1.php" method="post"  class="comment-form" >
        
<p ><label for="author">Regular Price </label> 

<p ><label for="author">Average Unit Cost </label>
    
<p ><label for="author">Order Cost </label> 
<input  type="name" id="CPolicyID"  onchange="btn()"  size="40" aria-required="true" name="CPolicyID" required placeholder="Enter the Order cost"></p>

 
  
<br>
<br>
<br>
<p ><label for="author">Sub Total</label></p>
<br>
<p ><label for="author">Discount % </label></p>
    <br>
<p ><label for="author">Total</label> </p>
    </aside>

</div><!-- #secondary.widget-area -->		</div>
	</div>

	</main><!-- main -->
        <%@include file="footer.jsp" %>
</div><!-- #page -->



</body></html>

