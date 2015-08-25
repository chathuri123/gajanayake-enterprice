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
<script src="validateScript.js"></script>
<script>
function xmlhttpPost(field)
{ 
var xmlHttpReq = false; 
var self = this; 

// Mozilla/Safari 
if (window.XMLHttpRequest) { 
self.xmlHttpReq = new XMLHttpRequest(); 
} 
// IE 
else if (window.ActiveXObject) { 
self.xmlHttpReq = new ActiveXObject("Microsoft.XMLHTTP"); 
} 
self.xmlHttpReq.open('POST', "AddSpareParts1.jsp", false); 
self.xmlHttpReq.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded'); 
self.xmlHttpReq.onreadystatechange = function()
{
    
    if (self.xmlHttpReq.readyState != 4 && self.xmlHttpReq.status == 200)
 {
     document.getElementById(field).innerHTML = "Validating..";
 }
  else if (self.xmlHttpReq.readyState == 4)
  { 
     updatepage(field,self.xmlHttpReq.responseText); 
  } 
}
var word1 ='SubCat='+ escape( document.getElementById('SubCat').value);
var word2 ='supplier='+ escape( document.getElementById('supplier').value);
var word3 ='bmodel='+ escape( document.getElementById('bmodel').value);
var word4 ='Name='+ escape( document.getElementById('Name').value);
var word5 ='modelNo='+ escape( document.getElementById('modelNo').value);
var word6 ='shellNo='+ escape( document.getElementById('shellNo').value);
var word7 ='descrip='+ escape( document.getElementById('descrip').value);
var word8 ='qty='+ escape( document.getElementById('qty').value);
var word9 ='pprice='+ escape( document.getElementById('pprice').value);
var word10 ='sprice='+ escape( document.getElementById('sprice').value);
var word11 ='unitcost='+ escape( document.getElementById('unitcost').value);



var the_data =word1 +'&'+ word2+'&'+ word3+'&'+ word4+'&'+ word5+'&'+ word6+'&'+ word7+'&'+ word8+'&'+ word9+'&'+ word10+'&'+ word11;
self.xmlHttpReq.send(the_data); 





}




function updatepage(field,str){ 
document.getElementById(field).innerHTML = str;
alert('Successfuly Added');


} 

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

<div id="primary" class="col-md-8 pull-left hfeed">
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
 ResultSet rs = stmt.executeQuery("select CatName from category");%>
 
    <select name="cat" id="cat" style="width:250px" onchange='JavaScript:xmlhttpVPost("subcat","cat","AddSparePartsValidate.jsp")'>
        <% while(rs.next()) {%>

        <option><%=rs.getString("CatName")%></option>
        
 
        <%}%>
    </select>
                
</p>

<p>
<div id="subcat"></div>
</p>
    
<p><label>Customer</label><br>
         <%
            Statement stmt1 = conn.createStatement();
            ResultSet rs1 = stmt1.executeQuery("select * from user where Customer=true ");%>
     <select name="supplier" id="supplier" style="width:250px" >
        <% while(rs1.next()) {%>

        <option><%=rs1.getString("nameWithIni")%></option>
        
        <%}%> 
    
    </select>
    
        <a href="AddCustomer.jsp">Add Customer</a>
</p>
  
<p><label>Bike Brand</label><br>
        <%
             Statement stmt2 = conn.createStatement();
             ResultSet rs2 = stmt2.executeQuery("select * from mbbrand"); %>
 
             <select name="bbrand" id="bbrand" style="width:250px" onchange='JavaScript:xmlhttpVPost("MbModel","bbrand","AddSparePartsValidate.jsp")'>
             <% while(rs2.next()) {%>

             <option><%=rs2.getString("Bname")%></option>
        
               <%}%>
             </select>
    
    </p>
    <p><div id="MbModel"></div>
</p>

<p ><label>Model Number</label> 
    <%
             
             String name=request.getParameter("SubCategory");
             out.println(name);
             
             Statement stmt3 = conn.createStatement();
             ResultSet rs3 = stmt3.executeQuery("select ModelID from spareparts");
            
             while(rs3.next())
             {%>
                 
             <%=rs3.getString("ModelID")%>
                 
             <%}%>

             
            
<p ><label>Shell Number</label>
    <%
              
    %>


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
        
<p><label for="author">Regular Price </label> 

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

