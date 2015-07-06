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
    String firstname = null;
    String lastname = null;
    String gender = null;
    String email = null;
    String username = null;
    String password = null;
    String address = null;
    String contact = null;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DatabaseConnection db = new DatabaseConnection();
        Connection conn = db.conn;

        firstname = request.getParameter("firstname");
        lastname = request.getParameter("lastname");
        gender = request.getParameter("gender");
        email = request.getParameter("email");
        username = request.getParameter("username");
        password = request.getParameter("password");
        address = request.getParameter("address");
        contact = request.getParameter("contact");

        System.out.print("name"+firstname);

        PreparedStatement pstmtInsertUser = null;
        try {
            String query = "insert into user (firstname,lastname,gender,email,username,password,address,contact) values (?,?,?,?,?,?,?,?)";
            System.out.println("query: "+query);

            pstmtInsertUser = conn.prepareStatement(query);

            pstmtInsertUser.setString(1,firstname);
            pstmtInsertUser.setString(2,lastname);
            pstmtInsertUser.setString(3,gender);
            pstmtInsertUser.setString(4,email);
            pstmtInsertUser.setString(5,username);
            pstmtInsertUser.setString(6,password);
            pstmtInsertUser.setString(7,address);
            pstmtInsertUser.setString(8,contact);

            int result = pstmtInsertUser.executeUpdate();
            if(result>0){
                System.out.print("Items Inserted in Database Successfully..!!!");
                request.setAttribute("registerSuccess", "Successfully Registered..!!");
                RequestDispatcher view = request.getRequestDispatcher("/view/pages/login.jsp");
                view.forward(request, response);
            }
            else {
                System.out.print("Insertion Failed..!!!");
            }
        }catch (SQLException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher resisterDispatcher = request.getRequestDispatcher("/view/login.jsp");
        resisterDispatcher.forward(request,response);
    }
 /*
    public void insertIntoDatabase(){}
   public void saveUserInDatabase(String[] person) {
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
