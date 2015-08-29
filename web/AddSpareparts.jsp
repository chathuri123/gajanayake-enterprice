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
<% if(session.getAttribute("noti").toString()== "yes")
{
    %><%="<body class='page page-id-39 page-template-default no-fittext basic' onload='JavaScript:noti()'>"%><%
}
else
{
    %><%="<body class='page page-id-39 page-template-default no-fittext basic'>"%><% 
}
session.setAttribute("noti","No");
%>
	<div id="page">

		<header id="header">
			<%@include file="header.jsp" %>
<!-- #site-navigation -->

			 <div class="title-card-wrapper">
               
			</div>

		</header>
<form method="POST"    class="comment-form" onsubmit='JavaScript:xmlhttpPost("success")'>
   

		<main>
                    <br>       
             	<div class="container">
		<div class="row">

<div id="primary" class="col-md-8 pull-left hfeed">
									<!-- #post-39 -->

					
<div id="comments" class="comments-area">
<article id="post-39" class="post-39 page type-page status-publish hentry xfolkentry">
						<h1 class="entry-title">Add Spare Parts </h1>

					    <!-- .entry-content -->

					    	<footer class="clearfix">
	    	</footer><!-- .entry -->
					</article>	
	
<div id="respond" class="comment-respond">
    

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
    
    <p><label>Supplier</label><br>
         <%
            Statement stmt1 = conn.createStatement();
            ResultSet rs1 = stmt1.executeQuery("select * from user where supplier=true ");%>
       <select name="supplier" id="supplier" style="width:250px" >
        <% while(rs1.next()) {%>

        <option><%=rs1.getString("nameWithIni")%></option>
        
        <%}%> 
    
    </select>
    
        <a href="AddSupplier.jsp">Add Supplier</a>
    </p>
    
    <p><label>Bike Brand</label><br>
        <%
             Statement stmt2 = conn.createStatement();
             ResultSet rs2 = stmt2.executeQuery("select * from mbbrand"); %>
 
             <select name="bbrand" id="bbrand" style="width:250px" onchange='JavaScript:xmlhttpVPost("MbModel","bbrand","AddSparePartsValidate.jsp")'>
             <% while(rs2.next()) {%>

             <option value="<%=rs2.getString("BrandID")%>"><%=rs2.getString("Bname")%></option>
        
             <%}%>
             </select>
    
    </p>
    <p><div id="MbModel"></div>
    </p>
<p ><label>Name</label> 
<input   type="text" name="Name" size="70" aria-required="true" onblur='JavaScript:xmlhttpVPost("fname1","fname","Addcustomervalidate.jsp")' id="Name"  required placeholder="Enter the Model name"><div class="val" id="fname1"></div></p>

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
        <input type="submit"  class="submit"  value="Add"> 

       </p>     					
       
   </div><!-- #respond -->
  </div><!-- #comments .comments-area -->
 </div>
			
<div id="secondary" class="col-md-4" >

						
                                                

					    <!-- .entry-content -->
                                          
                                            
<aside id="search-2" class="widget widget_search">
    <h3 >Upload Spare Part Image  </h3>
                                            <hr> 
<div id="upload-area">
   
	<div id="preview" style="padding:10px">
		<img width="400px" height="400px" src="Images/Pisston.jpg" id="thumb">
	</div>

	
		
                <p><input type="file" size="20" id="imageUpload" ></p>
                <p class="form-submit">
		<button  type="submit">Upload</button>
                </p>

    <p style="color: red">Optional * </p>
    <hr>
</div>
</aside>
<aside id="search-2" class="widget widget_search">
              <h3 >Price and Cost </h3>
               <hr> 
<div  class="comment-form" >
        
<p ><label for="author">Sales Price</label> 
<input  type="number" id="sprice"    size="70" aria-required="true" name="sprice" required placeholder="Enter the Sales Price"></p>

<p ><label for="author">Purchase Price</label> 
<input  type="number" id="pprice"    size="70" aria-required="true" name="pprice" required placeholder="Enter the Purchase Price"></p>

<p ><label for="author">Average Unit Cost </label> 
<input  type="number" id="unitcost"    size="70" aria-required="true" name="unitcost" required placeholder="Enter Average Unit cost"></p>
</aside>
                                       
                                            
</div>
               <div id="success"></div>

</div><!-- #secondary.widget-area -->
                </div>
    
	</div>

	</main><!-- main -->
       
        </form>
        <%@include file="footer.jsp" %>
</div><!-- #page -->



</body></html>

