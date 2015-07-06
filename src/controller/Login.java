package controller;

import service.LoginAuthenticate;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by gunner on 7/1/15.
 */
public class Login extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        LoginAuthenticate lg = new LoginAuthenticate();
        HttpSession session = request.getSession();
        //CheckRoleOfUser ifadmin = new CheckRoleOfUser();

        if(session.getAttribute("username")!= null){
            response.sendRedirect(response.encodeRedirectURL("/success"));
        }

        try {
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            boolean check = lg.authenticate(username, password);

            if (check) {
                System.out.print("checking the user authentication..");
                session.setAttribute("username", username);
                System.out.print("Login Success");
                response.sendRedirect(response.encodeRedirectURL("/index"));
                /*if(ifadmin.checkIfAdmin(username)) {
                    response.sendRedirect(response.encodeRedirectURL("/success"));
                }
                else {
                    response.sendRedirect(response.encodeRedirectURL("/successUser"));
                }*/
                //response.sendRedirect("/success");
            } else {
                request.setAttribute("errorMessage", "Please submit a valid Username and Password..!!");
                request.setAttribute("failedUsername",username);
                RequestDispatcher view = request.getRequestDispatcher("/view/pages/login.jsp");
                view.forward(request, response);
            }
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        if (session.getAttribute("username") != null) {
            response.sendRedirect(response.encodeRedirectURL("/success"));
        } else {
            RequestDispatcher view = request.getRequestDispatcher("/view/pages/login.jsp");
            view.forward(request, response);
        }
    }
}
