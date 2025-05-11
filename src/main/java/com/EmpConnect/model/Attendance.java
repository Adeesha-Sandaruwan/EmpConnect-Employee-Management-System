package com.EmpConnect.model;

public class Attendance {
    private int id;
    private String name;
    private String inTime;
    private String outTime;
    private double hours;

    // Constructor for creating a new attendance record
    public Attendance(String name, String inTime, String outTime, double hours) {
        this.name = name;
        this.inTime = inTime;
        this.outTime = outTime;
        this.hours = hours;
    }

    // Constructor for retrieving an existing attendance record (with ID)
    public Attendance(int id, String name, String inTime, String outTime, double hours) {
        this.id = id;
        this.name = name;
        this.inTime = inTime;
        this.outTime = outTime;
        this.hours = hours;
    }

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getInTime() {
        return inTime;
    }

    public void setInTime(String inTime) {
        this.inTime = inTime;
    }

    public String getOutTime() {
        return outTime;
    }

    public void setOutTime(String outTime) {
        this.outTime = outTime;
    }

    public double getHours() {
        return hours;
    }

    public void setHours(double hours) {
        this.hours = hours;
    }
}
