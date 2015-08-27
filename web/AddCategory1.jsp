<%-- 
    Document   : AddCategory1
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
         
      String category=request.getParameter("cat");
         
         //Increament ID    
      Statement stmt1 =conn.createStatement();
      int id=0;
      String CatI="CT";
      try{
      stmt1 = conn.createStatement();
      String sql = "SELECT CatID FROM category ORDER BY CatID DESC LIMIT 1";
      ResultSet rs=stmt1.executeQuery(sql);
      
  
         while(rs.next())
            {    
                CatI=rs.getString("CatID");
            }
         rs.close();
         }      
      catch(SQLException se)
      {      
            se.printStackTrace();
      } 
     id=Integer.parseInt(CatI.substring(2));
     id=id+1;
     String CatID="CT"+id;
      //End Of Increament Id
            
        
         
         
         try
          { 
             Statement stat=conn.createStatement();
             
         
  
             String sql ="INSERT INTO `gajanayake`.`category` (`CatID`,`CatName`) VALUES ('"+CatID+"','"+category+"')";
             stat.executeUpdate(sql);
             response.sendRedirect("AddCategory.jsp");
             session.setAttribute("noti","yes");
        
             
          }
          catch(Exception e)
          {
             e.printStackTrace();
          }
  
        %>
    </body>
</html>


