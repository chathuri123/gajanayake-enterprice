
        <%@include file="DB_Connector.jsp" %>
        <%
            
String id=request.getParameter("id");


     
      
      Statement stat = conn.createStatement();
      stat = conn.createStatement();
        String sql = "";
      String msg ="";
      ResultSet rs;
      int count = 0;
 try{
      //STEP 2: Register JDBC driver
      
      
          
            
          
          
          
           sql="DELETE FROM leasingcompany where LeasingID='"+id+"'";
             
             stat.executeUpdate(sql);
          
          out.print("ok");
          
          
          
          
            
            
        
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
        
           
     
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
   
