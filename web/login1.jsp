<%-- 
    Document   : login1.jsp
    Created on : Jul 2, 2015, 6:45:46 AM
    Author     : windya yasas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
     
    </head>
    <body>
        <%@include file="DB_Connector.jsp" %>
        <%
            
String user=request.getParameter("log");
String pass=request.getParameter("pwd");
String name="";
String UserID="";

     
      
      Statement stat = conn.createStatement();
      stat = conn.createStatement();
 try{
      //STEP 2: Register JDBC driver
      
      String sql = "SELECT * FROM user where username='"+user+"' and  password='"+pass+"'";
      
      try
        {
          ResultSet rs = stat.executeQuery(sql);
          int count= 0;
          while(rs.next())
          {
            name=rs.getString("username");
            pass=rs.getString("password");
            UserID=rs.getString("userID");

            count++;
          }
          session.setAttribute("userid", UserID);
          session.setAttribute("EmpUserName",name);
          if(count==1)
          {
          String ID= UserID.substring(0,2);
          System.out.println(ID);
        
            if("EM".equals(ID))
          {
                
               response.sendRedirect("index.jsp");
                
               
                
          }
            if("AD".equals(ID))
           {
                
                
               response.sendRedirect("index.jsp");  
               
                
          }
            
          }
          else
          {
              response.sendRedirect("login.jsp");   
          
          }
          response.sendRedirect("login.jsp");   
        }
           catch(Exception e)
                {
                
                   
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
   System.out.println("Goodbye!");
   
%>
    </body>
</html>
