
        <%@include file="DB_Connector.jsp" %>
        <%
            
String plcmp=request.getParameter("plcmp");
String plname=request.getParameter("plname");
String value_=request.getParameter("value_");
String InPID="";

     
      
      Statement stat = conn.createStatement();
      stat = conn.createStatement();
        String sql = "";
      String msg ="";
      ResultSet rs;
      int count = 0;
 try{
      
     
      
        sql = "SELECT * FROM insurancepolicy where name='"+plname+"' ";
       
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
          
          sql = "SELECT * FROM insurancepolicy ORDER BY PolicyID DESC LIMIT 1";
          
            rs = stat.executeQuery(sql);
           count= 0;
          while(rs.next())
          {
            InPID=rs.getString("PolicyID");
           

            count++;
          }
         
          if(count>=1)
          {
         int no = Integer.parseInt(InPID.substring(2));
          no=no+1;
        
        
        InPID = "IP"+ Integer.toString(no);
            
          }
          else
          {
             InPID = "IP1";
          
          }
          
          
           sql="INSERT INTO `insurancepolicy`(`PolicyID`, `name`, `value`, `InsuranceID`) VALUES ('"+InPID+"','"+plname+"',"+value_+",( select InsuranceID from insurancecompany where Name = '"+plcmp+"' ))";
             
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
   
