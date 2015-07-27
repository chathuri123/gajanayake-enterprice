<%-- 
    Document   : AddSpareparts
    Created on : Jun 30, 2015, 5:46:57 PM
    Author     : Chathuri Lakmini 
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
	<div class="container">
		<div class="row">

<div id="primary" class="col-md-8 pull-right hfeed">
									<!-- #post-39 -->

					
<div id="comments" class="comments-area">
	
	
<div id="respond" class="comment-respond">
    
<form action="UpdateSpareParts1.jsp" method="post"  class="comment-form" >
<br>							
<p ><label>Item Name</label> 
<input  type="text" name="iname" onchange="btn()"  size="70" aria-required="true" id="iname" required placeholder="Enter the Item name"></p>
<p ><label>Model Number</label> 
<input  onmousemove="btn()" type="text" name="modelNo" size="70" aria-required="true" id="modelNo" required placeholder="Enter the Model number"></p>
<p ><label>Shell Number</label> 
<input  onmousemove="btn()" type="text" name="shellNo" size="70" aria-required="true" id="shellNo" required placeholder="Enter the shell number"></p>
<p><label>Purchase Rate</label> 
<input  onmousemove="btn()" type="text" name="perrate" size="70" aria-required="true" id="perrate" required placeholder="Enter the purchase rate"></p>
<p><label>Sales Rate</label> 
<input  onmousemove="btn()" type="text" name="salesrate" size="70" aria-required="true" id="salesrate" required placeholder="Enter the sales rate"></p>
<p><label>Quantity</label> 
<input  type="number"  size="70" aria-required="true" name="qty" id="qty" required placeholder="Enter the Quantity"></p>
<p><label>Description</label> 
    <textarea rows="4" aria-required="true" name="descrip" id="descrip" required placeholder="Enter the Desription"></textarea></p>
<br>
<p class="form-submit">
<input type="submit" class="submit" value="Update Item"> 
</p>
<input type="button" class="submit" value="Delete Item">
</form>
							</div><!-- #respond -->
			</div><!-- #comments .comments-area -->			</div>
			
				<div id="secondary" class="col-md-4" >
<article id="post-39" class="post-39 page type-page status-publish hentry xfolkentry">
						<h1 class="entry-title">Update Spare Parts</h1>

					    <!-- .entry-content -->

					    	<footer class="clearfix">
	    	</footer><!-- .entry -->
					</article>
<aside id="search-2" class="widget widget_search">


</aside>

</div><!-- #secondary.widget-area -->		</div>
	</div>

	</main><!-- main -->
        <%@include file="footer.jsp" %>
</div><!-- #page -->



</body></html>

