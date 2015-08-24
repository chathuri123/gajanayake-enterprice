
<head> 
<%@include file="DB_Connector.jsp"%>   
</head> 
<body> 
<% 
String v = request.getParameter("value");
String f = request.getParameter("field");

 




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
if(f.equals("MbModel"))
{
    String BrandID="";
      Statement stmt1 = conn.createStatement();
      ResultSet rs1 = stmt1.executeQuery("select * from mbbrand where Bname='"+v+"'");
      while(rs1.next())
      {
         BrandID = rs1.getString("BrandID");
        
      }
    Statement stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery("select Name from mbmodel where BrandID='"+BrandID+"'");%>
    <%="<label>Bike Model</label><br> " %>
    <%="<select name='bmodel' id='bmodel' style='width:250px'>"%>
        <% while(rs.next()) {%>

        <%="<option>"+rs.getString("Name")+"</option>"%>
        
        <%}%>
    <%="</select>"%>
    

  
<%}

        
     


%> 


</body> 
</html> <%-- 
    Document   : sellBikeValidate
    Created on : Aug 24, 2015, 10:14:55 AM
    Author     : windya yasas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
