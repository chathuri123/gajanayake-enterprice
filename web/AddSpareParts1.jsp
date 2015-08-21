<%-- 
    Document   : AddSpareparts
    Created on : Jun 30, 2015, 5:46:57 PM
    Author     : Chathuri Lakmini 
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="javax.servlet.*"%>
<%@page import="javax.servlet.http.*"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Spare Parts Item</title>
    </head>
    <body>
        <%@include file="DB_Connect.jsp"%>
        <%
    
          String Iname=request.getParameter("iname");
          String ModelNo=request.getParameter("modelNo");
          String ShellNo=request.getParameter("shellNo");
          double purprice=Double.parseDouble(request.getParameter("purrate"));
          double saleprice=Double.parseDouble(request.getParameter("salesrate"));
          int Quantity=Integer.parseInt(request.getParameter("qty"));
          String description=request.getParameter("descrip");

         try
          { 
             Statement stat=conn.createStatement();
             
         
             String sql="INSERT INTO gajanayakaent.spareparts(itemname,modelno,shellno,qty,purchaserate,salesrate,Description) VALUES('"+Iname+"','"+ModelNo+"','"+ShellNo+"','"+Quantity+"','"+purprice+"','"+saleprice+"','"+description+"')";
             
             stat.executeUpdate(sql);
             
          
             
          }
          catch(Exception e)
          {
             e.printStackTrace();
          }
  
        %>
    </body>
</html>
