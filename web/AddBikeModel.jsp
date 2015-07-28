<%-- 
    Document   : AddBikeModel
    Created on : Jul 3, 2015, 8:23:25 PM
    Author     : Kusal_Vitharanage
--%>

<%-- 
    Document   : AddCustomer
    Created on : Jun 30, 2015, 7:21:36 AM
    Author     : windya yasas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="content.jsp" %>

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
<form action="AddCourse1.php" method="post"  class="comment-form" >

							
<p ><label>Model No. </label> 
<input  type="name" id="Aname" name="Aname"  onchange="btn()"  size="70" aria-required="true" required placeholder="Enter the model no."></p>

<p ><label>Country </label> 
<input  type="name" id="Bname" name="Bname"  size="70" aria-required="true" required placeholder="Enter the country"></p>

<p ><label>Transmission Type </label><br>
    <select name="Cname" id="Cname" style="width:150px" >
        <option value="manual">Manual</option>
        <option value="auto">Auto</option>
    </select>
</p>

<p><label>Meter Type</label> <br>
    <select name="Dname" id="Dname" style="width:150px">  
        <option value="digital">Digital</option>
        <option value="analog">Analog</option>
    </select>
</p>

<p ><label>Bike Type</label> <br>
    <select id="Ename" name="Ename" style="width:150px" >
        <option value="standard">Standard</option>
        <option value="cruiser">Cruiser</option>
        <option value="sport bike">Sport Bike</option>
        <option value="touring">Touring</option>
        <option value="scooters">Scooters</option>
        <option value="underbones">Underbones</option>
        <option value="mopeds">Mopeds</option>
        <option value="off road">Off Road</option>
    </select>
</p>

<p ><label>Engine Type </label>    
<input  type="name" id="Fname" name="Fname"  size="70" aria-required="true" required placeholder="Enter the engine type"></p>

<p ><label>Displacement </label> 
<input  type="name" id="Gname" name="Gname"  size="70" aria-required="true" required placeholder="Enter the displacement"></p>

<p ><label>Max Power </label> 
<input  type="name" id="Hname" name="Hname"  size="70" aria-required="true" required placeholder="Enter the max power"></p>

<p ><label>Max Toque </label> 
<input  type="name" id="Iname" name="Iname"  size="70" aria-required="true" required placeholder="Enter the max toque"></p>

<p ><label>Starter System </label> 
     <select id="Jname" name="Jname" >
        <option value="electric">Electric</option>
        <option value="kick start">Kick Start</option>
     </select>
</p>
        
        <p ><label>Suspension </label> </p>
        <p <label>Front Suspension</label>
<input  type="name" id="Kname" name="Kname"  size="70" aria-required="true" required placeholder="Enter the suspension type"></p>
        <p <label>Rear Suspension</label>
<input  type="name" id="Lname" name="Lname"  size="70" aria-required="true" required placeholder="Enter the suspension type"></p>
        
 <p ><label>Tire Size </label> </p>
        <p <label>Front Tire</label>
<input  type="name" id="Kname" name="Kname"  size="70" aria-required="true" required placeholder="Enter the tire size"></p>
        <p <label>Rear Tire</label>
<input  type="name" id="Lname" name="Lname"  size="70" aria-required="true" required placeholder="Enter the tire size"></p>
        
         <p ><label>Brake System </label> </p>
        <p <label>Front Brake</label>
<input  type="name" id="Kname" name="Kname"  size="70" aria-required="true" required placeholder="Enter the brake system type"></p>
        <p <label>Rear Brake</label>
<input  type="name" id="Lname" name="Lname"  size="70" aria-required="true" required placeholder="Enter the brake system type"></p>
        
         <p ><label>Dimensions </label> </p>
        <p <label>Length</label>
<input  type="name" id="Kname" name="Kname"  size="70" aria-required="true" required placeholder="Enter the length"></p>
        <p <label>Width</label>
<input  type="name" id="Kname" name="Kname"  size="70" aria-required="true" required placeholder="Enter the width"></p>
        <p <label>Height</label>
<input  type="name" id="Kname" name="Kname"  size="70" aria-required="true" required placeholder="Enter the height"></p>
        <p <label>Wheelbase</label>
<input  type="name" id="Kname" name="Kname"  size="70" aria-required="true" required placeholder="Enter the wheel base"></p>
        <p <label>Ground Clearance</label>
<input  type="name" id="Kname" name="Kname"  size="70" aria-required="true" required placeholder="Enter ground clearance"></p>
        <p <label>Seat Height</label>
<input  type="name" id="Kname" name="Kname"  size="70" aria-required="true" required placeholder="Enter seat height"></p>
        
        <p <label>Kerb Weight</label>
<input  type="name" id="Lname" name="Lname"  size="70" aria-required="true" required placeholder="Enter the kerb weight"></p>
        
        <p ><label>Electrical Specifications </label> </p>
        <p <label>Battery</label>
<input  type="name" id="Kname" name="Kname"  size="70" aria-required="true" required placeholder="Enter the battery type"></p>
        <p <label>Head Lamp</label>
<input  type="name" id="Lname" name="Lname"  size="70" aria-required="true" required placeholder="Enter the head lamp type"></p>
        
        <p ><label>Fuel Tank </label> </p>
        <p <label>Fuel Tank Capacity</label>
<input  type="name" id="Kname" name="Kname"  size="70" aria-required="true" required placeholder="Enter the capacity"></p>
        <p <label>Under Seat Space</label>
<input  type="name" id="Lname" name="Lname"  size="70" aria-required="true" required placeholder="Enter the under seat space"></p>
        
        <p ><label>Valve System </label> 
<input  type="name" id="Mname" name="Mname"  onchange="btn()"  size="70" aria-required="true" required placeholder="Enter the valve system type."></p>
        
        <p ><label>Bore & Stroke </label> 
<input  type="name" id="Nname" name="Nname"  onchange="btn()"  size="70" aria-required="true" required placeholder="Enter the bore & stroke"></p>
        
<p class="form-submit">
<input type="submit" class="submit" value="Add Bike Model"> 
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

