<%-- 
    Document   : VIewCustomer1
    Created on : Aug 25, 2015, 12:50:20 PM
    Author     : windya yasas
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="content.jsp" %>
<%@include file="DB_Connector.jsp"%>  

<script type="text/javascript" src="validateScript.js"></script>
<script>


</script>

</head>
<% if(session.getAttribute("noti").toString()== "yes")
{
    %><%="<body class='page page-id-39 page-template-default no-fittext basic' onload='JavaScript:notu()'>"%><%
}
else
{
    %><%="<body class='page page-id-39 page-template-default no-fittext basic'>"%><% 
}
session.setAttribute("noti","No");
%>	<div id="page">

		<header id="header">
			<%@include file="header.jsp" %>
<!-- #site-navigation -->

			 <div class="title-card-wrapper">
               
			</div>

		</header>
 <%  ResultSet rs;
 String id=request.getParameter("ID");
 Statement stmt = conn.createStatement();
 String sql="select * from user where userID = '"+id+"'";
 
 
 
 
 rs = stmt.executeQuery(sql);  %> <% while(rs.next()) {%>
<form method="POST"    class="comment-form" action="EditCustomer.jsp?id=<%=id%>">

		<main>
                    
                    <br>
	<div class="container">
		<div class="row">

<div id="primary" class="col-md-8 pull-left hfeed">
									<!-- #post-39 -->

					
<div id="comments" class="comments-area">
<article id="post-39" class="post-39 page type-page status-publish hentry xfolkentry">
						<h1 class="entry-title">View/Edit Customer</h1>

					    <!-- .entry-content -->

					    	<footer class="clearfix">
	    	</footer><!-- .entry -->
					</article>	
	
<div id="respond" class="comment-respond">
    
        
        


							
<p ><label for="author">First Name </label> 
<input  type="name" id="fname" value="<%=rs.getString("fname")%>"  size="70" aria-required="true" onblur='JavaScript:xmlhttpVPost("fname1","fname","Addcustomervalidate.jsp")' name="fname" required placeholder="Enter the First name"><div class="val" id="fname1"></div></p>
<p ><label for="author">Last Name </label> 
    <input  type="name" id="lname" value="<%=rs.getString("lname")%>"  size="70" aria-required="true" onblur='JavaScript:xmlhttpVPost("lname1","lname","Addcustomervalidate.jsp")' name="lname" required placeholder="Enter the  Last name"><div class="val" id="lname1"></div></p>

<p ><label for="author">NIC no</label> 
<input id="nic" type="name" value="<%=rs.getString("NIC")%>"  size="70" aria-required="true" name="nic" onblur=' JavaScript:xmlhttpVPost("nic1","nic","Addcustomervalidate.jsp")' required placeholder="Enter the NIC no"><div class="val" id="nic1"></div></p>
<p ><label for="author">Address </label> 
 <textarea rows="4" aria-required="true" value="<%=rs.getString("Address")%>" name="Address" id="Address" onblur=' JavaScript:xmlhttpVPost("Address1","Address","Addcustomervalidate.jsp")' required placeholder="Enter the Address"><%=rs.getString("Address")%></textarea></p><div class="val" id="Address1"></div></p>
<p ><label for="author">Date Of Birth </label> 
<input   type="date"  size="70" aria-required="true" value="<%=rs.getString("BDay")%>" id="BDay" name="BDay" required placeholder="Enter the DoB"></p>
<p><label for="author">Phone no</label> 
<input  type="number"  size="70" aria-required="true" value="<%=rs.getString("tel")%>" name="tel" id="tel" onblur=' JavaScript:xmlhttpVPost("tel1","tel","Addcustomervalidate.jsp")' required placeholder="Enter the Telephone number"><div class="val" id="tel1"></div></p>
<p ><label for="author">Email</label> 
<input id="email" type="email" value="<%=rs.getString("email")%>"  size="70" aria-required="true" name="email" onblur=' JavaScript:xmlhttpVPost("email1","email","Addcustomervalidate.jsp")' required placeholder="Enter the Email Address"></p><div class="val" id="email1"></div>
<%}%>
<p class="form-submit">
        <input type="submit"  class="submit"  value="Change"> 
       <!-- onclick='JavaScript:xmlhttpPost("success")'-->
<div id="success" style="color:green"></div>
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
        
	</main><!-- main -->
        </form>
        
        <%@include file="footer.jsp" %>
</div><!-- #page -->



</body></html>
