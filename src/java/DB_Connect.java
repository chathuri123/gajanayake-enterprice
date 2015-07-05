

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author windya yasas
 */

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;


/**
 *
 * @author windya yasas
 */
public class DB_Connect 

{
    static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
   static final String DB_URL = "jdbc:mysql://localhost:3306/gajanayakaent";

   
   static final String USER = "root";
   static final String PASS = "";

 
      Statement stmt = null; 
    public static Connection ConnectorDB()
            {
              Connection conn = null;  
            
                try
                {
                Class.forName("com.mysql.jdbc.Driver");

      //STEP 3: Open a connection
                System.out.println("Connecting to a selected database...");
                conn = DriverManager.getConnection(DB_URL, USER, PASS);
                System.out.println("Connected database successfully...");
                return conn;
                }
                catch(Exception e)
                {
                    return null;
                }
      
            }
            
    
}

    


