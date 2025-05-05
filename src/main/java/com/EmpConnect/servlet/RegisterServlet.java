package com.EmpConnect.servlet;

import com.EmpConnect.util.DBConnection;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String fullname = request.getParameter("fullname");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String department = request.getParameter("department");
        String role = request.getParameter("role");

        String sql = "INSERT INTO employees (fullname, username, password, email, phone, department, role) " +
                     "VALUES (?, ?, ?, ?, ?, ?, ?)";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, fullname);
            ps.setString(2, username);
            ps.setString(3, password); // For production, always hash the password!
            ps.setString(4, email);
            ps.setString(5, phone);
            ps.setString(6, department);
            ps.setString(7, role);

            int rows = ps.executeUpdate();

            if (rows > 0) {
                response.sendRedirect("login.jsp");
            } else {
                response.sendRedirect("emp_crud/error.jsp");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("emp_crud/error.jsp");
        }
    }
}
