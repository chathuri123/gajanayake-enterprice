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


</script>

</head>
<body class="page page-id-39 page-template-default no-fittext basic">
 <%@include file="DB_Connector.jsp"%>


    <%
          
          String SparePartID=request.getParameter("SparePartID");
          String Subcat=request.getParameter("subcat");
          
         
          
          String Bmodel=request.getParameter("modelNo");
          
          String Supplier=request.getParameter("supplier");
          
          String Name=request.getParameter("Name");
          int Qty=Integer.parseInt(request.getParameter("qty"));
          double purprice=Double.parseDouble(request.getParameter("pprice"));
          double saleprice=Double.parseDouble(request.getParameter("sprice"));
          double unitcost=Double.parseDouble(request.getParameter("unitcost"));
          String ShellNo=request.getParameter("shellNo");
          String description=request.getParameter("descrip");
          
          Statement stat=conn.createStatement();
          String sql="update `gajanayake`.`spareparts` set Name='"+Name+"',Description='"+description+"',ShellNo='"+ShellNo+"',Quantity='"+Qty+"',unitcost='"+unitcost+"',SalePrice='"+saleprice+"',PurchasePrice='"+purprice+"',BModelID='"+Bmodel+"',SupplierID='"+Supplier+"',SubCategory='"+Subcat+"' where SparePartID='"+SparePartID+"'";
          stat.executeUpdate(sql);
           session.setAttribute("noti","yes");
            response.sendRedirect("ViewSpareParts1.jsp?spID="+SparePartID);
       
       
       
    %>
    


</body></html>

