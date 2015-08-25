
        <%@include file="DB_Connector.jsp" %>
        <%
            
String plcmp=request.getParameter("plcmp");
String plname=request.getParameter("plname");

String InPID=request.getParameter("id_");
String down =request.getParameter("down");
     String year_=request.getParameter("year_");
String rate_=request.getParameter("rate_");
      
      Statement stat = conn.createStatement();
      stat = conn.createStatement();
        String sql = "";
      String msg ="";
      ResultSet rs;
      int count = 0;
 try{
      
     
      
        sql = "SELECT * FROM leasingplans where Name='"+plname+"' and PlanID !='"+InPID+"'";
       
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
          
          
         sql="UPDATE `leasingplans` SET `Name`='"+plname+"',`rate`="+rate_+",`NoOfyears`="+year_+",`LeasingID`=( select LeasingID from leasingcompany where Name = '"+plcmp+"' ),`minDownPayment`="+down+" WHERE PlanID ='"+InPID+"'";
          
         
          
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
   
