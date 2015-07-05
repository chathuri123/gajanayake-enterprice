<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html  lang="en-US"><head>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Gajanayake Enterprice › Log In</title>
        <%@include file="content.jsp" %>
        <link rel="stylesheet" id="login-css" href="bike/login.css" type="text/css" media="all">
        
<!-- JavaScript -->
<script type="text/javascript" src="bike/jquery.min.js"></script>

<script type="text/javascript">
$(function() {

$(".input").mouseleave(function() {


   
	var username = $("#log").val();
	var password = $("#pwd").val();
	
	     
	
    	
	
	
	if( username==='' || password==='')
	{
           
            if(username==='')
            {
                $('.log').fadeOut(200).show();
            }
             if(password==='')
            {
                $('.pwd').fadeOut(200).show();
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
	<body class="login login-action-login wp-core-ui  locale-en-us">
	<div id="login">
        <h2 class="entry-title">Gajanayake Enterprice</h2>





<form id="myForm" method='post' name="myForm" action="login1.jsp"  >



	<p>
		<label>Username<br>
		<input name="log" id="log" class="input"   size="20" type="text"></label>
      <span class="log" style="display:none;color:red"> Please enter username</span>
	</p>
	<p>
		<label>Password<br>
		<input name="pwd" id="pwd" class="input" value="" size="20" type="password"></label>
        <span class="pwd" style="display:none;color: red"> Please enter password</span>
	</p>


<p class="form-submit">
             <input name="submit" id="submit" value="Log In" type="submit" class="submit" >
</p>


	  
</form>

<p id="nav">
	<a href="LostPassword.jsp" title="">Lost your password?</a>
</p>

<script type="text/javascript">
function wp_attempt_focus(){
setTimeout( function(){ try{
d = document.getElementById('user_login');
d.focus();
d.select();
} catch(e){}
}, 200);
}

wp_attempt_focus();
if(typeof wpOnload=='function')wpOnload();
</script>

	
	</div>

	
		<div class="clear"></div>
	
	
	</body></html>