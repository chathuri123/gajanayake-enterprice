<%-- 
    Document   : AddSpareparts
    Created on : Jun 30, 2015, 5:46:57 PM
    Author     : Chathuri Lakmini 
--%>
<%@page import="javax.servlet.*"%>
<%@page import="javax.servlet.http.*"%>
<%@page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="content.jsp" %>

<script>

/*function btn() {
  var y = document.getElementById('fname');
  alert(y)

}*/

</script>

</head>
<body class="page page-id-39 page-template-default no-fittext basic">
 <%@include file="DB_Connector.jsp"%>


    <%
          
          String SparePartID=request.getParameter("SparePartID");
          String Subcat=request.getParameter("subcat");
          
          String Supplier=request.getParameter("supplier");
          Statement stmt3=conn.createStatement();
          
          String Bmodel=request.getParameter("modelNo");
          Statement stmt2=conn.createStatement();
          ResultSet rs2=stmt2.executeQuery("select m.ModelID from spareparts s,mbmodel m where m.ModelID=s.BModelID AND m.Name='"+Bmodel+"'");
          String model="";
          while(rs2.next())
            {
              model=rs2.getString("m.ModelID");
        
            }
          
          String Name=request.getParameter("Name");
          int Qty=Integer.parseInt(request.getParameter("qty"));
          double purprice=Double.parseDouble(request.getParameter("pprice"));
          double saleprice=Double.parseDouble(request.getParameter("sprice"));
          double unitcost=Double.parseDouble(request.getParameter("unitcost"));
          String ShellNo=request.getParameter("shellNo");
          String description=request.getParameter("descrip");
          
          Statement stat=conn.createStatement();
          String sql="update `gajanayake`.`spareparts` set Name='"+Name+"',Description='"+description+"',ShellNo='"+ShellNo+"',Quantity='"+Qty+"',unitcost='"+unitcost+"',SalePrice='"+saleprice+"',PurchasePrice='"+purprice+"',BModelID='"+model+"',SupplierID='"+Supplier+"' where SparePartID='"+SparePartID+"'";
          stat.executeUpdate(sql);
          
       
       
       
    %>
    


</body></html>

