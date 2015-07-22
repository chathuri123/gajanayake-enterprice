<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 

<html> 
<head> 
<title>Connection with mysql database</title>
</head> 
<body>
<h1>Connection status</h1>
<% 
    Connection conn = null; 
try {
            String connectionURL = "jdbc:mysql://localhost:3306/gajanayakaent";
            
            Class.forName("com.mysql.jdbc.Driver").newInstance(); 
            conn = DriverManager.getConnection(connectionURL, "root", "");
            if(!conn.isClosed())
                 out.println("Successfully connected to " + "MySQL server using TCP/IP...");
          
        }catch(Exception ex){
            out.println("Unable to connect to database"+ex);
        }   
%>
</font>
</body> 
</html>