<html>
<head> 
<%@include file="DB_Connector.jsp"%>   
</head> 
<body> 
<% 
String v = request.getParameter("value");
String f = request.getParameter("field");

 


if(f.equals("Customer1"))
{
    session.setAttribute("userID",v);
    
    
    
}


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
    <select name='bike' id='bike' style='width:450px' onchange='JavaScript:xmlhttpVPost("price","bike","sellBikeValidate.jsp")'>
        <% while(rs.next()) {%>

        <option value="<%=rs.getString("BikeID")%>">Engine No - <%=" "+rs.getString("EngineNo")+" | "%>Chassis No - <%=" "+rs.getString("ChasisNo")%></option>
        
        <%}%>
    <%="</select>"%>
      
        
<%}     

if(f.equals("price"))
{
      String modelID="";
      double price=0;
      String modelName="";
      session.setAttribute("BikeID",v);
      Statement stmt1 = conn.createStatement();
      ResultSet rs1 = stmt1.executeQuery("select m.Name,m.price,m.ModelID from motorbikes b,mbmodel m where m.ModelID=b.ModelID and b.BikeID='"+v+"'");
      
      while(rs1.next())
      {
         modelID = rs1.getString("ModelID");
         price =Double.parseDouble(rs1.getString("price"));
         modelName=rs1.getString("Name");
        
      }
      session.setAttribute("price",price);
      
      %><p>Bike Model ID = <%=" "+modelID%></p>
        <p>Bike ID = <%=" "+v%></p>
        <p>Model Name = <%=" "+modelName%></p>
        <p>price = <%=" Rs "+price%></p>
        
    
<p ><label>Discount -</label> 
<input  type="number" name="discount" onchange='JavaScript:xmlhttpVPost("discount1","discount","sellBikeValidate.jsp")'   size="80" aria-required="true" id="discount" required placeholder="Enter the Discount"></p>

        <div id="discount1"></div>
      <%
            
      

}
if(f.equals("discount1"))
{
  
     double price =Double.parseDouble(session.getAttribute("price").toString());
     
    double dis=0;
    dis=Double.parseDouble(v);
    price=price-(price * dis/100);
    session.setAttribute("price",price);
    session.setAttribute("discount",dis);
      %><%="<b>New price = Rs "+price+"</b>"%><%
}
if(v.equals("Leasing"))
{ %>
    <p><label style="color:white">Leasing Company</label><br>
    <%Statement stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery("select * from leasingcompany ");%>
    <select name='leaseC' id='leaseC' style='width:450px' onchange='JavaScript:xmlhttpVPost("lPlane","leaseC","sellBikeValidate.jsp")'>
        <% while(rs.next()) {%>

        <option  value="<%=rs.getString("leasingID")%>"><%=rs.getString("Name")%></option>
        
        <%}%>
    <%="</select>"%>
    
</p>
<p><div id="lPlane"></div></p>
    
<%}
if(f.equals("lPlane"))
{ %>
    <p><label style="color:white">Leasing Plan</label><br>
    <%Statement stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery("select * from leasingplans where LeasingID='"+v+"' ");%>
    <select name='leaseP' id='leaseP' style='width:450px' onchange='JavaScript:xmlhttpVPost("instalment","leaseP","sellBikeValidate.jsp")'>
        <% while(rs.next()) {%>

        <option  value="<%=rs.getString("PlanID")%>"><%=rs.getString("Name")%></option>
        
        <%}%>
    <%="</select>"%>
    <p style="color:white"><div id="instalment"></div></p>
    
    
<%}
if(f.equals("instalment"))
{ %>
    <%Statement stmt = conn.createStatement();
    double rate=0;
    double rdownPayment=0;
    double downPayment=0;
    double price =Double.parseDouble(session.getAttribute("price").toString());
    session.setAttribute("lPlanID",v);
    session.setAttribute("downPayment",downPayment);
    ResultSet rs = stmt.executeQuery("select * from leasingplans where PlanID='"+v+"' ");%>
        <% while(rs.next()) {

       rate=Double.parseDouble(rs.getString("rate"));
       rdownPayment=Double.parseDouble(rs.getString("minDownPayment"));
        
       }
      
         price=price+(price*rate/100);
         session.setAttribute("leasep",price);
         downPayment=price*rdownPayment/100;
         session.setAttribute("downPayment",downPayment);
         
        %>
        <p>Rate :<%=" "+rate+"%"%></p>

        <p>Minimum down Payment : <%=" Rs "+downPayment%></p>
      
       
    <p ><label>Down Payment</label> 
<input  type="number" name="Dpay" onchange='JavaScript:xmlhttpVPost("Dpayval","Dpay","sellBikeValidate.jsp")'   size="80" aria-required="true" id="Dpay" required placeholder="Enter the down payment">
    <div id="Dpayval"></div> 
    </p>
<p ><label>No of years</label> 
<input  type="number" name="lyears" onchange='JavaScript:xmlhttpVPost("lyears1","lyears","sellBikeValidate.jsp")'   size="80" aria-required="true" id="lyears" required placeholder="Enter the No of years">
    <div id="lyears1"> </div> 
    </p>
          
       
   
    
<%}
if(f.equals("Dpayval"))
{
    double downPayment=Double.parseDouble(session.getAttribute("downPayment").toString());
    double cusDpay=Double.parseDouble(v);
    double cusDpay1=0;
    
    if (cusDpay<downPayment)
    {
        %><%="<p style='color:red'>Insufficient down payment<p>"%><%
    }
    else
    {
        cusDpay1=cusDpay;
        %><%=%><%
    }
    session.setAttribute("payment",cusDpay1);
    
}
if(f.equals("lyears1"))
{
    double downPayment=Double.parseDouble(session.getAttribute("cusDpay").toString());
    String lPlanID=session.getAttribute("lPlanID").toString();
    int years=Integer.parseInt(v);
    int maxYears=0;
    double monthlyPay=0;
    double price=Double.parseDouble(session.getAttribute("leasep").toString());
    Statement stmt = conn.createStatement();
     ResultSet rs = stmt.executeQuery("select * from leasingplans where PlanID='"+lPlanID+"' ");
        while(rs.next()) {

       maxYears=Integer.parseInt(rs.getString("NoOfyears"));
        }
    
    
    if (years>maxYears)
    {
        %><%="<p style='color:red'>Lease must not exceed more than "+maxYears+" years  <p>"%><%
    }
    else
    {
      monthlyPay=price-downPayment/(years*12);
      session.setAttribute("monthlyPay",monthlyPay);
      
      %><%="<p style='color:green'>Monthly Payment "+"Rs "+monthlyPay+"<p>"%><%
      
    }
    
}


if(v.equals("Cash"))
{ %>
    <p><label>Cash Company</label><br>
    <%Statement stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery("select * from leasingcompany ");%>
    <select name='leaseC' id='leaseC' style='width:450px' onchange='JavaScript:xmlhttpVPost("price","leaseC","sellBikeValidate.jsp")'>
        <% while(rs.next()) {%>

        <option value="<%=rs.getString("leasingID")%>"><%=rs.getString("Name")%></option>
        
        <%}%>
    <%="</select>"%>
    </p>
    <p>Least Down payment : </p>
<p><label>No Of years</label><br>
    <select name="BBrand" id="BBrand" style="width:150px"></select>
    </p>
    <p>Estimated monthly payment : </p>
    <p class="form-submit">

</p>	
<%}

%> 


</body> 

</html>
