package com.EmpConnect.service;
import java.sql.*;
import java.util.*;

import com.EmpConnect.model.Leave;
import com.EmpConnect.util.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;



public class LeaveService {
    private Connection conn;

    public LeaveService() throws Exception {
        conn = DBConnection.getConnection(); // Ensure DBConnection.java exists
    }

    public void addLeave(Leave l) throws SQLException {
        String sql = "INSERT INTO leaves (employee_id, leave_date, leave_type, reason) VALUES (?, ?, ?, ?)";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setInt(1, l.getEmployeeId());
        ps.setString(2, l.getLeaveDate());
        ps.setString(3, l.getLeaveType());
        ps.setString(4, l.getReason());
        ps.executeUpdate();
    }

    public List<Leave> getAllLeaves() throws SQLException {
        List<Leave> list = new ArrayList<>();
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM leaves");
        while (rs.next()) {
            Leave l = new Leave();
            l.setLeaveId(rs.getInt("leave_id"));
            l.setEmployeeId(rs.getInt("employee_id"));
            l.setLeaveDate(rs.getString("leave_date"));
            l.setLeaveType(rs.getString("leave_type"));
            l.setReason(rs.getString("reason"));
            list.add(l);
        }
        return list;
    }

    public Leave getLeaveById(int id) throws SQLException {
        Leave l = new Leave();
        PreparedStatement ps = conn.prepareStatement("SELECT * FROM leaves WHERE leave_id=?");
        ps.setInt(1, id);
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            l.setLeaveId(rs.getInt("leave_id"));
            l.setEmployeeId(rs.getInt("employee_id"));
            l.setLeaveDate(rs.getString("leave_date"));
            l.setLeaveType(rs.getString("leave_type"));
            l.setReason(rs.getString("reason"));
        }
        return l;
    }

    public void updateLeave(Leave l) throws SQLException {
        String sql = "UPDATE leaves SET employee_id=?, leave_date=?, leave_type=?, reason=? WHERE leave_id=?";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setInt(1, l.getEmployeeId());
        ps.setString(2, l.getLeaveDate());
        ps.setString(3, l.getLeaveType());
        ps.setString(4, l.getReason());
        ps.setInt(5, l.getLeaveId());
        ps.executeUpdate();
    }

    public void deleteLeave(int id) throws SQLException {
        PreparedStatement ps = conn.prepareStatement("DELETE FROM leaves WHERE leave_id=?");
        ps.setInt(1, id);
        ps.executeUpdate();
    }
}