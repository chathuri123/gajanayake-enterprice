<%-- 
    Document   : viewTradeIn
    Created on : Aug 25, 2015, 11:51:34 PM
    Author     : Dragon_Host
--%>

<%@page import="javax.servlet.*"%>
<%@page import="javax.servlet.http.*"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="content.jsp" %>
<%@include file="DB_Connector.jsp"%>  




<html>
    <head>

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

                        <div id="primary" class="col-md-12">
                            <!-- #post-39 -->


                            <div id="comments" class="comments-area">


                                <div id="respond" class="comment-respond">
                                    <article id="post-39" class="post-39 page type-page status-publish hentry xfolkentry">
                                        <h1 class="entry-title">Display Trade in Bike</h1>

                                        <!-- .entry-content -->

                                        <footer class="clearfix">
                                        </footer><!-- .entry -->
                                    </article>	
                                    <br>

                                    <form action="TradeInBikeDAO.jsp" method="post"  class="comment-form">
                                        <p ><label>Search Trade Bikes</label> 
                                            <input  type="text" name="iname" onchange="btn()"  size="70" aria-required="true" id="iname" required placeholder="Search by Name/ID/Nic"></p>
                                    </form>

                                    <%
     Statement stmt = conn.createStatement();
     ResultSet rs = stmt.executeQuery("SELECT * FROM tradeinbike");%>

                                    <br>
                                    <table border="2" align="left" width="600">

                                        <tr style="background-color: #555; color: #ffffff; ">
                                            <td>Trade ID</td>
                                            <td>Customer ID</td>
                                            <td>Bike Model ID</td>
                                            <td>Engine Number</td>
                                            <td>Chassis Number</td>
                                            <td style="width: 30px;">Registered Year</td>
                                            <td>Body Condition (%)</td>
                                            <td>Engine Condition (%)</td>
                                            <td>Tire Condition (%)</td>
                                            <td>Overall Condition (%)</td>
                                            <td colspan="2"></td>
                                            

                                        </tr>
                                        <% while (rs.next()) {%>
                                        <tr>
                                            <td><%=rs.getString("TradeId")%></td>
                                            <td><%=rs.getString("CustomerId")%></td>
                                            <td><%=rs.getString("BModelID")%></td>
                                            <td><%=rs.getString("EngineNo")%></td>
                                            <td><%=rs.getString("ChassisNo")%></td>
                                            <td><%=rs.getString("RegisteredYear")%></td>
                                            <td><%=rs.getString("BodyCondition")%></td>
                                            <td><%=rs.getString("EngineCondition")%></td>
                                            <td><%=rs.getString("TireCondition")%></td>
                                            <td><%=rs.getString("OverollCondition")%></td>
                                            <td><a href="">View/edit</a></td>
                                            <td><a href="DeleteTradeInBike.jsp?tradeID=<%=rs.getString("TradeId")%>" onclick="return confirm('Are you sure you want to delete this item?');">Remove</a></td>

                                        </tr>
                                        <%}%>
                                    </table>
                                    </form>



                                </div><!-- #respond -->
                            </div><!-- #comments .comments-area -->			</div>

                        </div>
                </div>

            </main><!-- main -->
            <%@include file="footer.jsp" %>
        </div><!-- #page -->



    </body>
</html>
