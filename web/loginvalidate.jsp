<%-- 
    Document   : loginvalidate
    Created on : Jul 4, 2015, 5:32:49 AM
    Author     : windya yasas
--%>

<%
String value = request.getParameter("query");
String formfield  = request.getParameter("field");
String EmUsername ="";
// Check Valid or Invalid user name when user enters user name in username input field.
if (formfield == "log")
{
   if (value==null)
   {
       EmUsername="Please enter the username";
   }
   
}


// Check Valid or Invalid password when user enters password in password input field.
if (formfield == "pwd") 
{
  if (value==null)
  {
      out.println("Please enter the password ");
  }
}
// Check Valid or Invalid email when user enters email in email input field.

%>
<%=EmUsername%>