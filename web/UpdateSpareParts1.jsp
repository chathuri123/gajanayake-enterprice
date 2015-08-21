<%-- 
    Document   : UpdateSpareParts1
    Created on : 05-Jul-2015, 02:28:21
    Author     : chathuri lakmini
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.*"%>
<%@page import="javax.servlet.http.*"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Spare Parts Item</title>
    </head>
    <body>
        <%@include file="DB_Connect.jsp"%> 
        
        <% 
            Statement stmt = conn.createStatement();
            String iname=request.getParameter("iname");
            String sql="Update spareparts SET shellno=?,modelno=? where itemname=?";
            
            stmt.executeUpdate(sql);
             
          
             
            
            String shellno=(String)session.getAttribute("shellno");
            String modelno=(String)session.getAttribute("modelno");
            String description=(String)session.getAttribute("descript");
            
            //PreparedStatement ps=conn.prepareStatement("Update spareparts SET itemname=?,shellno=?,modelno=? where itemname='"+iname+"'");
            
            
            
            
        %>
        
    </body>
</html>
