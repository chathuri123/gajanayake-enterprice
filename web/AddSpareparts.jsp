<%--
..................
    Document   : AddSpareparts
    Created on : Jun 30, 2015, 5:46:57 PM
    Author     : Chathuri Lakmini 
--%>


<%@page import="java.util.List"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="content.jsp" %>
<%@include file="DB_Connector.jsp"%>    

<script>
function xmlhttpPost(field,value) { 
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
self.xmlHttpReq.open('POST', "AddSparePartsValidate.jsp", false); 
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
var word = getquerystring(value);

word ='value='+ escape(word);
var field1='field='+ escape(field);
var the_data =field1 +'&'+ word;
self.xmlHttpReq.send(the_data); 




}

function getquerystring(value)
{ 

var word = document.getElementById(value).value;

 

return word;


} 


function updatepage(field,str){ 
document.getElementById(field).innerHTML = str; 

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

<div id="primary" class="col-md-8 pull-right hfeed">
									<!-- #post-39 -->

					
<div id="comments" class="comments-area">
<article id="post-39" class="post-39 page type-page status-publish hentry xfolkentry">
						<h1 class="entry-title">Add Spare Parts </h1>

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
 
    <select name="cat" id="cat" style="width:250px" onchange='JavaScript:xmlhttpPost("subcat","cat")'>
        <% while(rs.next()) {%>

        <option><%=rs.getString("CatName")%></option>
        
 
        <%}%>
    </select>
                
</p>

<p>
<div id="subcat"></div>
    </p>
    
    <p><label>Supplier</label><br>
         <%
            Statement stmt1 = conn.createStatement();
            ResultSet rs1 = stmt1.executeQuery("select * from user where supplier=true ");%>
     <select name="supplier" id="supplier" style="width:250px" onChange="JSGetSelectedItem()">
        <% while(rs1.next()) {%>

        <option><%=rs1.getString("nameWithIni")%></option>%>
        
        <%}%> 
    
    </select>
    
        <a href="AddSuplier.jsp">Add Supplier</a>
    </p>
    
    <p><label>Bike Brand</label><br>
        <%
             Statement stmt2 = conn.createStatement();
             ResultSet rs2 = stmt2.executeQuery("select * from mbbrand"); %>
 
             <select name="bbrand" id="bbrand" style="width:250px" onChange="JSGetSelectedItem()">
             <% while(rs2.next()) {%>

             <option><%=rs2.getString("Bname")%></option>%>
        
        <%}%>
    </select>
    
    </p>
    <p><label>Bike Model<br>
     <%
             Statement stmt3 = conn.createStatement();
             ResultSet rs3 = stmt3.executeQuery("select * from mbmodel"); %>
 
             <select name="bmodel" id="bmodel" style="width:250px" onChange="JSGetSelectedItem()">
             <% while(rs3.next()) {%>

             <option><%=rs3.getString("Name")%></option>%>
        
        <%}%>
    </select>
    </p>
<p ><label>Name</label> 
<input   type="text" name="Name" size="70" aria-required="true" id="Name" required placeholder="Enter the Model number"></p>

<p ><label>Model Number</label> 
<input   type="text" name="modelNo" size="70" aria-required="true" id="modelNo" required placeholder="Enter the Model number"></p>

<p ><label>Shell Number</label> 
<input   type="text" name="shellNo" size="70" aria-required="true" id="shellNo" required placeholder="Enter the shell number"></p>

<p><label>Quantity</label> 
<input  type="number" size="70" aria-required="true" name="qty" id="qty" required placeholder="Enter the Quantity"></p>


<p><label>Description</label> 
    <textarea rows="4" aria-required="true" name="descrip" id="descrip" required placeholder="Enter the Desription"></textarea></p>
<br>
<p class="form-submit">
<input type="submit" class="submit" value="Add"> 
</p>					

        
                
                
							</div><!-- #respond -->
			</div><!-- #comments .comments-area -->			</div>
			
				<div id="secondary" class="col-md-4" >

						
                                                

					    <!-- .entry-content -->
                                          
                                            
<aside id="search-2" class="widget widget_search">
    <h3 >Upload Spare Part Image  </h3>
                                            <hr> 
<div id="upload-area">
   
	<div id="preview" style="padding:10px">
		<img width="400px" height="400px" src="Images/Pisston.jpg" id="thumb">
	</div>

	<form action="/playground/ajax_upload" id="newHotnessForm">
		
                <p><input type="file" size="20" id="imageUpload" ></p>
                <p class="form-submit">
		<button  type="submit">Upload</button>
                </p>
	</form>
    <p style="color: red">Optional * </p>
    <hr>
</div>
</aside>

                                            <aside id="search-2" class="widget widget_search">
                                             <h3 >Price and Cost </h3>
                                            <hr> 
                                            <form action="AddSpareParts1.jsp" method="post"  class="comment-form" >
        
<p ><label for="author">Sales Price</label> 
<input  type="number" id="sprice"  onchange="btn()"  size="40" aria-required="true" name="sprice" required placeholder="Enter the Slaes Price"></p>

<p ><label for="author">Purchase Price</label> 
<input  type="number" id="pprice"  onchange="btn()"  size="40" aria-required="true" name="pprice" required placeholder="Enter the Purchase Price"></p>

<p ><label for="author">Average Unit Cost </label> 
<input  type="number" id="unitcost"  onchange="btn()"  size="40" aria-required="true" name="unitcost" required placeholder="Enter Average Unit cost"></p>
                                     </aside>
        </form>

</div><!-- #secondary.widget-area -->		</div>
	</div>

	</main><!-- main -->
        <%@include file="footer.jsp" %>
</div><!-- #page -->



</body></html>

