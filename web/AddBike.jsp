<%-- 
    Document   : AddBikeBrand
    Created on : July 03, 2015, 7:21:36 AM
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
	
	
<div id="respond" class="comment-respond">
<form action="AddCourse1.php" method="post"  class="comment-form" >

    <p ><label>Select Brand </label><br>
    <select name="Dname" id="Dname" style="width:150px" >
        <option value="1">1</option>
        <option value="2">2</option>
    </select>
</p>

<p ><label>Select Model </label><br>
    <select name="Ename" id="Ename" style="width:150px" >
        <option value="1">1</option>
        <option value="2">2</option>
    </select>
</p>
							
<p ><label>Engine No. </label> 
<input  type="name" id="Aname"  onchange="btn()"  size="70" aria-required="true" name="Aname" required placeholder="Enter the engine no."></p>

<p ><label>Chassis No. </label> 
    <input  type="name" id="Bname"  onchange="btn()"  size="70" aria-required="true" name="Bname" required placeholder="Enter the chassis no."></textarea></p>

<p ><label>Color </label> 
<input  type="name" id="Cname"  onchange="btn()"  size="70" aria-required="true" name="Cname" required placeholder="Enter the color"></p>

<p class="form-submit">
<input type="submit" class="submit" value="Add Bike"> 
</p>					
</form>
							</div><!-- #respond -->
			</div><!-- #comments .comments-area -->			</div>
			
				<div id="secondary" class="col-md-4" role="complementary">
<article id="post-39" class="post-39 page type-page status-publish hentry xfolkentry">
						<h1 class="entry-title">Add Bike</h1>

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
