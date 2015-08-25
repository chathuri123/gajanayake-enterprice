
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
<% 
String v = request.getParameter("value");
String f = request.getParameter("field");

 
String ter="Invalid email id"; 
String emp="please fill out the field";

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
        char i= v.charAt(9);
        int length=v.length();
        if(length != 10)
        {
           %><%="NIC number must have 10 digits"%><%  
        }
        else if(i !='v')
        {
          %><%="Last Letter must v"%><%    
        }
        
    }
        
     
}
if(f.equals("lname1"))
{
    if(v.isEmpty())
    {
    %><%=emp%><%
    }
}

%> 


</body> 
</html> 