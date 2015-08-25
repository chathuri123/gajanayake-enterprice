
<%-- 
    Document   : Addcustomervalidate
    Created on : Aug 21, 2015, 9:54:37 AM
    Author     : windya yasas
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
pageEncoding="ISO-8859-1"%> 
<html> 
<head> 

</head> 
<body> 
<%!
    public static boolean isNumeric(String str)  
{  
  try  
  {  
    double d = Double.parseDouble(str);  
  }  
  catch(NumberFormatException nfe)  
  {  
    return false;  
  }  
  return true;  
}
  %>
<% 
String v = request.getParameter("value");
String f = request.getParameter("field");

 
String ter="Invalid email id"; 
String emp="please fill out the field";
String invalidYear="Cannot insert future year!";
String invalid_percentage = "Percentage value cannot be greater than 100%";


%> 

<% 

if(f.equals("fname1"))
{
    if(v.isEmpty())
    {
      %><%=emp%><%  
    }
        

  
}
if(f.equals("lname1"))
{
    if(v.isEmpty())
    {
    %><%=emp%><%
    }
}
if(f.equals("nic1"))
{
    if(v.isEmpty())
    {
      %><%=emp%><%    
    }
    else 
    {
  
        int length=v.length();
        if(length == 10)
        {
            char i= v.charAt(9);
            if(i=='v'||i=='V')
            {
                String upToNCharacters = v.substring(0, Math.min(v.length(), 8));
                if(isNumeric(upToNCharacters))
                {
                    
                  
                }
                else
                {
                    %><%="First 9 digits must be numeric"%><%   
                }
                
                
                
            }
            else
            {
              %><%="NIC last digit must v or V"%><%   
            }
           
        }
        else 
        {
           %><%="NIC number must have 10 digits"%><%  
        }
        
    }
        
     
}
if(f.equals("email"))
{
    if(v.isEmpty())
    {
    %><%=emp%><%
    }
}
if(f.equals("year"))
{
    if(v.isEmpty())
    {
      %><%=emp%><%  
    }
    else if(Integer.parseInt(v)>2015){
      %><%=invalidYear%><%  
    }

}

if(f.equals("body") || f.equals("engine") || f.equals("tire") || f.equals("overAll"))
{
    if(v.isEmpty())
    {
      %><%=emp%><%  
    }
    else if(Integer.parseInt(v)>100){
      %><%=invalid_percentage%><%  
    }

}

%> 



%> 


</body> 
</html> 