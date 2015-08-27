<%-- 
    Document   : AddSubCategory1
    Created on : 27-Aug-2015, 15:01:39
    Author     : chathuri lakmini
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
         
      String category=request.getParameter("cat");
      String subcatname=request.getParameter("subcat");
     
         
         //Increament ID    
      Statement stmt1 =conn.createStatement();
      int id=0;
      String subcatI="SC";
      try{
      stmt1 = conn.createStatement();
      String sql = "SELECT SubCatID FROM subcategory ORDER BY SubCatID DESC LIMIT 1";
      ResultSet rs=stmt1.executeQuery(sql);
      
  
         while(rs.next())
            {    
                subcatI=rs.getString("SubCatID");
            }
         rs.close();
         }      
      catch(SQLException se)
      {      
            se.printStackTrace();
      } 
     id=Integer.parseInt(subcatI.substring(2));
     id=id+1;
     String SubCatID="SC"+id;
      //End Of Increament Id
          
      
         try
          { 
             Statement stat=conn.createStatement();
           
             String sql ="INSERT INTO `gajanayake`.`subcategory` (`SubCatID`,`CatID`,`SubCatName`) VALUES ('"+SubCatID+"','"+category+"','"+subcatname+"')";
             stat.executeUpdate(sql);
             response.sendRedirect("AddSubCategory.jsp");
             session.setAttribute("noti","yes");
        
             
          }
          catch(Exception e)
          {
             e.printStackTrace();
          }
  
        %>
    </body>
</html>



