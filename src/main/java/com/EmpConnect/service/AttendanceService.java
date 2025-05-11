package com.EmpConnect.service;

import com.EmpConnect.model.Attendance;
import com.EmpConnect.util.DBConnection;

import java.sql.*;

public class AttendanceService {

    // Add a new attendance record and store the calculated hours
    public boolean addAttendance(Attendance attendance) {
        String query = "INSERT INTO attendance (name, in_time, out_time, hours) VALUES (?, ?, ?, ?)";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {

            ps.setString(1, attendance.getName());
            ps.setString(2, attendance.getInTime());
            ps.setString(3, attendance.getOutTime());
            ps.setDouble(4, attendance.getHours());  // Insert the calculated hours

            int rowsAffected = ps.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // Delete an attendance record by ID
    public boolean deleteAttendance(int id) {
        String query = "DELETE FROM attendance WHERE id = ?";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {

            ps.setInt(1, id);
            int rowsAffected = ps.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // Update an existing attendance record
    public boolean updateAttendance(Attendance attendance) {
        String query = "UPDATE attendance SET name = ?, in_time = ?, out_time = ?, hours = ? WHERE id = ?";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {

            ps.setString(1, attendance.getName());
            ps.setString(2, attendance.getInTime());
            ps.setString(3, attendance.getOutTime());
            ps.setDouble(4, attendance.getHours());  // Update the hours
            ps.setInt(5, attendance.getId());

            int rowsAffected = ps.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // Retrieve all attendance records (can be used in a list or report view)
    public ResultSet getAllAttendances() {
        String query = "SELECT * FROM attendance ORDER BY id DESC";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(query);
             ResultSet rs = ps.executeQuery()) {

            return rs;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    // Retrieve a specific attendance record by ID (for updating purposes)
    public Attendance getAttendanceById(int id) {
        String query = "SELECT * FROM attendance WHERE id = ?";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {

            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                String name = rs.getString("name");
                String inTime = rs.getString("in_time");
                String outTime = rs.getString("out_time");
                double hours = rs.getDouble("hours");

                Attendance attendance = new Attendance(name, inTime, outTime, hours);
                attendance.setId(id);
                return attendance;
            } else {
                return null;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
}
