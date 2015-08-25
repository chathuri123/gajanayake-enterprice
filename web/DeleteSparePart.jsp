<%-- 
<%-- 
    Document   : ViewSpareParts
    Created on : 04-Jul-2015, 01:25:22
    Author     : chathuri lakmini
--%>


<%@page import="javax.servlet.*"%>
<%@page import="javax.servlet.http.*"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="content.jsp" %>
<%@include file="DB_Connector.jsp"%>    


 <%
 
 String ID=request.getParameter("spID");
 
 Statement stmt = conn.createStatement();
 
 String query="DELETE FROM spareparts WHERE SparePartID='"+ID+"'";
 
 stmt.executeUpdate(query);
 
 response.sendRedirect("ViewSparePartAll.jsp");
%> 
	