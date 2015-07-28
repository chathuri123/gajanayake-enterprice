<%-- 
    Document   : AddLeasingCompany
    Created on : Jul 29, 2015, 4:06:20 AM
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
						<h1 class="entry-title">Add Leasing Company</h1>

					    <!-- .entry-content -->

					    	<footer class="clearfix">
	    	</footer><!-- .entry -->
					</article>	
	
<div id="respond" class="comment-respond">
    
<form action="AddLeasingCompany1.php" method="post"  class="comment-form" >

							
<p ><label for="author">Name </label> 
<input  type="name" id="name"  onchange="btn()"  size="70" aria-required="true" name="name" required placeholder="Enter the Company Name"></p>
<p ><label for="author">Reg-No</label> 
<input id="nic" type="name"  size="70" aria-required="true" name="nic" required placeholder="Enter the Reg-No"></p>
<p ><label for="author">Address </label> 
<input  onmousemove="btn()" type="name"  size="70" aria-required="true" name="SDate" required placeholder="Enter the Address"></p>
<p ><label for="author">Tel(Head Office) </label> 
<input  onmousemove="btn()" type="number"  size="70" aria-required="true" name="SDate" required placeholder="Enter the number"></p>
<p><label for="author">Tel (Branch)</label> 
<input  type="number" size="70" aria-required="true" name="Fdue" required placeholder="Enter the Number"></p>
<p ><label for="author">Email</label> 
<input id="" type="email"  size="70" aria-required="true" name="Fdue" required placeholder="Enter the Email "></p>

<p class="form-submit">
<input type="submit" class="submit" value="Add Company"> 
</p>					
</form>
							</div><!-- #respond -->
			</div><!-- #comments .comments-area -->			</div>
			
				<div id="secondary" class="col-md-4" role="complementary">
<article id="post-39" class="post-39 page type-page status-publish hentry xfolkentry">
						<h3 >Add Leasing Plan</h3>

					    <!-- .entry-content -->

					    	<footer class="clearfix">
	    	</footer><!-- .entry -->
					</article>
<aside id="search-2" class="widget widget_search">
    <form action="AddLeasingPlans1.php" method="post"  class="comment-form" >

<p ><label for="author">Name </label> 
<input  type="name" id="name"  onchange="btn()"  size="40" aria-required="true" name="name" required placeholder="Enter the Plan Name"></p>
<p ><label for="author">Company Plan ID </label> 
<input  type="name" id="CPlanID"  onchange="btn()"  size="40" aria-required="true" name="CPlanID" required placeholder="Enter the Company Plan ID"></p>
<p ><label for="author">Rate </label> 
<input  type="number" id="rate"  onchange="btn()"  size="40" aria-required="true" name="rate" required placeholder="Enter the Rate"></p>
<p ><label for="author">No of Installments </label> 
<input  type="number" id="NoOfIns"  onchange="btn()"  size="40" aria-required="true" name="NoOfIns" required placeholder="Enter the No of Installments"></p>
<p class="form-submit">
<input type="submit" class="submit" value="Add Plan"> 
</p>
    </form>
</aside>

</div><!-- #secondary.widget-area -->		</div>
	</div>

	</main><!-- main -->
        <%@include file="footer.jsp" %>
</div><!-- #page -->



</body></html>
