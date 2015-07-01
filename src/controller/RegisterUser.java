package controller;

import model.DatabaseConnection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Created by gunner on 6/3/15.
 */
public class RegisterUser extends HttpServlet {
    //DatabaseConnection db = new DatabaseConnection();
    //Connection conn = db.getConnection();
    String firstname = null;
    String lastname = null;
    String gender = null;
    String email = null;
    String password = null;
    String address = null;
    String landlineph = null;
    String mobileph = null;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DatabaseConnection db = new DatabaseConnection();
        Connection conn = db.getConnection();

        firstname = request.getParameter("firstname");
        lastname = request.getParameter("lastname");
        gender = request.getParameter("gender");
        email = request.getParameter("email");
        password = request.getParameter("password");
        address = request.getParameter("address");
        landlineph = request.getParameter("landlineph");
        mobileph = request.getParameter("mobileph");

        System.out.print("name"+firstname);
/*
        String[] user = new String[5];
        user[0] = firstname;
        user[1] = lastname;
        user[2] = gender;
        user[3] = email;
        user[4] = password;
        user[5] = address;
        user[6] = landlineph;
        user[7] = mobileph;*/
        try {
            String query = "insert into user (firstname,lastname,gender,email,password,address,landlineph,mobileph) values (?,?,?,?,?,?,?,?)";
            System.out.println("query"+query);
            PreparedStatement insertUser = conn.prepareStatement(query);
            insertUser.setString(1,firstname);
            insertUser.setString(2,lastname);
            insertUser.setString(3,gender);
            insertUser.setString(4,email);
            insertUser.setString(5,password);
            insertUser.setString(6,address);
            insertUser.setString(7,landlineph);
            insertUser.setString(8,mobileph);
            int result = insertUser.executeUpdate();
            if(result>0){
                System.out.print("Items Inserted in Database Successfully..!!!");
            }
            else {
                System.out.print("Insertion Failed..!!!");
            }
        }catch (SQLException e) {
            e.printStackTrace();
        }
//        response.sendRedirect();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher resisterDispatcher = request.getRequestDispatcher("/view/registerUser.jsp");
        resisterDispatcher.forward(request,response);
    }

    public void insertIntoDatabase(){}
    /*public void saveUserInDatabase(String[] person) {
        String firstName = person[0];
        String lastName = person[1];
        String phone = person[2];
        String email = person[3];
        String person_group = person[4];

        try {
            String query = "insert into person(firstname,lastname,phone,email,p_group) values (?,?,?,?,?)";
            PreparedStatement insertEvent = conn.prepareStatement(query);
            insertEvent.setString(1, firstName);
            insertEvent.setString(2, lastName);
            insertEvent.setString(3, phone);
            insertEvent.setString(4, email);
            insertEvent.setString(5, person_group);

            int result = insertEvent.executeUpdate();
            if (result > 0) {
                //JOptionPane.showMessageDialog(null, "Contact Successfully Added..!!", "Success", JOptionPane.INFORMATION_MESSAGE);
            } else {
                //JOptionPane.showMessageDialog(null, "Contact Adding Failed..!!", "Failed", JOptionPane.INFORMATION_MESSAGE);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }*/
}
