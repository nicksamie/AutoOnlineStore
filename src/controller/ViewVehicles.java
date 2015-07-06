package controller;

import model.DatabaseConnection;
import model.VehicleList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by gunner on 7/6/15.
 */
public class ViewVehicles extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DatabaseConnection db = new DatabaseConnection();
        Connection conn = db.conn;
        String make = request.getParameter("mf");
        try {
            Statement stm = conn.createStatement();
            String getVehicles = "SELECT make,model,price,vehicle_id,transmission from vehicle where make='" + make + "'";
            // String queryGetModel = "select model from vehicle";
            ResultSet rs = stm.executeQuery(getVehicles);

            List<VehicleList> vehicleLists = new ArrayList<VehicleList>();

            while(rs.next()){
                VehicleList vlist = new VehicleList();
                vlist.setMake(rs.getString("make"));
                vlist.setModel(rs.getString("model"));
                vlist.setPrice(rs.getInt("price"));
                vlist.setVehicle_id(rs.getString("vehicle_id"));
                vlist.setTransmission(rs.getString("transmission"));
                vehicleLists.add(vlist);
            }
            for(VehicleList m : vehicleLists){
                System.out.println(m.getMake());
            }
            request.setAttribute("vehicleLists",vehicleLists);
            request.getRequestDispatcher("/view/pages/viewVehicles.jsp").forward(request,response);
        }catch (SQLException e){
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
