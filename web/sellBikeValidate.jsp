<html>
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
    <select name='bmodel' id='bmodel' style='width:250px' onchange='JavaScript:xmlhttpVPost("Mbike","bmodel","sellBikeValidate.jsp")' >
        <% while(rs.next()) {%>

        <%="<option value='"+rs.getString("Name")+"'>"+rs.getString("Name")+"</option>"%>
        
        <%}%>
    <%="</select>"%>
    
    

  
<%}
if(f.equals("Mbike"))
{
  String modelID="";
      Statement stmt1 = conn.createStatement();
      ResultSet rs1 = stmt1.executeQuery("select ModelID from mbmodel where Name='"+v+"'");
      while(rs1.next())
      {
         modelID = rs1.getString("ModelID");
        
      }
    Statement stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery("select * from motorbikes where ModelID='"+modelID+"'");%>
    <%="<label>Engine and Chassis no</label><br> " %>
    <%="<select name='bike' id='bike' style='width:420px'>"%>
        <% while(rs.next()) {%>

        <option value="<%=rs.getString("BikeID")%>">Engine No - <%=" "+rs.getString("EngineNo")+" | "%>Chassis No - <%=" "+rs.getString("ChasisNo")%></option>
        
        <%}%>
    <%="</select>"%>
      
        
<%}     


%> 


</body> 

</html>
