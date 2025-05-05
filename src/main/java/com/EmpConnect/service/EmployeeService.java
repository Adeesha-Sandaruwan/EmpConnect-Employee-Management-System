package com.EmpConnect.service;

import com.EmpConnect.model.Employee;
import com.EmpConnect.util.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class EmployeeService {

    // create
    public boolean createEmployee(Employee emp) {
        String query = "INSERT INTO employees (fullname, username, email, phone, department, role, password) VALUES (?, ?, ?, ?, ?, ?, ?)";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setString(1, emp.getFullname());
            stmt.setString(2, emp.getUsername());
            stmt.setString(3, emp.getEmail());
            stmt.setString(4, emp.getPhone());
            stmt.setString(5, emp.getDepartment());
            stmt.setString(6, emp.getRole());
            stmt.setString(7, emp.getPassword());

            return stmt.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    
    // read
    public Employee getEmployeeById(int id) {
        String query = "SELECT * FROM employees WHERE id = ?";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                return new Employee(
                        rs.getInt("id"),
                        rs.getString("fullname"),
                        rs.getString("username"),
                        rs.getString("email"),
                        rs.getString("phone"),
                        rs.getString("department"),
                        rs.getString("role"),
                        rs.getString("password")
                );
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null; 
    }

    //update
    public boolean updateEmployee(Employee emp) {
        String query = "UPDATE employees SET fullname = ?, username = ?, email = ?, phone = ?, department = ?, role = ?, password = ? WHERE id = ?";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setString(1, emp.getFullname());
            stmt.setString(2, emp.getUsername());
            stmt.setString(3, emp.getEmail());
            stmt.setString(4, emp.getPhone());
            stmt.setString(5, emp.getDepartment());
            stmt.setString(6, emp.getRole());
            stmt.setString(7, emp.getPassword());
            stmt.setInt(8, emp.getId());

            return stmt.executeUpdate() > 0; 
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false; 
    }
    

    //delete
    public boolean deleteEmployee(int id) {
        String query = "DELETE FROM employees WHERE id = ?";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setInt(1, id);
            return stmt.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}
