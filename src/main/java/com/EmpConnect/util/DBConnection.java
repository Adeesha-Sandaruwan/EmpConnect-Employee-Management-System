package com.EmpConnect.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
    public static Connection getConnection() {
        try {
        	String url = "jdbc:mysql://localhost:3306/empconnect";
            String username = "root"; 
            String password = "Adeesha@123";     
            Class.forName("com.mysql.cj.jdbc.Driver");
            return DriverManager.getConnection(url, username, password);
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Connection failed: " + e.getMessage());
            return null;
        }
    }
}

