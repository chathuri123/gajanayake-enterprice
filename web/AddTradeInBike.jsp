<%-- 
    Document   : AddTradeInBike
    Created on : Jul 29, 2015, 6:54:51 AM
    Author     : windya yasas
--%>



<%@page import="java.util.List"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="content.jsp" %>
<%@include file="DB_Connector.jsp"%>    

<script type="text/javascript" src="validateScript.js"></script>
<script>
    function xmlhttpPost(field)
    {
        var xmlHttpReq = false;
        var self = this;

// Mozilla/Safari 
        if (window.XMLHttpRequest) {
            self.xmlHttpReq = new XMLHttpRequest();
        }
// IE 
        else if (window.ActiveXObject) {
            self.xmlHttpReq = new ActiveXObject("Microsoft.XMLHTTP");
        }
        self.xmlHttpReq.open('POST', "TradeInBikeDAO.jsp", false);
        self.xmlHttpReq.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        self.xmlHttpReq.onreadystatechange = function ()
        {

            if (self.xmlHttpReq.readyState != 4 && self.xmlHttpReq.status == 200)
            {
                document.getElementById(field).innerHTML = "Validating..";
            }
            else if (self.xmlHttpReq.readyState == 4)
            {
                updatepage(field, self.xmlHttpReq.responseText);
            }
        }
        var word1 = 'cusIdnName=' + escape(document.getElementById('cusIdnName').value);
//        var word2 = 'bmodel=' + escape(document.getElementById('bmodel').value);
        var word3 = 'engineNo=' + escape(document.getElementById('engineNo').value);
        var word4 = 'chassisNo=' + escape(document.getElementById('chassisNo').value);
        var word5 = 'registerYear=' + escape(document.getElementById('registerYear').value);
        var word6 = 'bodyCondition=' + escape(document.getElementById('bodyCondition').value);
        var word7 = 'engineCondition=' + escape(document.getElementById('engineCondition').value);
        var word8 = 'tireCondition=' + escape(document.getElementById('tireCondition').value);
        var word9 = 'overallCondition=' + escape(document.getElementById('overallCondition').value);
        var word10 = 'descrip=' + escape(document.getElementById('descrip').value);



        var the_data = word1 + '&' + word3 + '&' + word4 + '&' + word5 + '&' + word6 + '&' + word7 + '&' + word8 + '&' + word9 + '&' + word10 + '&';
        self.xmlHttpReq.send(the_data);
    }

    function updatepage(field, str) {
        document.getElementById(field).innerHTML = str;
        alert('Record Saved Successfully!!!');
    }

</script>

</head>
<% if(session.getAttribute("noti").toString()== "yes")
{
    %><%="<body class='page page-id-39 page-template-default no-fittext basic' onload='JavaScript:noti()'>"%><%
}
else
{
    %><%="<body class='page page-id-39 page-template-default no-fittext basic'>"%><% 
}
session.setAttribute("noti","No");
%>
    <div id="page">

        <header id="header">
            <%@include file="header.jsp" %>
            <!-- #site-navigation -->

            <div class="title-card-wrapper">

            </div>

        </header>
 <form class="comment-form" action="TradeInBikeDAO.jsp" method="post">
        <main>
            <br>
            <div class="container">
                <div class="row">

                    <div id="primary" class="col-md-8 pull-left hfeed">
                        <!-- #post-39 -->


                        <div id="comments" class="comments-area">

                            <article id="post-39" class="post-39 page type-page status-publish hentry xfolkentry">
                                <h1 class="entry-title">Add Trade in Bike</h1>

                                <!-- .entry-content -->

                                <footer class="clearfix">
                                </footer><!-- .entry -->
                            </article>	
                            <div id="respond" class="comment-respond">
                                
                                    <p ><label>Customer </label><br>

                                        <%Statement stmtCustomer = conn.createStatement();
                                            ResultSet rsCustomer = stmtCustomer.executeQuery("SELECT * from user  where Customer=1; "); %>

                                        <select name="cusIdnName" id="cusIdnName" style="width:310px">
                                            <% while (rsCustomer.next()) {%>
                                            <option value="<%=rsCustomer.getString("userID")%>"><%=rsCustomer.getString("nameWithIni")%></option>
                                            <%}%>
                                        </select>
                                        
                                    <p><a href="AddCustomer.jsp" style="padding:10px">Add customer</a></p>

                                    <p><label>Bike Brand</label><br>
                                        <%Statement stmt2 = conn.createStatement();
                                            ResultSet rs2 = stmt2.executeQuery("select * from mbbrand"); %>

                                        <select name="bbrand" id="bbrand" style="width:250px" onchange='JavaScript:xmlhttpVPost("MbModel", "bbrand", "AddSparePartsValidate.jsp")'>
                                            <% while (rs2.next()) {%>
                                            <option value="<%=rs2.getString("BrandID")%>"><%=rs2.getString("Bname")%></option>
                                            <%}%>
                                        </select>
                                        
                                    </p>
                                    
                                    <p><div id="MbModel"></div>
                            </p>

                                    <p ><label>Engine No </label>    
                                        <input  type="name" id="engineNo" name="engineNo"  size="70" onblur='JavaScript:xmlhttpVPost("fname1", "engineNo", "Addcustomervalidate.jsp")' aria-required="true" required placeholder="Enter the engine No"><div class="val" id="fname1"></div></p>

                                    <p ><label>Chassis No </label> 
                                        <input  type="name" id="chassisNo" name="chassisNo"  size="70" onblur='JavaScript:xmlhttpVPost("lname1", "chassisNo", "Addcustomervalidate.jsp")' aria-required="true" required placeholder="Enter the chassis no"><div class="val" id="lname1"></div></p>
                                   

                                    <p><label>Registered Year </label> 
                                        <input  type="number" id="registerYear" name="registerYear"  size="70" onblur='JavaScript:xmlhttpVPost("year", "registerYear", "Addcustomervalidate.jsp")' aria-required="true" required placeholder="Enter the max power"><div class="val" id="year"></div></p>
                                    

                                    <p ><label>Body Condition </label> 
                                        <input  type="number" id="bodyCondition" name="bodyCondition"  size="70" onblur='JavaScript:xmlhttpVPost("body", "bodyCondition", "Addcustomervalidate.jsp")' aria-required="true" required placeholder="100%" ><div class="val" id="body"></div></p>
                                   
                                    
                                    <p ><label>Engine Condition </label> 
                                        <input  type="number" id="engineCondition" name="engineCondition"  size="70" onblur='JavaScript:xmlhttpVPost("engine", "engineCondition", "Addcustomervalidate.jsp")'  aria-required="true" required placeholder="100%" ><div class="val" id="engine"></div></p>
                                   
                                    <p><label>Tire Condition </label> 
                                        <input  type="number" id="tireCondition" name="tireCondition"  size="70" onblur='JavaScript:xmlhttpVPost("tire", "tireCondition", "Addcustomervalidate.jsp")' aria-required="true" required placeholder="100%" ><div class="val" id="tire"></div></p>
                                 
                                    
                                    <p><label>Over Role Condition </label> 
                                        <input  type="number" id="overallCondition" name="overallCondition"  size="70" onblur='JavaScript:xmlhttpVPost("overAll", "overallCondition", "Addcustomervalidate.jsp")' aria-required="true" required placeholder="100%" ><div class="val" id="overAll"></div></p>
                                 
                                    
                                    <p><label>Description</label> 
                                        <textarea rows="4" aria-required="true" name="descrip" id="descrip" required placeholder="Enter the Desription"></textarea></p>
                                   

                                  
                                   <p class="form-submit">
                                        <input type="submit"  class="submit"  value="Send for Admin Approval"> 
                                    <div id="success" style="color:green"></div>
                                    </p>

                         
                            </div><!-- #respond -->
                        </div><!-- #comments .comments-area -->			</div>

                    <div id="secondary" class="col-md-4" role="complementary">
                        <article id="post-39" class="post-39 page type-page status-publish hentry xfolkentry">
                            <h3>Upload CR paper</h3>

                            <!-- .entry-content -->

                            <footer class="clearfix">
                            </footer><!-- .entry -->
                        </article>


                        <aside id="search-2" class="widget widget_search">
                            <div id="upload-area">

                                <div id="preview" style="padding:10px">
                                    <img width="400px" height="400px" src="Images/doc.jpg" id="thumb">
                                </div>

<!--                                <form action="/playground/ajax_upload" id="newHotnessForm">

                                    <p><input type="file" size="20" id="imageUpload" ></p>
                                    <p class="form-submit">
                                        <button  type="submit">Upload</button>
                                    </p>
                                </form>-->
                            </div>

                        </aside>

                    </div><!-- #secondary.widget-area -->		</div>
            </div>

        </main><!-- main -->
           </form>
        <%@include file="footer.jsp" %>
    </div><!-- #page -->



</body></html>

