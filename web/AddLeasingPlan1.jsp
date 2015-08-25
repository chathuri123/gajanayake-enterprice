
        <%@include file="DB_Connector.jsp" %>
        <%
            
String plcmp=request.getParameter("plcmp");
String plname=request.getParameter("plname");

String down =request.getParameter("down");
String InPID="";
String year_=request.getParameter("year_");
String rate_=request.getParameter("rate_");
     
      
      Statement stat = conn.createStatement();
      stat = conn.createStatement();
        String sql = "";
      String msg ="";
      ResultSet rs;
      int count = 0;
 try{
      
     
      
        sql = "SELECT * FROM leasingplans where Name='"+plname+"' ";
       
     rs = stat.executeQuery(sql);
          
          while(rs.next())
          {
            
            count++;
          }
         
          if(count>=1)
          {msg="Name already exists..\n";}
          
          count=0;
          rs.close();
          
            
            
             
          
          if(msg.isEmpty())
          {
          
          sql = "SELECT * FROM leasingplans ORDER BY PlanID DESC LIMIT 1";
          
            rs = stat.executeQuery(sql);
           count= 0;
          while(rs.next())
          {
            InPID=rs.getString("PlanID");
           

            count++;
          }
         
          if(count>=1)
          {
         int no = Integer.parseInt(InPID.substring(2));
          no=no+1;
        
        
        InPID = "LP"+ Integer.toString(no);
            
          }
          else
          {
             InPID = "LP1";
          
          }
          
          
           sql="INSERT INTO `leasingplans`(`PlanID`, `Name`, `LeasingID`, `minDownPayment`,`NoOfyears`,`rate`) VALUES ('"+InPID+"','"+plname+"',( select LeasingID from leasingcompany where Name = '"+plcmp+"' ),"+down+","+year_+","+rate_+")";
             
             stat.executeUpdate(sql);
          
          out.print("ok");
          
          }
          else
          {
          
          
          out.print(msg);
          
          
          }
          
            
            
        
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
        
           
     
   }catch(Exception e){
      //Handle errors for Class.forName
      e.printStackTrace();
   }finally{
      //finally block used to close resources
      try{
         if(stat!=null)
            conn.close();
      }catch(SQLException se){
      }// do nothing
      try{
         if(conn!=null)
            conn.close();
      }catch(SQLException se){
         se.printStackTrace();
      }//end finally try
   }//end try
   
   
%>
   
