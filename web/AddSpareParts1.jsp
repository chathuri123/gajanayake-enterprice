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
        <%@include file="DB_Connector.jsp"%>
        <%
            Statement stmt1 = conn.createStatement();
            ResultSet rs1 = stmt1.executeQuery("select SupplierID from spareparts ");
        %>
            
        <%
    
 
          String Category=request.getParameter("SubCat");
          String Supplier=request.getParameter("supplier");
          String Bmodel=request.getParameter("bmodel");
          String Name=request.getParameter("Name");
          String ModelNo=request.getParameter("modelNo");
          String ShellNo=request.getParameter("shellNo");
          String description=request.getParameter("descrip");
          int Quantity=Integer.parseInt(request.getParameter("qty"));
          
          double purprice=Double.parseDouble(request.getParameter("pprice"));
          double saleprice=Double.parseDouble(request.getParameter("sprice"));
          double unitcost=Double.parseDouble(request.getParameter("unitcost"));
          
//          Sumudu De Zoysa
          

         try
          { 
             Statement stat=conn.createStatement();
             
         
             String sql="INSERT INTO gajanayake.spareparts(Quantity,unitcost) VALUES('"+Quantity+"','"+unitcost+"')";
             
             stat.executeUpdate(sql);
             
          
             
          }
          catch(Exception e)
          {
             e.printStackTrace();
          }
  
        %>
    </body>
</html>
