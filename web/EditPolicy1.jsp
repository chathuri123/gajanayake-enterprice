
        <%@include file="DB_Connector.jsp" %>
        <%
            
String plcmp=request.getParameter("plcmp");
String plname=request.getParameter("plname");
String value_=request.getParameter("value_");
String InPID=request.getParameter("id_");

     
      
      Statement stat = conn.createStatement();
      stat = conn.createStatement();
        String sql = "";
      String msg ="";
      ResultSet rs;
      int count = 0;
 try{
      
     
      
        sql = "SELECT * FROM insurancepolicy where name='"+plname+"' and PolicyID !='"+InPID+"'";
       
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
          
          
         sql="UPDATE `insurancepolicy` SET `name`='"+plname+"',`value`="+value_+",`InsuranceID`= ( select InsuranceID from insurancecompany where Name = '"+plcmp+"' ) WHERE PolicyID = '"+InPID+"' ";
          
         
          
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
   
