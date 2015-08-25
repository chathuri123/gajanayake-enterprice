<%-- 
    Document   : DeleteTradeInBike
    Created on : Aug 26, 2015, 3:14:19 AM
    Author     : Dragon_Host
--%>

<%@page import="javax.servlet.*"%>
<%@page import="javax.servlet.http.*"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="content.jsp" %>
<%@include file="DB_Connector.jsp"%>    


 <%
 
 String ID=request.getParameter("tradeID");
 
 Statement stmt = conn.createStatement();
 
 String query="DELETE FROM tradeinbike WHERE TradeId='"+ID+"'";
 
 stmt.executeUpdate(query);
 
 response.sendRedirect("viewTradeIn.jsp");
%> 
