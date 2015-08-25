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
         
          String brand=request.getParameter("brand");
          String modelno=request.getParameter("modelno");
          String country=request.getParameter("country");
          String ttype=request.getParameter("ttype");
          String mtype=request.getParameter("mtype");
          String btype=request.getParameter("btype");
          String etype=request.getParameter("etype");
          String name1=request.getParameter("name1");
          String year=request.getParameter("year");
          String price=request.getParameter("price");
          
          String displace=request.getParameter("displace");
          String maxpower=request.getParameter("maxpower");
          String maxtoque=request.getParameter("maxtoque");
          String system=request.getParameter("system");
          String fsuspension=request.getParameter("fsuspension");
          String rsuspension=request.getParameter("rsuspension");
          double ftire=Double.parseDouble(request.getParameter("ftire"));
          double rtire=Double.parseDouble(request.getParameter("rtire"));   
          String fbrake=request.getParameter("fbrake");
          String rbrake=request.getParameter("rbrake");
          double length=Double.parseDouble(request.getParameter("length"));
          double width=Double.parseDouble(request.getParameter("width"));
          double wheel=Double.parseDouble(request.getParameter("wheel"));
          double ground=Double.parseDouble(request.getParameter("ground"));
          double seathight=Double.parseDouble(request.getParameter("seathight"));
          double kerb=Double.parseDouble(request.getParameter("kerb"));
          String battry=request.getParameter("battry");
          String hlamp=request.getParameter("hlamp");
          double tank=Double.parseDouble(request.getParameter("tank"));
          double seatspace=Double.parseDouble(request.getParameter("seatspace"));
          String valve=request.getParameter("valve");
          String bs=request.getParameter("bs");
          double hieght=Double.parseDouble(request.getParameter("hieght"));
          
         
         //Increament ID    
      Statement stmt1 = conn.createStatement();
      int id=0;
      String mbike="BM";
      try{
      stmt1 = conn.createStatement();
      String sql = "SELECT ModelID FROM mbmodel ORDER BY ModelID DESC LIMIT 1";
      ResultSet rs = stmt1.executeQuery(sql);
      
  
         while(rs.next())
            {    
                mbike= rs.getString("ModelID");
            }
         rs.close();
     }      
      catch(SQLException se){      
            se.printStackTrace();
      } 
     id=Integer.parseInt(mbike.substring(2));
     id=id+1;
     String ModelID="BM"+id;
     
      //End Of Increament Id
          
         ResultSet rs1 = stmt1.executeQuery("select BrandID from mbbrand where Bname='"+brand+"'");
            while(rs1.next())
         {
              brand= rs1.getString("BranID");
        
         }
         
         
         try
          { 
             Statement stat=conn.createStatement();
             
         
             String sql="INSERT INTO `gajanayake`.`mbmodel`(`ModelID`,`BrandID`,`price`,`Name`,`year`,`Country`,`TransmissionType`,`MeterType`,`BikeType`,`EngineType`,`Displacement`,`MaxPower`,`MaxToque`,`StarterSystem`,`FrSuspension`,`ReSuspension`,`FrTySize`,`ReTySize`,`FrontBrake`,`RearBrake`,`Length`,`Width`,`WheelBase`,`GroundClearance`,`SeatHeight`,`CurbWeight`,`Battery`,`HeadLamp`,`FuelTankCapacity`,`UnderSeatSpace`,`ValveSystem`,`BoreStroke`,`hieght`) VALUES('"+ModelID+"','"+brand+"','"+price+"','"+name1+"','"+year+"',"+country+"','"+ttype+"','"+mtype+"','"+btype+"','"+etype+"','"+displace+"','"+maxpower+"','"+maxtoque+"','"+system+"','"+fsuspension+"','"+rsuspension+"','"+ftire+",'"+rtire+"','"+fbrake+"','"+rbrake+"','"+length+"','"+width+"','"+wheel+"','"+ground+"','"+seathight+"','"+kerb+"','"+battry+"','"+hlamp+"','"+tank+"','"+seatspace+"','"+valve+"','"+bs+"','"+hieght+"')";
             
             stat.executeUpdate(sql);
            
             
             
          
             
          }
          catch(Exception e)
          {
             e.printStackTrace();
          }
  
        %>
    </body>
</html>

