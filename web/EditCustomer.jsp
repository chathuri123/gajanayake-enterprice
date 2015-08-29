<%-- 
    Document   : EditCustomer
    Created on : Aug 26, 2015, 6:15:30 AM
    Author     : windya yasas
--%>
<%@include file="DB_Connector.jsp"%>  
<%
           
       
    
         
          String fname=request.getParameter("fname");
          String lname=request.getParameter("lname");
          String BDay=request.getParameter("BDay");
          String nic=request.getParameter("nic");
          String Address=request.getParameter("Address");
          double tel=Double.parseDouble(request.getParameter("tel"));
          String email=request.getParameter("email");
         
          
          
        
        
        
        
      //Increament ID    
      Statement stmt1 = conn.createStatement();
      int id=0;
      
      String userID=request.getParameter("id");
      String url="ViewCustomer1.jsp?ID="+userID;
     
     String fullname=fname+" "+lname;
     String password=userID;
     String nameWithIni=fname+" "+lname;
     String username=userID;
     double salary=0;
     double accBalance =0;
   
                 
            
            
          
         try
          { 
             Statement stat=conn.createStatement();
             
             String sql="UPDATE `gajanayake`.`user` SET `fname` = '"+fname+"', `BDay` = '"+BDay+"', `tel` = '"+tel+"', `Address` = '"+Address+"', `lname` = '"+lname+"', `password` = '"+password+"', `Email` = '"+email+"', `NIC` = '"+nic+"', `nameWithIni` = '"+nameWithIni+"', `username` = '"+username+"' WHERE `user`.`userID` = '"+userID+"'";
             stat.executeUpdate(sql);
             
              response.sendRedirect(url);
             session.setAttribute("noti","yes");
             
             
          
             
          }
          catch(Exception e)
          {
             e.printStackTrace();
          }
  
        %>