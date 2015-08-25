<%-- 
    Document   : TradeInBikeDAO
    Created on : Aug 25, 2015, 9:30:51 AM
    Author     : Dragon_Host
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="javax.servlet.*"%>
<%@page import="javax.servlet.http.*"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>

    </head>
    <body>
        <%@include file="DB_Connector.jsp"%>

        <% 
        
        String cusIdnName = request.getParameter("cusIdnName");
//            String bmodel = request.getParameter("bmodel");
            String engineNo = request.getParameter("engineNo");
            String chassisNo = request.getParameter("chassisNo");
            int registerYear = Integer.parseInt(request.getParameter("registerYear"));
            int bodyCondition = Integer.parseInt(request.getParameter("bodyCondition"));
            int engineCondition = Integer.parseInt(request.getParameter("engineCondition"));
            int tireCondition = Integer.parseInt(request.getParameter("tireCondition"));
            int overallCondition = Integer.parseInt(request.getParameter("overallCondition"));
            String descrip = request.getParameter("descrip");

         
            
            String tradeId = "TR000001";
            String customerID = cusIdnName.split(" -")[0];
            String bikeModelId = "M123456";
                   
            //get bike model id from it's name
//             Statement stBModel = conn.createStatement();
//             ResultSet rsBModel = stBModel.executeQuery("select m.ModelID from mbmodel m where m.name=" + bmodel + "");
//                while (rsBModel.next()) {
//                    bikeModelId = rsBModel.getString("m.ModelID");
//                }
            //<editor-fold defaultstate="collapsed" desc="GenarateID">
            Integer id = null;
            String cid = null;
            String final_id = null;

            try {

                Statement st = conn.createStatement();
                Statement ste = conn.createStatement();
                ResultSet rs = st.executeQuery("SELECT MAX(id) as ID FROM tradeinbike");

                while (rs.next()) {
                    id = rs.getInt("id");
                }
                ResultSet rss = ste.executeQuery(
                        "SELECT TradeId FROM tradeinbike WHERE id= " + id
                        + "");

                while (rss.next()) {
                    cid = rss.getString("TradeId");
                }

                if (id != 0) {
                    String original = cid.split("R")[1];
                    int i = Integer.parseInt(original) + 1;

                    if (i < 10) {
                        final_id = "TR00000" + i;
                    } else if (i >= 10 && i < 100) {
                        final_id = "TR0000" + i;
                    } else if (i >= 100 && i < 1000) {
                        final_id = "TR000" + i;
                    } else if (i >= 1000 && i < 10000) {
                        final_id = "TR00" + i;
                    } else if (i >= 10000 && i < 100000) {
                        final_id = "TR0" + i;
                    } else if (i >= 100000 && i < 1000000) {
                        final_id = "TR" + i;
                    }
                    tradeId = final_id;

                }
            } catch (SQLException e) {
                
            }

          

//</editor-fold>
            try {
                Statement stat = conn.createStatement();
                String sql = "INSERT INTO tradeinbike(TradeId, CustomerId, BModelID, EngineNo, ChassisNo, RegisteredYear, BodyCondition, EngineCondition, TireCondition, OverollCondition, Description) VALUES('" + tradeId + "','" + customerID + "','" + bikeModelId + "','" + engineNo + "','" + chassisNo + "','" + registerYear + "','" + bodyCondition + "','" + engineCondition + "','" + tireCondition + "','" + overallCondition + "','" + descrip + "')";
//                String sql = "Insert into tradeinbike(TradeId, CustomerId, BModelID, EngineNo, ChassisNo, RegisteredYear, BodyCondition, EngineCondition, TireCondition, OverollCondition, Description) VALUES ('"+ SparePartID + "', 'CS100014', 'M123456', 'ENGINE500200', 'chasis8500', 2015, '80', '60', '80', '50', 'Good Condition Bike.')";
                
                stat.executeUpdate(sql);
                %><%="Successfuly Added"%><%

            } catch (Exception e) {
                e.printStackTrace();
            }

        %>
    </body>
</html>

