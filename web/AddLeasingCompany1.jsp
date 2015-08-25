
        <%@include file="DB_Connector.jsp" %>
        <%
            
String name=request.getParameter("name_");
String regno=request.getParameter("regno_");
String address=request.getParameter("address_");
String telh=request.getParameter("telh_");


String InCmpID="";

     
      
      Statement stat = conn.createStatement();
      stat = conn.createStatement();
        String sql = "";
      String msg ="";
      ResultSet rs;
      int count = 0;
 try{
      //STEP 2: Register JDBC driver
      
      //
     
      
        sql = "SELECT * FROM leasingcompany where Name='"+name+"' ";
       
     rs = stat.executeQuery(sql);
          
          while(rs.next())
          {
            
            count++;
          }
         
          if(count>=1)
          {msg="Name already exists..\n";}
          
          count=0;
          rs.close();
          
            
            
               sql = "SELECT * FROM leasingcompany where Address='"+address+"' ";
       
     rs = stat.executeQuery(sql);
         
          while(rs.next())
          {
            
            count++;
          }
         
          if(count>=1)
          {msg=msg+"Address already exists..\n";}
          
          count=0;
          rs.close();
            
            
            
            sql = "SELECT * FROM leasingcompany where TelNo="+telh+" ";
       
     rs = stat.executeQuery(sql);
         
          while(rs.next())
          {
            
            count++;
          }
         
          if(count>=1)
          {msg=msg+"TelNo already exists..\n";}
          
          count=0;
          rs.close();
            
            
             sql = "SELECT * FROM leasingcompany where C_RegNo='"+regno+"' ";
       
     rs = stat.executeQuery(sql);
         
          while(rs.next())
          {
            
            count++;
          }
         
          if(count>=1)
          {msg=msg+"RegNo already exists..\n";}
          
          count=0;
          rs.close();
          
          
          
          if(msg.isEmpty())
          {
          
          sql = "SELECT * FROM leasingcompany ORDER BY LeasingID DESC LIMIT 1";
          
            rs = stat.executeQuery(sql);
           count= 0;
          while(rs.next())
          {
            InCmpID=rs.getString("LeasingID");
           

            count++;
          }
         
          if(count>=1)
          {
          
          int no = Integer.parseInt(InCmpID.substring(2));
       
          no=no+1;
        
        
        InCmpID = "LS"+ Integer.toString(no);
            
          }
          else
          {
             InCmpID = "LS1";
          
          }
          
          
           sql="INSERT INTO `leasingcompany`(`LeasingID`, `TelNo`, `Name`, `Address`, `C_RegNo`) VALUES ('"+InCmpID+"',"+telh+",'"+name+"','"+address+"','"+regno+"')";
          System.out.print(sql);
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
   
