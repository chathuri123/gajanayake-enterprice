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
 
 String ID=request.getParameter("ID");
 
 Statement stmt =conn.createStatement();
 
 String query="DELETE FROM user WHERE userID='"+ID+"' AND customer=1";
 
 stmt.executeUpdate(query);
 
 response.sendRedirect("ViewCustomerAll.jsp");
%> 
	