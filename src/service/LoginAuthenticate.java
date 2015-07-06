package service;

import model.DatabaseConnection;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * Created by gunner on 7/2/15.
 */
public class LoginAuthenticate {
    DatabaseConnection db = new DatabaseConnection();

    public boolean authenticate(String username,String password){
        Connection connection = db.conn;

        try{
            Statement stm = connection.createStatement();
            String query = "select username,password from user where username='" + username + "'";
            ResultSet rs = stm.executeQuery(query);

            while(rs.next()){
                String u = rs.getString("username");
                String p = rs.getString("password");

                if(username.equals(u) && password.equals(p)){
                    //Login Success
                    System.out.print("login successful");
                    return true;
                }
                else{
                    //Login Failed
                    return false;
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}
