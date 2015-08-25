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
/*String f = request.getParameter("field");
if(f.equals("release"))
{*/
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
      String payID="PM";
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
     String lplanID = session.getAttribute("lPlanID").toString();
     String BikeID = session.getAttribute("BikeID").toString();
     double amount =Double.parseDouble(session.getAttribute("downPayment").toString());
     double discount =Double.parseDouble(session.getAttribute("discount").toString());
     
    /* String userID="CS100007";
  
     String BikeID="MB100001";
     String lplanID="LP100001";
     double amount=0;
     double discount=0;*/
     
     
     
     
     try
          { 
             Statement stat=conn.createStatement();
             
         
             String sql="INSERT INTO `gajanayake`.`orders` (`OrderID`, `Status`, `Date`, `userID`) VALUES ('"+OrderID+"', 'pending', '"+Date+"', '"+userID+"')";
             stat.executeUpdate(sql);
             String sql1 ="INSERT INTO `gajanayake`.`orderbike` (`OrderID`, `InsuranceID`, `LeasingID`, `BikeID`) VALUES ('"+OrderID+"', NULL, '"+lplanID+"', '"+BikeID+"')";
             stat.executeUpdate(sql1);
             String sql2 ="INSERT INTO `gajanayake`.`payments` (`PaymentID`, `Date`, `Amount`, `OrderID`, `Discount`) VALUES ('"+payID+"', '"+Date+"', '"+amount+"', '"+OrderID+"', '"+discount+"')";
             
             
             stat.executeUpdate(sql2);
             
            
            
             
             
          
             
          }
          catch(Exception e)
          {
             e.printStackTrace();
          }
  
        
//}

%> 