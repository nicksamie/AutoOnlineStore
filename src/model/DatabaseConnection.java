package model;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * Created by gunner on 5/29/15.
 */
public class DatabaseConnection {

        String url = "jdbc:mysql://localhost:3306/automobilestore";
        String username = "root";
        String password = "root";

    public Connection conn;
    public Connection getConnection()
    {
        return  conn;
    }
    public DatabaseConnection(){
        try{
           //Open a connection
            System.out.print("Connecting to a selected database...");
            conn = DriverManager.getConnection(url, username, password);
            System.out.print("Connection Established...!!!");

        }catch (SQLException e){
            //Handle errors for JDBC
            e.printStackTrace();
        }catch( Exception e ) {
            System.out.println("Failed to load mySQL driver.");
            e.printStackTrace();
        }
    }
    }
