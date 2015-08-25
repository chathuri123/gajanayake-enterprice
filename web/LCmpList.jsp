<%@ page import="java.util.*"%>

<%@ include file="DB_Connector.jsp" %>
      

<%
   
   Statement stat = conn.createStatement();
   stat = conn.createStatement();
   String sql = "";
String msg = "";
   ResultSet rs;
   int count = 0;
   try {

       

            sql = "SELECT * FROM leasingcompany";

       rs = stat.executeQuery(sql);
            while (rs.next()) {
                
                
                
                if(msg.isEmpty()){msg=rs.getString("Name");}
                else{msg=msg+"|"+rs.getString("Name");}
                
                
                
          
           
           
           
          count++;
           
       }
            

          out.println(msg);
       
                 
               
            rs.close();
           
       




   } catch (Exception e) {
       //Handle errors for Class.forName
       e.printStackTrace();
   } finally {
       //finally block used to close resources
       try {
           if (stat != null)
               conn.close();
       } catch (SQLException se) {} // do nothing
       try {
           if (conn != null)
               conn.close();
       } catch (SQLException se) {
           se.printStackTrace();
       } //end finally try
   } //end try
%>
   
