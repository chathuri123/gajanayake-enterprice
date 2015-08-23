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
    private double tel; 
    
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
        this.tel=0;
        
    }
    public User(String firstName,String lastName,String email,String address,String nicNo,String password,String username,String DoB,double tel  )
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
        
    }
    
    public String genNameWithIni(String fname,String lname)
    {
        String nameWithIni="w.y pathirana";
        return nameWithIni;
    }
    protected int InsertData()
    {
        DbConnect Db= new DbConnect();
        
        return 2;
    }
    
    
    
    
    
    
    
    
    
}
