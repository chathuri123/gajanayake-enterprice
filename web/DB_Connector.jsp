<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 


<% 
    Connection conn = null; 
try {
            String connectionURL = "jdbc:mysql://localhost:3306/gajanayake";
            
            Class.forName("com.mysql.jdbc.Driver").newInstance(); 
            conn = DriverManager.getConnection(connectionURL, "root", "");
            if(!conn.isClosed())
                 out.println("");
          
        }catch(Exception ex){
            out.println("Unable to connect to database"+ex.getMessage());
        }   
%>
