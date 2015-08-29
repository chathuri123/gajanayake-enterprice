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

<script src="validateScript.js"></script>
<script>
function xmlhttpPost(field,id)
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
self.xmlHttpReq.open('POST', "UpdateSpareParts.jsp", false); 
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
var word1 ='subcat='+ escape( document.getElementById('subcat').value);
var word2 ='supplier='+ escape( document.getElementById('supplier').value);
//var word3 ='bmodel='+ escape( document.getElementById('bmodel').value);--co
var word4 ='Name='+ escape( document.getElementById('Name').value);  
var word5 ='modelNo='+ escape( document.getElementById('modelNo').value);
var word6 ='shellNo='+ escape( document.getElementById('shellNo').value);
var word7 ='descrip='+ escape( document.getElementById('descrip').value);
var word8 ='qty='+ escape( document.getElementById('qty').value);
var word9 ='pprice='+ escape( document.getElementById('pprice').value);
var word10 ='sprice='+ escape( document.getElementById('sprice').value);
var word11 ='unitcost='+ escape( document.getElementById('unitcost').value);
var word12 ='SparePartID='+ escape(id);




var the_data =word1 +'&'+ word2+'&'+ word4+'&'+ word5+'&'+ word6+'&'+ word7+'&'+ word8+'&'+ word9+'&'+ word10+'&'+ word11+'&'+ word12;
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
    %><%="<body class='page page-id-39 page-template-default no-fittext basic' onload='JavaScript:notu()'>"%><%
}
else
{
    %><%="<body class='page page-id-39 page-template-default no-fittext basic'>"%><% 
}
session.setAttribute("noti","No");
%>    
 <%@include file="DB_Connector.jsp"%>    
	<div id="page">

		<header id="header">
			<%@include file="header.jsp" %>
<!-- #site-navigation -->

			 <div class="title-card-wrapper">
               
			</div>

		</header>

		<main>
	<div class="container">
		<div class="row">

<div id="primary" class="col-md-8 pull-left hfeed">
									<!-- #post-39 -->

					
<div id="comments" class="comments-area">
	
	
<div id="respond" class="comment-respond">
    <article id="post-39" class="post-39 page type-page status-publish hentry xfolkentry">
					 <footer class="clearfix">
	    	
    <h1 class="entry-title">Edit Product Details</h1>
    </footer><!-- .entry -->	

					    <!-- .entry-content -->

					    	
					</article>
   



<%  

 String ID=request.getParameter("spID");
 
 Statement stmt = conn.createStatement();
 ResultSet rs = stmt.executeQuery("select * from spareparts where SparePartID='"+ID+"'");
 while(rs.next()) {%>
 
 <%
   String catId=rs.getString("SubCategory");
  
   
   String spareid=rs.getString("SparePartID");
 
 %>

<form method="post"  class="comment-form" action="UpdateSpareParts.jsp?SparePartID=<%=ID%>">
<br>							
<p ><label>Spare Part ID</label> 
    <%=" : "+rs.getString("SparePartID")%>

<p ><label>Name</label> 
    <input type="text" name="Name" size="70" aria-required="true" id="Name" value="<%=rs.getString("Name")%>"></p>

<p ><label>Sub Category</label> </p>
    <%
        Statement stmt1 = conn.createStatement();
        
        ResultSet rs1 = stmt1.executeQuery("select * from subcategory where SubCatID='"+catId+"'");%>
 
        <p>   
            
        <select name="subcat" id="subcat" style="width:250px">
            
        <% while(rs1.next()) {%>

        <option value="<%=rs1.getString("SubCatID")%>"><%=rs1.getString("SubCatName")%></option>
        
        <%}%>
        
        
        <% 
        Statement stmt2 = conn.createStatement();
        ResultSet rs2 = stmt2.executeQuery("select * from subcategory" );%>
   
    
        <% while(rs2.next()) {%>

        <option value="<%=rs2.getString("SubCatID")%>"><%=rs2.getString("SubCatName")%></option>
        
        <%}%>
    
    </select>
                
</p>

<p><label>Supplier</label></p>

 
       <%
            Statement stmt4 = conn.createStatement();
            ResultSet rs4 = stmt4.executeQuery("select * from user u,spareparts s where u.Supplier=1 AND s.SupplierID='"+ID+"'");%>

            <p>
           <select name="supplier" id="supplier" style="width:250px" >
           <% while(rs4.next()) {%>

           <option value="<%=rs4.getString("userID")%>"><%=rs4.getString("nameWithIni")%></option>
        
        <%}%> 
        <% 
           Statement stmt7=conn.createStatement();
           ResultSet rs7=stmt7.executeQuery("Select * from user where supplier=1");
        %>
        <% while(rs7.next())
        {%>
         <option value="<%=rs7.getString("userID")%>"><%=rs7.getString("nameWithIni")%></option>"%>
        
        <%}%>
    
</select>
                     
</p>

<p><label>Bike Model</label><br>
         <%
             Statement stmt5 = conn.createStatement();
           
             ResultSet rs5 = stmt5.executeQuery("select * from mbmodel m,spareparts s where s.BModelID=m.ModelID AND s.SparePartID='"+spareid+"'");
             
         %>
<p>
    
             <select name="modelNo" id="modelNo" style="width:250px" onchange='JavaScript:xmlhttpVPost("MbModel","modelNo","AddSparePartsValidate.jsp")'>
             
             <% while(rs5.next()) {%>

             <option value="<%=rs5.getString("ModelID")%>"><%=rs5.getString("m.Name")%></option>
            
             <%}%>
             <% 
                Statement stmt6 = conn.createStatement();
                ResultSet rs6 = stmt6.executeQuery("select * from mbmodel" );%>
   
    
                <% while(rs6.next()) {%>

                <option value="<%=rs6.getString("ModelID")%>"><%=rs6.getString("Name")%></option>"%>
        
                <%}%>
    
             </select>
    
    </p>

<p><label>Shell Number</label> 
    <input type="text" name="shellNo" size="70" aria-required="true" id="shellNo" value="<%=rs.getString("ShellNo")%>"></p>

<p><label>Model Number</label> 
 <%=" : "+rs.getString("ModelID")%>
 
<p><label>Quantity</label> 
<input  type="number" size="70" aria-required="true" name="qty" id="qty" value="<%=rs.getString("Quantity")%>"></p>

<p><label>Description</label> 
    <textarea rows="4" aria-required="true" name="descrip" id="descrip"><%=rs.getString("Description")%></textarea></p>

<br>

<p class="form-submit">
    <input type="submit"  class="submit"  value="Update"> 

</p> 


 
						</div><!-- #respond -->
			</div><!-- #comments .comments-area -->			</div>
			
				<div id="secondary" class="col-md-4" >

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
<input  type="number" id="sprice" size="70" aria-required="true" name="sprice" value="<%=rs.getString("SalePrice")%>"></p>

<p ><label for="author">Purchase Price</label> 
<input  type="number" id="pprice" size="70" aria-required="true" name="pprice" value="<%=rs.getString("PurchasePrice")%>"></p>

<p ><label for="author">Average Unit Cost </label> 
<input  type="number" id="unitcost" size="70" aria-required="true" name="unitcost" value="<%=rs.getString("unitcost")%>"></p>
</aside>
                                       
   <%}%>                                         
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

