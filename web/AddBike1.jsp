
<%-- 
    Document   : AddBike1
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
         
          String modelID=request.getParameter("bmodel");
          out.print(modelID);
          
          String engineno=request.getParameter("engineno");
          
        
          String chassis=request.getParameter("chassis");
          String color=request.getParameter("color");
          
         
          
      
         
         
         //Increament ID    
      Statement stmt1 =conn.createStatement();
      int id=0;
      String BikeI="MB";
      try{
      stmt1 = conn.createStatement();
      String sql = "SELECT BikeID FROM motorbikes ORDER BY BikeID DESC LIMIT 1";
      ResultSet rs=stmt1.executeQuery(sql);
      
  
         while(rs.next())
            {    
                BikeI=rs.getString("BikeID");
            }
         rs.close();
         }      
      catch(SQLException se)
      {      
            se.printStackTrace();
      } 
     id=Integer.parseInt(BikeI.substring(2));
     id=id+1;
     String BikeID="MB"+id;
      //End Of Increament Id
            
        
         
         
         try
          { 
             Statement stat=conn.createStatement();
             
         
  
             String sql ="INSERT INTO `gajanayake`.`motorbikes` (`BikeID`, `Price`, `ChasisNo`, `EngineNo`, `Registered`, `RegistrationNo`, `NewRegister`, `ModelID`, `color`) VALUES ('"+BikeID+"', NULL, '"+chassis+"', '"+engineno+"', '0', NULL, NULL, '"+modelID+"', '"+color+"')";
             stat.executeUpdate(sql);
             response.sendRedirect("AddBike.jsp");
             session.setAttribute("noti","yes");
        
             
          }
          catch(Exception e)
          {
             e.printStackTrace();
          }
  
        %>
    </body>
</html>


