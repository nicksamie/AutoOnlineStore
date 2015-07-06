package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * Created by gunner on 7/2/15.
 */
public class DatabaseConnection {

    String url = "jdbc:mysql://localhost:3306/automobilestore";
    String username = "root";
    String password = "root";

    public Connection conn;
    public DatabaseConnection(){
        try{

            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url,username,password);
            System.out.print("Connection Established...!!!");

        }catch (SQLException e){
            System.out.println("sql exception");
            e.printStackTrace();
        }catch( Exception e ) {
            System.out.println("Failed to load mySQL driver.");
            e.printStackTrace();
        }
    }
}
