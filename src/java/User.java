




import java.sql.SQLException;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



/**
 *
 * @author windya yasas
 */
public class User 
{
    private String UserID;
    private String firstName;
    private String lastName;
    private String nameInitial;
    private String email;
    private String address;
    private String nicNo;
    private String password;
    private String username;
    private String DoB;
    private double salary;
    private double tel; 
    private double AccBalance;
    private int Admin;
    private int Employee;
    private int DataEntry;
    private int supplier;
    private int Customer;
    
    
    public User( )
    {
        this.UserID="";
        this.firstName="";
        this.lastName="";
        this.nameInitial="";
        this.email="";
        this.address="";
        this.nicNo="";
        this.password="";
        this.username="";
        this.DoB="";
        this.salary=0;
        this.tel=0;
        this.AccBalance=0;
        this.Admin=0;
        this.Employee=0;
        this.DataEntry=0;
        this.supplier=0;
        this.Customer=0;
        
        
        
    }
    public User(String firstName,String lastName,String email,String address,String nicNo,String password,String username,String DoB,double tel,int Admin,int Employee,int DataEntry,int supplier,int Customer  )
    {
        
        this.firstName=firstName;
        this.lastName=lastName;
        this.email=email;
        this.address=address;
        this.nicNo=nicNo;
        this.password=password;
        this.username=username;
        this.DoB=DoB;
        this.tel=tel;
        this.Admin=Admin;
        this.Employee=Employee;
        this.DataEntry=DataEntry;
        this.supplier=supplier;
        this.Customer=Customer;
        
    }
    
    public String genNameWithIni(String fname,String lname)
    {
        String nameWithIni="w.y pathirana";
        return nameWithIni;
    }
    
    protected boolean InsertData() throws SQLException
    {
      DbConnect Db= new DbConnect();   
      int id=0;
      String UserID="";
      String uID="";
      if(this.Admin==1)
      {
          uID="AD";
      }
      else if(this.Customer==1)
      {
          uID="CS";
      }
      else if(this.Employee==1)
      {
          uID="EM";
      }
      else if(this.DataEntry==1)
      {
          uID="DE";
      }
      else if(this.supplier==1)
      {
          uID="SP";
      }
      try{
      
      String sql = "SELECT userID FROM user ORDER BY userID DESC LIMIT 1";
      Db.query(sql);
       
      
  
         while(Db.query(sql).next())
            {    
                UserID = Db.query(sql).getString("userID");
            }
         Db.query(sql).close();
     }      
      catch(SQLException se){      
            se.printStackTrace();
      } 
     id=Integer.parseInt(UserID.substring(2));
     id=id+1;
     this.UserID=uID+""+id;
    
    
       
        String sql="INSERT INTO `gajanayake`.`user`(`userID`,`fname`,`lname`,`password`,`Email`,`NIC`,`nameWithIni`,`salary`,`AccBalance`,`Administrator`,`Employee`,`DataEntryOperator`,`Supplier`,`Customer`,`username`)"
                 +  " VALUES('"+UserID+"','"+this.firstName+"','"+this.lastName+"','"+this.password+"','"+this.email+"','"+this.nicNo+"','"+this.nameInitial+"','"+this.salary+"','"+this.AccBalance+"','"+this.Admin+"','"+this.Employee+"','"+this.DataEntry+"')";
        Db.insert(sql);
        if(Db.insert(sql)==1)
        {
           return true; 
        }
        else
        {
           return true;
        }
    }
    
    
    
    
    
    
    
    
    
}
