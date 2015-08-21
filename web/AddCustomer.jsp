 <%-- 
    Document   : AddCustomer
    Created on : Jun 30, 2015, 7:21:36 AM
    Author     : windya yasas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="content.jsp" %>

<script type="text/javascript" src="validateScript.js"></script>

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
						<h1 class="entry-title">Add Customer</h1>

					    <!-- .entry-content -->

					    	<footer class="clearfix">
	    	</footer><!-- .entry -->
					</article>	
	
<div id="respond" class="comment-respond">
<form  method="post"  class="comment-form" >

							
<p ><label for="author">First Name </label> 
<input  type="name" id="fname"  size="70" aria-required="true" onblur='JavaScript:xmlhttpPost("fname1","fname")' name="fname" required placeholder="Enter the First name"><div id="fname1"></div></p>
<p ><label for="author">Last Name </label> 
    <input  type="name" id="lname"  size="70" aria-required="true" onblur='JavaScript:xmlhttpPost("lname1","lname")' name="lname" required placeholder="Enter the  Last name"><div id="lname1"></div></p>

<p ><label for="author">NIC no</label> 
<input id="nic" type="name"  size="70" aria-required="true" name="nic" onblur=' JavaScript:xmlhttpPost("nic1","nic")' required placeholder="Enter the NIC no"><div id="nic1"></div></p>
<p ><label for="author">Address </label> 
<input   type="name"  size="70" aria-required="true" name="Address" onblur=' JavaScript:xmlhttpPost("Address1","Address")' required placeholder="Enter the start date"><div id="Address1"></div></p>
<p ><label for="author">Date Of Birth </label> 
<input  onmousemove="btn()" type="date"  size="70" aria-required="true" name="SDate" required placeholder="Enter the DoB"></p>
<p><label for="author">Phone no</label> 
<input  type="number"  size="70" aria-required="true" name="Fdue" required placeholder="Enter the Fee Duration"></p>
<p ><label for="author">Email</label> 
<input id="" type="email"  size="70" aria-required="true" name="Fdue" required placeholder="Enter the Fee Duration"></p>

<p class="form-submit">
<input type="submit" class="submit" value="Add Customer"> 
</p>					
</form>
							</div><!-- #respond -->
			</div><!-- #comments .comments-area -->			</div>
			
				<div id="secondary" class="col-md-4" role="complementary">
<article id="post-39" class="post-39 page type-page status-publish hentry xfolkentry">
						<h3>Upload Customer image </h3>

					    <!-- .entry-content -->

					    	<footer class="clearfix">
	    	</footer><!-- .entry -->
					</article>
<aside id="search-2" class="widget widget_search">
<div id="upload-area">
   
	<div id="preview" style="padding:10px">
		<img width="400px" height="400px" src="Images/User.jpg" id="thumb">
	</div>

	<form action="/playground/ajax_upload" id="newHotnessForm">
		
                <p><input type="file" size="20" id="imageUpload" ></p>
                <p class="form-submit">
		<button  type="submit">Upload</button>
                </p>
	</form>
    <p style="color: red">Optional * </p>
</div>

</aside>

</div><!-- #secondary.widget-area -->		</div>
	</div>

	</main><!-- main -->
        <%@include file="footer.jsp" %>
</div><!-- #page -->



</body></html>
