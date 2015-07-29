<%-- 
    Document   : AddService
    Created on : Jul 29, 2015, 7:46:38 AM
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
						<h1 class="entry-title">Add Service</h1>

					    <!-- .entry-content -->

					    	<footer class="clearfix">
	    	</footer><!-- .entry -->
					</article>
	
	
<div id="respond" class="comment-respond">
<form action="AddCourse1.php" method="post"  class="comment-form" >

    <p ><label>Bike </label><br>
        
<input  type="name" id="Fname" name="Fname"  size="70" aria-required="true" required placeholder="Search Bike using Reg-No/BikeID"></p>


<p ><label>Service term</label><br>
    <select name="Sterm" id="Sterm" style="width:150px" >
        <option value="1">1 Service</option>
        <option value="2">2 Service</option>
        <option value="2">3 Service</option>
    </select>
</p>
<p ><label>Current Millage </label><br>
 <input  type="name" id="Aname"  onchange="btn()"  size="70" aria-required="true" name="Aname" required placeholder="Enter the Current millage"></p>
   
</p>
<p ><label>Next service Millage </label><br>
 <input  type="name" id="Aname"  onchange="btn()"  size="70" aria-required="true" name="Aname" required placeholder="Enter the Next service millage"></p>
   
</p>
							
<p ><label>Other Expenses </label> 
<input  type="number" id="Aname"  onchange="btn()"  size="70" aria-required="true" name="Aname" required placeholder="Enter the value"></p>

<p><label>Description</label> 
    <textarea rows="4" aria-required="true" name="descrip" id="descrip" required placeholder="Enter the Desription"></textarea></p>

<p class="form-submit">
<input type="submit" class="submit" value="Add "> 
</p>					
</form>
							</div><!-- #respond -->
			</div><!-- #comments .comments-area -->			</div>
			
				<div id="secondary" class="col-md-4" role="complementary">

<aside id="search-2" class="widget widget_search">


</aside>

</div><!-- #secondary.widget-area -->		</div>
	</div>

	</main><!-- main -->
        <%@include file="footer.jsp" %>
</div><!-- #page -->



</body></html>
