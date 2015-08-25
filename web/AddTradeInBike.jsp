<%-- 
    Document   : AddTradeInBike
    Created on : Jul 29, 2015, 6:54:51 AM
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
                    <form action="AddTradein1.php" method="post"  class="comment-form" >
                    <br>
	<div class="container">
		<div class="row">

<div id="primary" class="col-md-8 pull-left hfeed">
									<!-- #post-39 -->

					
<div id="comments" class="comments-area">
	
<article id="post-39" class="post-39 page type-page status-publish hentry xfolkentry">
						<h1 class="entry-title">Add Trade in Bike</h1>

					    <!-- .entry-content -->

					    	<footer class="clearfix">
	    	</footer><!-- .entry -->
					</article>	
<div id="respond" class="comment-respond">
<form action="AddTradein1.php" method="post"  class="comment-form" >

							

<p ><label>Customer </label><br>
        
<input  type="name" id="Fname" name="Fname"  size="70" aria-required="true" required placeholder="Search Customer Using NIC/ID/Name"></p>
<p><a href="AddCustomer.jsp" style="padding:10px">Add customer</a>
</p>
<p><label>Bike Brand</label><br>
    <select name="subcat" id="subcat" style="width:150px">
         <option value="2">Suzuki</option>
        <option value="">TVS</option>
        <option value="">Honda</option>
    </select><a href="AddBikeBrand.jsp" style="padding:10px">Add Brand</a>
    </p>
    <p><label>Bike Model</label><br>
    <select name="subcat" id="subcat" style="width:150px">
         <option value="2">Gixxer</option>
        <option value="">GS125</option>
        <option value="">GN125</option>
    </select><a href="AddBikeModel.jsp" style="padding:10px">Add Model</a>
    </p>
<p ><label>Engine No </label>    
<input  type="name" id="Fname" name="Fname"  size="70" aria-required="true" required placeholder="Enter the engine No"></p>

<p ><label>Chassis No </label> 
<input  type="name" id="Gname" name="Gname"  size="70" aria-required="true" required placeholder="Enter the chassis no"></p>

<p ><label>Registered Year </label> 
<input  type="number" id="Hname" name="Hname"  size="70" aria-required="true" required placeholder="Enter the max power"></p>

<p ><label>Body Condition </label> 
    <input  type="number" id="Iname" name="Iname"  size="70" aria-required="true" required placeholder="100%" ></p>
<p ><label>Engine Condition </label> 
    <input  type="number" id="Iname" name="Iname"  size="70" aria-required="true" required placeholder="100%" ></p>
<p ><label>Tire Condition </label> 
    <input  type="number" id="Iname" name="Iname"  size="70" aria-required="true" required placeholder="100%" ></p>
<p ><label>Over Role Condition </label> 
    <input  type="number" id="Iname" name="Iname"  size="70" aria-required="true" required placeholder="100%" ></p>
<p><label>Description</label> 
    <textarea rows="4" aria-required="true" name="descrip" id="descrip" required placeholder="Enter the Desription"></textarea></p>



<p class="form-submit">
<input type="submit" class="submit" value="Send for Admin Approval"> 
</p>					

							</div><!-- #respond -->
			</div><!-- #comments .comments-area -->			</div>
			
				<div id="secondary" class="col-md-4" role="complementary">
                                    <article id="post-39" class="post-39 page type-page status-publish hentry xfolkentry">
						<h3>Upload CR paper</h3>

					    <!-- .entry-content -->

					    	<footer class="clearfix">
	    	</footer><!-- .entry -->
					</article>


<aside id="search-2" class="widget widget_search">
<div id="upload-area">
   
	<div id="preview" style="padding:10px">
		<img width="400px" height="400px" src="Images/doc.jpg" id="thumb">
	</div>

	
		
                <p><input type="file" size="20" id="imageUpload" ></p>
                <p class="form-submit">
		<button  type="submit">Upload</button>
                </p>
	
</div>

</aside>

</div><!-- #secondary.widget-area -->		</div>
	</div>
</form>
	</main><!-- main -->
        <%@include file="footer.jsp" %>
</div><!-- #page -->



</body></html>

