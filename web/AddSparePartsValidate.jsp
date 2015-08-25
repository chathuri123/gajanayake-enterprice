
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
pageEncoding="ISO-8859-1"%> 
<html> 
<head> 
<%@include file="DB_Connector.jsp"%>   
</head> 
<body> 
<% 
String v = request.getParameter("value");
String f = request.getParameter("field");

 
String ter="Invalid email id"; 
String emp="please fill out the field";



if(f.equals("subcat"))
{
    String CatID="";
      Statement stmt1 = conn.createStatement();
      ResultSet rs1 = stmt1.executeQuery("select CatID from Category where CatName='"+v+"'");
      while(rs1.next())
      {
         CatID = rs1.getString("CatID");
        
      }
    Statement stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery("select SubCatName from subcategory where CatID='"+CatID+"'");%>
    <%="<label>Sub-Category</label><br> " %>
    <%="<select name='SubCat' id='SubCat' style='width:250px'>"%>
        <% while(rs.next()) {%>

        <%="<option>"+rs.getString("SubCatName")+"</option>"%>
        
        <%}%>
    <%="</select>"%>
    

  
<%}

        
     


%> 


</body> 
</html> 