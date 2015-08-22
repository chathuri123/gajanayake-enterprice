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
           
       
    
 
          String Category=request.getParameter("SubCat");
          String Supplier=request.getParameter("supplier");
          String Bmodel=request.getParameter("bmodel");
          String Name=request.getParameter("Name");
          String ModelNo=request.getParameter("modelNo");
          String ShellNo=request.getParameter("shellNo");
          String description=request.getParameter("descrip");
          int Quantity=Integer.parseInt(request.getParameter("qty"));
          out.print(Category);
          out.print(Supplier);
          out.print(Bmodel);
          out.print(Name);
          out.print(ModelNo);
          out.print(ShellNo);
          out.print(description);
          out.print(Quantity);
          
          
          
        /*
         double purprice=Double.parseDouble(request.getParameter("pprice"));
          double saleprice=Double.parseDouble(request.getParameter("sprice"));
          double unitcost=Double.parseDouble(request.getParameter("unitcost"));
        */
          
         
        /*String  Category="sdfva";
        String  Supplier="asdf";
        String  Bmodel="werfg";
        String  Name="asdfawe";
        String  ModelNo="sdf";
        String  ShellNo="sdf";
        String  description="weqfdqwe";
        int  Quantity=1;*/
        double  purprice=12122;
        double  saleprice=12113;
        double  unitcost=2323;
        out.print(purprice);
        out.print(saleprice);
        out.print(unitcost);
          
            Statement stmt1 = conn.createStatement();
            ResultSet rs1 = stmt1.executeQuery("select userID from user where Supplier= 1 and nameWithIni='"+Supplier+"'  ");
            while(rs1.next())
      {
          Supplier = rs1.getString("userID");
        
      }
            
       out.print(Supplier);  

         try
          { 
             Statement stat=conn.createStatement();
             
         
             String sql="INSERT INTO gajanayake.spareparts(SparePartsID,Quantity,SubCategory,PurchasePrice,ShellNo,Description,ModelID,SupplierID,unitcost,SalePrice,Name,BModelID)"
                     + " VALUES('SP100001',"+Quantity+",'"+Category+"',"+purprice+",'"+ShellNo+"','"+description+"','"+ModelNo+"','"+Supplier+"',"+unitcost+","+saleprice+",'"+Name+"','"+Bmodel+"' )";
             
             stat.executeUpdate(sql);
             
          
             
          }
          catch(Exception e)
          {
             e.printStackTrace();
          }
  
        %>
    </body>
</html>
