<%-- 
    Document   : index
    Created on : Jun 30, 2015, 5:22:33 AM
    Author     : windya yasas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="content.jsp" %>
<script type="text/javascript" src="bike/jquery.min.js"></script>
</head>
<body class="home blog only-on-home no-fittext basic">

	<div id="page">

		<header id="header">
                    <%@include file="header.jsp" %>
<!-- #site-navigation -->

			 <div class="title-card-wrapper">
                <div style="height: 602px;" class="title-card">
    				<div id="site-meta">
    					<h1 id="site-title">
    						<a href="index.jsp" title="Gajanayake Enterprices" rel="home">
      <span style="display: inline-block; transition: none 0s ease 0s ; transform: translateX(-3px) translateY(6px) rotate(0deg);" >Gajanayake Enterprice</span></a>

    					    					
    					
    					<h2 id="site-description">Bike sales System</h2>
    						    					

                                        <a  href="#" id="more-site" class="btn btn-default btn-lg">Logged as <% out.print(session.getAttribute("EmpUserName")); %></a>
    				</div>

    			<img style="position: absolute; left: 0px; top: -111px; right: auto; bottom: auto; height: auto; width: 100%;" class="header-img" src="bike/header1.jpg" alt="">
			</div>
			</div>

		</header>

		<main>		<div id="home-page-widgets">
			<div class="container">
				<div class="row">
					<aside id="bavotasan_custom_text_widget-5" class="home-widget col-md-3 bavotasan_custom_text_widget">
                                            <a href="/"><i class="info fa fa-folder-open"></i></a>
                                            <h3 class="home-widget-title"><a href="">Purchase a Bike</a></h3>
		<div class="textwidget">
				</div>
		<a href="" class="btn btn-info btn-lg">Enter</a></aside>
                <aside id="bavotasan_custom_text_widget-6" class="home-widget col-md-3 bavotasan_custom_text_widget"><a href="">
                        <i class="success fa fa-pied-piper-alt"></i></a><h3 class="home-widget-title">
                        <a href="/">Bike Management</a></h3>
		<div class="textwidget">
				</div>
		<a href="" class="btn btn-success btn-lg">Enter</a></aside>
                <aside id="bavotasan_custom_text_widget-7" class="home-widget col-md-3 bavotasan_custom_text_widget"><a href="">
                        <i class="warning fa fa-user"></i></a>
                <h3 class="home-widget-title"><a href="">View Accounts</a></h3>
		<div class="textwidget">
	        <a href="" class="btn btn-warning btn-lg">Enter</a></aside>
                <aside id="bavotasan_custom_text_widget-8" class="home-widget col-md-3 bavotasan_custom_text_widget">
                        <a href=""><i class="primary fa fa-sun-o"></i></a>
                       <h3 class="home-widget-title"><a href="">Bike Trade in Management</a></h3>
		<div class="textwidget">
				</div>
		<a href="" class="btn btn-primary btn-lg">Enter</a>
                </aside>				</div>
			</div>
		</div>
			<div class="container">
		<div class="row">
			<!-- #secondary.widget-area -->		</div>
                        </div>

	</main><!-- main -->

	<%@include file="footer.jsp" %>
        <!-- #footer -->
</div><!-- #page -->


</body></html>