package com.EmpConnect.model;

public class Employee {
    private int id;
    private String fullname;
    private String username;
    private String email;
    private String phone;
    private String department;
    private String role;
    private String password;
	
    public Employee(int id, String fullname, String username, String email, String phone, String department,
			String role, String password) {

		this.id = id;
		this.fullname = fullname;
		this.username = username;
		this.email = email;
		this.phone = phone;
		this.department = department;
		this.role = role;
		this.password = password;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	
    // Constructors
    
    
}