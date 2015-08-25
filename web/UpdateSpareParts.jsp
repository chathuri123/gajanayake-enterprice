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
          
        /*  String SparePartID=request.getParameter("SparePartID");
          String Subcat=request.getParameter("subcat");
          
          
          
          String Bmodel=request.getParameter("modelNo");
          
          String Supplier=request.getParameter("supplier");
          
          String Name=request.getParameter("Name");
          int Qty=Integer.parseInt(request.getParameter("qty"));
          double purprice=Double.parseDouble(request.getParameter("pprice"));
          double saleprice=Double.parseDouble(request.getParameter("sprice"));
          double unitcost=Double.parseDouble(request.getParameter("unitcost"));
          String ShellNo=request.getParameter("shellNo");
          String description=request.getParameter("descrip");*/
       
          String SparePartID="SP100005";
         String Subcat="SC100004";
         String Bmodel="BM123456";
         String Supplier="SU100002";
         String Name="sdfvs";
         double Qty=12;
         double purprice=2;
         double saleprice=21;
         double unitcost=12;
         String ShellNo="cwd";
         String description="wae";
          Statement stat=conn.createStatement();
         // String sql="update `gajanayake`.`spareparts` set Name='"+Name+"',Description='"+description+"',ShellNo='"+ShellNo+"',Quantity='"+Qty+"',unitcost='"+unitcost+"',SalePrice='"+saleprice+"',PurchasePrice='"+purprice+"',BModelID='"+Bmodel+"',SupplierID='"+Supplier+"',SubCategory='"+Subcat+"' where SparePartID='"+SparePartID+"'";
          String sql="UPDATE `gajanayake`.`spareparts` SET `Quantity` = '"+Qty+"', `SubCategory` = '"+Subcat+"', `PurchasePrice` = '"+purprice+"', `ShellNo` = '"+ShellNo+"', `Description` = '"+description+"', `SupplierID` = '"+Supplier+"', `unitcost` = '"+unitcost+"', `SalePrice` = '"+saleprice+"', `Name` = '"+Name+"',`BModelID` = '"+Bmodel+"' WHERE `spareparts`.`SparePartID` = '"+SparePartID+"'";
          String url="ViewSpareParts1.jsp?spID="+SparePartID;
          response.sendRedirect(url);
          session.setAttribute("noti","yes");
       
       
       
    %>
    


</body></html>

