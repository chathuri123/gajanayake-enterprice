<%-- 
    Document   : DeleteCategory
    Created on : 27-Aug-2015, 13:52:59
    Author     : chathuri lakmini
--%>

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
 
 String ID=request.getParameter("catID");
 
 Statement stmt =conn.createStatement();
 
 String query="DELETE FROM category WHERE catID='"+ID+"'";
 
 stmt.executeUpdate(query);
 
 response.sendRedirect("AddCategory.jsp");
%> 
	