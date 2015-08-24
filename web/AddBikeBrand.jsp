<%-- 
    Document   : AddBikeBrand
    Created on : July 03, 2015, 7:21:36 AM
    Author     : windya yasas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="content.jsp" %>

<script>
$(document).ready(function(){

	var thumb = $('#thumb');	

	new AjaxUpload('imageUpload', {
		action: $('#newHotnessForm').attr('action'),
		name: 'image',
		onSubmit: function(file, extension) {
			$('#preview').addClass('loading');
		},
		onComplete: function(file, response) {
			thumb.load(function(){
				$('#preview').removeClass('loading');
				thumb.unbind();
			});
			thumb.attr('src', response);
		}
	});
});

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
						<h1 class="entry-title">Add Bike Brand</h1>

					    <!-- .entry-content -->

					    	<footer class="clearfix">
	    	</footer><!-- .entry -->
					</article>	
	
<div id="respond" class="comment-respond">
<form action="AddCourse1.php" method="post"  class="comment-form" >

							
<p ><label>Brand Name </label> 
<input  type="name" id="Bname"  onchange="btn()"  size="70" aria-required="true" name="Bname" required placeholder="Enter the brand name"></p>
<p ><label>Description </label> 
    <textarea  type="name" id="Bname"  onchange="btn()"  size="70" aria-required="true" name="Bname" required placeholder="Enter the Description"></textarea></p>

<p class="form-submit">
<input type="submit" class="submit" value="Add bikebrand"> 
</p>					
</form>
							</div><!-- #respond -->
			</div><!-- #comments .comments-area -->			</div>
			
				<div id="secondary" class="col-md-4" role="complementary">
                                    <article id="post-39" class="post-39 page type-page status-publish hentry xfolkentry">
						<h3>Upload Brand Logo</h3>

					    <!-- .entry-content -->

					    	<footer class="clearfix">
	    	</footer><!-- .entry -->
					</article>

<aside id="search-2" class="widget widget_search">
   
<div id="upload-area">
   
	<div id="preview">
		<img width="400px" height="400px" src="Images/suzukilogo.jpg" id="thumb">
	</div>

	<form action="/playground/ajax_upload" id="newHotnessForm">
		
                <p><input type="file" size="20" id="imageUpload" ></p>
                <p class="form-submit">
		<button  type="submit">Upload Brand Logo</button>
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
