<%-- 
    Document   : AddBikeModel
    Created on : Jul 3, 2015, 8:23:25 PM
    Author     : Kusal_Vitharanage
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="content.jsp" %>


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
self.xmlHttpReq.open('POST', "AddBikeModel1.jsp", false); 
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
var word1 ='brand='+ escape( document.getElementById('brand').value);
var word2 ='modelno='+ escape( document.getElementById('modelno').value);
var word3 ='country='+ escape( document.getElementById('country').value);
var word4 ='ttype='+ escape( document.getElementById('ttype').value);

var word5 ='mtype='+ escape( document.getElementById('mtype').value);
var word6 ='btype='+ escape( document.getElementById('btype').value);
var word7 ='etype='+ escape( document.getElementById('etype').value);
var word8 ='displace='+ escape( document.getElementById('displace').value);

var word9 ='maxpower='+ escape( document.getElementById('maxpower').value);
var word10 ='maxtoque='+ escape( document.getElementById('maxtoque').value);
var word11 ='system='+ escape( document.getElementById('system').value);

var word12 ='fsuspension='+ escape( document.getElementById('fsuspension').value);
var word13 ='rsuspension='+ escape( document.getElementById('rsuspension').value);
var word14 ='ftire='+ escape( document.getElementById('ftire').value);
var word15 ='rtire='+ escape( document.getElementById('rtire').value);

var word16 ='fbrake='+ escape( document.getElementById('fbrake').value);
var word17 ='rbrake='+ escape( document.getElementById('rbrake').value);
var word18 ='length='+ escape( document.getElementById('length').value);

var word19 ='width='+ escape( document.getElementById('width').value);
var word20 ='hieght='+ escape( document.getElementById('hieght').value);
var word21 ='wheel='+ escape( document.getElementById('wheel').value);

var word22 ='ground='+ escape( document.getElementById('ground').value);
var word23 ='seathight='+ escape( document.getElementById('seathight').value);
var word24 ='kerb='+ escape( document.getElementById('kerb').value);

var word25 ='battry='+ escape( document.getElementById('battry').value);
var word26 ='hlamp='+ escape( document.getElementById('hlamp').value);
var word27 ='tank='+ escape( document.getElementById('tank').value);

var word28 ='seatspace='+ escape( document.getElementById('seatspace').value);
var word29 ='valve='+ escape( document.getElementById('valve').value);
var word30 ='bs='+ escape( document.getElementById('bs').value);

var word31 ='name1='+ escape( document.getElementById('name1').value);
var word32 ='year='+ escape( document.getElementById('year').value);
var word33 ='price='+ escape( document.getElementById('price').value);








var the_data =word1 +'&'+ word2+'&'+ word3+'&'+ word4+'&'+ word5+'&'+ word6+'&'+ word7+'&'+ word8+'&'+ word9+'&'+ word10+'&'+ word11 +'&'+ word12+'&'+ word13+'&'+ word14+'&'+ word15+'&'+ word16+'&'+
              word17+'&'+ word18+'&'+ word19 +'&'+ word20+'&'+ word21+'&'+ word22+'&'+ word23+'&'+ word24+'&'+ word25 + '&'+ word26+'&'+ word27+'&'+ word28+'&'+ word29+'&'+word30+'&'+ word31+ '&'+ word32+'&'+word33;
self.xmlHttpReq.send(the_data); 





}




function updatepage(field,str){ 
document.getElementById(field).innerHTML = str;
alert('Successfuly Added');


} 

</script>

</head>
<body class="page page-id-39 page-template-default no-fittext basic">
 <%@include file="DB_Connector.jsp"%>
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
						<h1 class="entry-title">Add Bike Model</h1>

					    <!-- .entry-content -->

					    	<footer class="clearfix">
	    	</footer><!-- .entry -->
					</article>	
<div id="respond" class="comment-respond">
<form class="comment-form" >

    <p><label>Brand</label><br>
    
     <%
            Statement stmt1 =conn.createStatement();
            ResultSet rs1 = stmt1.executeQuery("select * from mbbrand");%>
       
            <select name="brand" id="brand" style="width:250px" >
            <% while(rs1.next()) {%>

            <option><%=rs1.getString("Bname")%></option>
        
     <%}%> 
            </select>
</p>	

<p><label>Model No</label> 
<input  type="text" id="modelno" name="modelno"  onchange="btn()"  size="70" aria-required="true" required placeholder="Enter the model no"></p>

<p><label>Name</label> 
<input  type="text" id="name1" name="name1"  onchange="btn()"  size="70" aria-required="true" required placeholder="Enter the Name"></p>

<p><label>Year</label> 
<input  type="text" id="year" name="year"  onchange="btn()"  size="70" aria-required="true" required placeholder="Enter the Year"></p>

<p ><label>Price</label> 
<input  type="number" id="price" name="price"  size="70" aria-required="true" required placeholder="Enter the country"></p>


<p ><label>Country </label> 
<input  type="text" id="country" name="country"  size="70" aria-required="true" required placeholder="Enter the country"></p>

<p ><label>Transmission Type </label><br>
 <%
            Statement stmt2 =conn.createStatement();
            ResultSet rs2 = stmt2.executeQuery("select * from mbmodel");%>
       
            <select name="ttype" id="ttype" style="width:250px" >
            <% while(rs2.next()) {%>

            <option><%=rs2.getString("TransmissionType")%></option>
        
     <%}%> 
            </select>   
</p>

<p><label>Meter Type</label> <br>
 <%
            Statement stmt3 =conn.createStatement();
            ResultSet rs3 = stmt3.executeQuery("select * from mbmodel");%>
       
            <select name="mtype" id="mtype" style="width:250px" >
            <% while(rs3.next()) {%>

            <option><%=rs3.getString("MeterType")%></option>
        
     <%}%> 
            </select>    
</p>

<p ><label>Bike Type</label> <br>
    <%
            Statement stmt4 =conn.createStatement();
            ResultSet rs4 = stmt4.executeQuery("select * from mbmodel");%>
       
            <select name="btype" id="btype" style="width:250px" >
            <% while(rs4.next()) {%>

            <option><%=rs4.getString("BikeType")%></option>
        
     <%}%> 
            </select>
</p>

<p ><label>Engine Type </label>    
<input  type="text" id="etype" name="etype"  size="70" aria-required="true" required placeholder="Enter the engine type"></p>

<p ><label>Displacement </label> 
<input  type="text" id="displace" name="displace"  size="70" aria-required="true" required placeholder="Enter the displacement"></p>

<p ><label>Max Power </label> 
<input  type="text" id="maxpower" name="maxpower"  size="70" aria-required="true" required placeholder="Enter the max power"></p>

<p ><label>Max Toque </label> 
<input  type="text" id="maxtoque" name="maxtoque"  size="70" aria-required="true" required placeholder="Enter the max toque"></p>

<p ><label>Starter System </label>
    <br>
    <%
            Statement stmt5 =conn.createStatement();
            ResultSet rs5 = stmt5.executeQuery("select * from mbmodel");%>
       
            <select name="system" id="system" style="width:250px" >
            <% while(rs5.next()) {%>

            <option><%=rs5.getString("StarterSystem")%></option>
        
     <%}%> 
            </select>
</p>
        
<p ><label>Suspension </label> </p>
<p><label>Front Suspension</label></p>
    
<input  type="text" id="fsuspension" name="fsuspension"  size="70" aria-required="true" required placeholder="Enter the suspension type"></p>

<p><label>Rear Suspension</label>
<input  type="text" id="rsuspension" name="rsuspension"  size="70" aria-required="true" required placeholder="Enter the suspension type"></p>
  

<p ><label>Tire Size </label></p>
<p><label>Front Tire</label>
<input  type="number" id="ftire" name="ftire"  size="70" aria-required="true" required placeholder="Enter the tire size"></p>


<p><label>Rear Tire</label>
<input  type="number" id="rtire" name="rtire"  size="70" aria-required="true" required placeholder="Enter the tire size"></p>
        
<p><label>Brake System </label></p>
<p><label>Front Brake</label>
<input  type="text" id="fbrake" name="fbrake"  size="70" aria-required="true" required placeholder="Enter the brake system type"></p>
<p><label>Rear Brake</label>
<input  type="text" id="rbrake" name="rbrake"  size="70" aria-required="true" required placeholder="Enter the brake system type"></p>
        
<p><label>Dimensions </label> </p>

<p><label>Length</label>
<input  type="number" id="length" name="length"  size="70" aria-required="true" required placeholder="Enter the length"></p>
<p><label>Width</label>
<input  type="number" id="width" name="width"  size="70" aria-required="true" required placeholder="Enter the width"></p>
<p><label>Height</label>
<input  type="number" id="hieght" name="hieght"  size="70" aria-required="true" required placeholder="Enter the height"></p>
<p><label>Wheelbase</label>
<input  type="number" id="wheel" name="wheel"  size="70" aria-required="true" required placeholder="Enter the wheel base"></p>
<p><label>Ground Clearance</label>
<input  type="text" id="ground" name="ground"  size="70" aria-required="true" required placeholder="Enter ground clearance"></p>
<p><label>Seat Height</label>
<input  type="number" id="seathight" name="seathight"  size="70" aria-required="true" required placeholder="Enter seat height"></p>
        
<p><label>Curb Weight</label>
<input  type="number" id="kerb" name="kerb"  size="70" aria-required="true" required placeholder="Enter the kerb weight"></p>
        
<p><label>Electrical Specifications </label> </p>
<p><label>Battery</label>
<input  type="text" id="battry" name="battry"  size="70" aria-required="true" required placeholder="Enter the battery type"></p>
<p><label>Head Lamp</label>
<input  type="text" id="hlamp" name="hlamp"  size="70" aria-required="true" required placeholder="Enter the head lamp type"></p>
        
<p><label>Fuel Tank </label> </p>

<p><label>Fuel Tank Capacity</label>
<input type="number" id="tank" name="tank"  size="70" aria-required="true" required placeholder="Enter the capacity"></p>

<p><label>Under Seat Space</label>
<input  type="number" id="seatspace" name="seatspace"  size="70" aria-required="true" required placeholder="Enter the under seat space"></p>
        
<p><label>Valve System </label> 
<input  type="text" id="valve" name="valve"  onchange="btn()"  size="70" aria-required="true" required placeholder="Enter the valve system type."></p>
        
<p><label>Bore & Stroke </label> 
<input  type="text" id="bs" name="bs"  onchange="btn()"  size="70" aria-required="true" required placeholder="Enter the bore & stroke"></p>
        
<p class="form-submit">
        <input type="submit" onclick='JavaScript:xmlhttpPost("success")' class="submit"  value="Add"> 

 </p>  
					
</form>
	
							</div><!-- #respond -->
			</div><!-- #comments .comments-area -->			</div>
			
				<div id="secondary" class="col-md-4" role="complementary">
                                    <article id="post-39" class="post-39 page type-page status-publish hentry xfolkentry">
						<h3>Upload Bike Picture</h3>

					    <!-- .entry-content -->

					    	<footer class="clearfix">
	    	</footer><!-- .entry -->
					</article>


<aside id="search-2" class="widget widget_search">
<div id="upload-area">
   
	<div id="preview" style="padding:10px">
		<img width="400px" height="400px" src="Images/Suzuki-Gixxer.jpg" id="thumb">
	</div>

	<form action="/playground/ajax_upload" id="newHotnessForm">
		
                <p><input type="file" size="20" id="imageUpload" ></p>
                <p class="form-submit">
		<button  type="submit">Upload</button>
                </p>
	</form>
</div>

</aside>

</div><!-- #secondary.widget-area -->		</div>
	</div>

	</main><!-- main -->
        <%@include file="footer.jsp" %>
</div><!-- #page -->



</body></html>

