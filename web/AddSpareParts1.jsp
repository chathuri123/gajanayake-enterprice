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
          double purprice=Double.parseDouble(request.getParameter("pprice"));
          double saleprice=Double.parseDouble(request.getParameter("sprice"));
          double unitcost=Double.parseDouble(request.getParameter("unitcost"));
         
         
         //Increament ID    
      Statement stmt1 = conn.createStatement();
      int id=0;
      String SpareP="SP";
      try{
      stmt1 = conn.createStatement();
      String sql = "SELECT SparePartID FROM spareparts ORDER BY SparePartID DESC LIMIT 1";
      ResultSet rs = stmt1.executeQuery(sql);
      
  
         while(rs.next())
            {    
                SpareP = rs.getString("SparePartID");
            }
         rs.close();
     }      
      catch(SQLException se){      
            se.printStackTrace();
      } 
     id=Integer.parseInt(SpareP.substring(2));
     id=id+1;
     String SparePartID="SP"+id;
      //End Of Increament Id
            ResultSet rs1 = stmt1.executeQuery("select userID from user where Supplier= 1 and nameWithIni='"+Supplier+"'  ");
            while(rs1.next())
      {
          Supplier = rs1.getString("userID");
        
      }
            ResultSet rs2 = stmt1.executeQuery("select SubCatID from subcategory where SubCatName='"+Category+"'  ");
            while(rs2.next())
      {
          Category = rs2.getString("SubCatID");
        
      }
            ResultSet rs3 = stmt1.executeQuery("select * from mbmodel where Name='"+Bmodel+"'");
            while(rs3.next())
      {
          Bmodel= rs3.getString("ModelID");
        
      }
           
            
            
            
      
          
         try
          { 
             Statement stat=conn.createStatement();
             
         
             String sql="INSERT INTO `gajanayake`.`spareparts`(`SparePartID`,`Quantity`,`SubCategory`,`PurchasePrice`,`ShellNo`,`Description`,`ModelID`,`SupplierID`,`unitcost`,`SalePrice`,`Name`,`BModelID`) VALUES('"+SparePartID+"','"+Quantity+"','"+Category+"','"+purprice+"','"+ShellNo+"','"+description+"','"+ModelNo+"','"+Supplier+"','"+unitcost+"','"+saleprice+"','"+Name+"','"+Bmodel+"')";
             
             stat.executeUpdate(sql);
            
             
             
          
             
          }
          catch(Exception e)
          {
             e.printStackTrace();
          }
  
        %>
    </body>
</html>
