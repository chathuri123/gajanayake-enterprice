
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
           
       
    
         
          String bname=request.getParameter("Bname");
          String registeredno=request.getParameter("regno");
          String description=request.getParameter("description");
      
         
         
         //Increament ID    
      Statement stmt1 =conn.createStatement();
      int id=0;
      String BrandI="BB";
      try{
      stmt1 = conn.createStatement();
      String sql = "SELECT BrandID FROM mbbrand ORDER BY BrandID DESC LIMIT 1";
      ResultSet rs=stmt1.executeQuery(sql);
      
  
         while(rs.next())
            {    
                BrandI=rs.getString("BrandID");
            }
         rs.close();
         }      
      catch(SQLException se)
      {      
            se.printStackTrace();
      } 
     id=Integer.parseInt(BrandI.substring(2));
     id=id+1;
     String BrandID="BB"+id;
      //End Of Increament Id
            
         
         try
          { 
             Statement stat=conn.createStatement();
             
         
             String sql="INSERT INTO `gajanayake`.`mbbrand` (`BrandID`, `Bname`, `RegisteredNo`, `Description`) VALUES ('"+BrandID+"', '"+bname+"', '"+registeredno+"', '"+description+"')";
             
             stat.executeUpdate(sql);
             %><script>alert("Successful")</script><%
             response.sendRedirect("AddBikeBrand.jsp");
             
        
             
          }
          catch(Exception e)
          {
             e.printStackTrace();
          }
  
        %>
    </body>
</html>

