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
 * Created by gunner on 7/3/15.
 */
public class QueryExtract extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DatabaseConnection db = new DatabaseConnection();
        Connection conn = db.conn;
        try {
            Statement stm = conn.createStatement();
            String queryGetMake = "SELECT distinct make from vehicle order by make asc limit 10";
           // String queryGetModel = "select model from vehicle";
            ResultSet rs = stm.executeQuery(queryGetMake);

            List<VehicleList> makeList = new ArrayList<VehicleList>();

            while(rs.next()){
                VehicleList vlist = new VehicleList();
                vlist.setMake(rs.getString("make"));
                makeList.add(vlist);
            }
            for(VehicleList m : makeList){
                System.out.println(m.getMake());
            }
            request.setAttribute("makeList",makeList);
            request.getRequestDispatcher("/view/pages/index.jsp").forward(request,response);
        }catch (SQLException e){
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
