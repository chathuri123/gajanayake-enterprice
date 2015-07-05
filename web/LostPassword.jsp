<%-- 
    Document   : LostPassword
    Created on : Jul 2, 2015, 6:09:06 AM
    Author     : windya yasas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html  lang="en-US">
    <head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Gajanayake Enterprice › Lost Password</title>
        <%@include file="content.jsp" %>
        <link rel="stylesheet" id="login-css" href="bike/login.css" type="text/css" media="all">
        
<meta name="robots" content="noindex,follow">
<script type="text/javascript" src="bike/jquery.min.js"></script>
<script type="text/javascript">
$(function() {

$(".submit").click(function() {


   
	var username = $("#user_login").val();
	
	
	     
	
    	
	
	
	if( username==='')
	{
           
            if(username==='')
            {
                $('.log').fadeOut(200).show();
            }
            
	
	}
	
	
	else
	{
	$.ajax({
	type: "POST",
    url: "login1.jsp",
    data: dataString,
    success: function(){
	$('.log').fadeIn(200).show();
    $('.pwd').fadeOut(200).hide();
		
   }
});




	}
		

    return false;
	});



});
</script>
	</head>
	<body class="login login-action-lostpassword wp-core-ui  locale-en-us">
	<div id="login">
		
	<p class="message">Please enter your username or email address. You will receive a link to create a new password via email.</p>

<form  action="" method="post">
	<p>
		<label >Username or E-mail:<br>
		<input name="user_login" id="user_login" class="input" size="20" type="text"></label>
                <span class="log" style="display:none;color:red"> Please enter your email or username</span>
	</p>
		
	 <p class="form-submit"><input name="submit" id="submit" class="submit" value="Get New Password" type="submit"></p>
</form>

<p id="nav">
<a href="login.jsp">Log in</a>
</p>

	
	</div>

		<script type="text/javascript">
	try{document.getElementById('user_login').focus();}catch(e){}
	if(typeof wpOnload=='function')wpOnload();
	</script>
	
		<div class="clear"></div>
	
	
	</body></html>
