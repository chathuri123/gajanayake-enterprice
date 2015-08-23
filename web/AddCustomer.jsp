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
                    <form  method="post"  class="comment-form" >
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


							
<p ><label for="author">First Name </label> 
<input  type="name" id="fname"  size="70" aria-required="true" onblur='JavaScript:xmlhttpVPost("fname1","fname","Addcustomervalidate.jsp")' name="fname" required placeholder="Enter the First name"><div class="val" id="fname1"></div></p>
<p ><label for="author">Last Name </label> 
    <input  type="name" id="lname"  size="70" aria-required="true" onblur='JavaScript:xmlhttpVPost("lname1","lname","Addcustomervalidate.jsp")' name="lname" required placeholder="Enter the  Last name"><div class="val" id="lname1"></div></p>

<p ><label for="author">NIC no</label> 
<input id="nic" type="name"  size="70" aria-required="true" name="nic" onblur=' JavaScript:xmlhttpVPost("nic1","nic","Addcustomervalidate.jsp")' required placeholder="Enter the NIC no"><div class="val" id="nic1"></div></p>
<p ><label for="author">Address </label> 
<input   type="name"  size="70" aria-required="true" name="Address" onblur=' JavaScript:xmlhttpVPost("Address1","Address","Addcustomervalidate.jsp")' required placeholder="Enter the Address"><div class="val" id="Address1"></div></p>
<p ><label for="author">Date Of Birth </label> 
<input   type="date"  size="70" aria-required="true" name="SDate" required placeholder="Enter the DoB"></p>
<p><label for="author">Phone no</label> 
<input  type="number"  size="70" aria-required="true" name="tel" id="tel" onblur=' JavaScript:xmlhttpVPost("tel1","tel","Addcustomervalidate.jsp")' required placeholder="Enter the Telephone number"><div class="val" id="tel1"></div></p>
<p ><label for="author">Email</label> 
<input id="email" type="email"  size="70" aria-required="true" name="email" onblur=' JavaScript:xmlhttpVPost("email1","email","Addcustomervalidate.jsp")' required placeholder="Enter the Email Address"></p><div class="val" id="email1"></div>

<p class="form-submit">
<input type="submit" class="submit" value="Add Customer"> 
</p>					

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

	
		
                <p><input type="file" size="20" id="imageUpload" ></p>
                <p class="form-submit">
		<button  type="submit">Upload</button>
                </p>

    <p style="color: red">Optional * </p>
</div>

</aside>

</div><!-- #secondary.widget-area -->		</div>
	</div>
        </form>
	</main><!-- main -->
        
        <%@include file="footer.jsp" %>
</div><!-- #page -->



</body></html>
