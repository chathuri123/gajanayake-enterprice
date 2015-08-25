<%-- 
    Document   : sellBike1
    Created on : Aug 25, 2015, 8:41:27 AM
    Author     : windya yasas
--%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="javafx.scene.input.DataFormat"%>
<%@page import="java.util.Date"%>
<%@include file="DB_Connector.jsp"%> 
<%
String f = request.getParameter("field");
if(f.equals("release"))
{
    Statement stmt1 = conn.createStatement();
      int id=0;
      String OrderID="OR";
      try{
      stmt1 = conn.createStatement();
      String sql = "SELECT * FROM orders ORDER BY OrderID DESC LIMIT 1";
      ResultSet rs = stmt1.executeQuery(sql);
      
  
         while(rs.next())
            {    
                OrderID = rs.getString("OrderID");
            }
         rs.close();
     }      
      catch(SQLException se){      
            se.printStackTrace();
      } 
     id=Integer.parseInt(OrderID.substring(2));
     id=id+1;
     OrderID="OR"+id;
      id=0;
      String payID="OR";
      try{
      stmt1 = conn.createStatement();
      String sql = "SELECT * FROM payments ORDER BY PaymentID DESC LIMIT 1";
      ResultSet rs = stmt1.executeQuery(sql);
      
  
         while(rs.next())
            {    
                payID = rs.getString("PaymentID");
            }
         rs.close();
     }      
      catch(SQLException se){      
            se.printStackTrace();
      } 
     id=Integer.parseInt(OrderID.substring(2));
     id=id+1;
     payID="PM"+id;
      //End Of Increament Id
      //getDate
     DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
     Date date = new Date();
     String Date =dateFormat.format(date);
      //End OF GetDate
     String userID=session.getAttribute("userID").toString();
     String planID = session.getAttribute("lPlanID").toString();
     String BikeID = session.getAttribute("BikeID").toString();
     String amount =session.getAttribute("downPayment").toString();
     String discount =session.getAttribute("discount").toString();
     
     
     
     
     try
          { 
             Statement stat=conn.createStatement();
             
         
             String sql="INSERT INTO `gajanayake`.`orders` (`OrderID`, `Status`, `Date`, `userID`) VALUES ('"+OrderID+"', 'pending', '"+Date+"', '"+userID+"')"
                      + "INSERT INTO `gajanayake`.`orderbike` (`OrderID`, `InsuranceID`, `LeasingID`, `BikeID`) VALUES ('"+OrderID+"', NULL, '"+planID+"', '"+BikeID+"')"
                     + "INSERT INTO `gajanayake`.`payments` (`PaymentID`, `Date`, `Amount`, `OrderID`, `Discount`) VALUES ('"+planID+"', '"+Date+"', '"+amount+"', '"+OrderID+"', '"+discount+"');";
             stat.executeUpdate(sql);
             
            
            
             
             
          
             
          }
          catch(Exception e)
          {
             e.printStackTrace();
          }
  
        
}

%> 