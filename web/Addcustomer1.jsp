<%-- 
    Document   : AddSpareparts
    Created on : Jun 30, 2015, 5:46:57 PM
    Author     : windya yasas
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
           
       
    
         
          String fname=request.getParameter("fname");
          String lname=request.getParameter("lname");
          String BDay=request.getParameter("BDay");
          String nic=request.getParameter("nic");
          String Address=request.getParameter("Address");
          double tel=Double.parseDouble(request.getParameter("tel"));
          String email=request.getParameter("email");
        
        DbConnect DB=new DbConnect();
       
        User cus=new User(fname,lname,email,Address,nic,"","",BDay,tel);
        cus.genNameWithIni(fname, lname);
        
        
      //Increament ID    
      Statement stmt1 = conn.createStatement();
      int id=0;
      String userC="CS";
      try{
      stmt1 = conn.createStatement();
      String sql = "SELECT userID FROM user ORDER BY userID DESC LIMIT 1";
      ResultSet rs = stmt1.executeQuery(sql);
      
  
         while(rs.next())
            {    
                userC = rs.getString("userID");
            }
         rs.close();
     }      
      catch(SQLException se){      
            se.printStackTrace();
      } 
     id=Integer.parseInt(userC.substring(2));
     id=id+1;
     String userID="CS"+id;
      //End Of Increament Id
     String fullname=fname+" "+lname;
     
   
                 
            
            
          
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
