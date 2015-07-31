<%-- 
    Document   : Expenditures
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
						<h1 class="entry-title">Add Monthly Expenditures</h1>

					    <!-- .entry-content -->

					    	<footer class="clearfix">
	    	</footer><!-- .entry -->
					</article>	
	
<div id="respond" class="comment-respond">
    
<form action="AddLeasingCompany1.php" method="post"  class="comment-form" >

							
<p ><label for="author">Stationary </label>
<input  type="name" id="name"  onchange="btn()"  size="70" aria-required="true" name="name" required placeholder="Enter the expense "></p>
<p ><label for="author">Current Bill</label> 
<input id="nic" type="name"  size="70" aria-required="true" name="nic" required placeholder="Enter the expense "></p>
<p ><label for="author">Water Bill </label> 
<input  onmousemove="btn()" type="name"  size="70" aria-required="true" name="SDate" required placeholder="Enter the expense "></p>
<p ><label for="author">Employee Salaries </label> 
<input  onmousemove="btn()" type="number"  size="70" aria-required="true" name="SDate" required placeholder="Enter the expense "></p>
<p><label for="author">Income tax</label> 
<input  type="number" size="70" aria-required="true" name="Fdue" required placeholder="Enter the expense "></p>
<p ><label for="author">Telephone Bill</label> 
<input id="" type="email"  size="70" aria-required="true" name="Fdue" required placeholder="Enter the expense  "></p>
<p ><label for="author">Damages</label> 
<input id="" type="email"  size="70" aria-required="true" name="Fdue" required placeholder="Enter the expense  "></p>
<p ><label for="author">Vehicle Maintains</label> 
<input id="" type="email"  size="70" aria-required="true" name="Fdue" required placeholder="Enter the expense "></p>


<p class="form-submit">
<input type="submit" class="submit" value="Add "> 
</p>					
</form>
							</div><!-- #respond -->
			</div><!-- #comments .comments-area -->			</div>
			
				<div id="secondary" class="col-md-4" role="complementary">
<article id="post-39" class="post-39 page type-page status-publish hentry xfolkentry">
						<h3 >Add Annual Expenditures</h3>

					    <!-- .entry-content -->

					    	<footer class="clearfix">
	    	</footer><!-- .entry -->
					</article>
<aside id="search-2" class="widget widget_search">
    <form action="AddLeasingPlans1.php" method="post"  class="comment-form" >

<p ><label for="author">Annual allowance for employees </label> 
<input  type="name" id="name"  onchange="btn()"  size="40" aria-required="true" name="name" required placeholder="Enter the expense"></p>
<p ><label for="author">License renew </label> 
<input  type="name" id="CPlanID"  onchange="btn()"  size="40" aria-required="true" name="CPlanID" required placeholder="Enter the expense"></p>
<p ><label for="author">Domain renew cost </label> 
<input  type="number" id="rate"  onchange="btn()"  size="40" aria-required="true" name="rate" required placeholder="Enter the expense"></p>

    </form>
</aside>

</div><!-- #secondary.widget-area -->		</div>
	</div>

	</main><!-- main -->
        <%@include file="footer.jsp" %>
</div><!-- #page -->



</body></html>
