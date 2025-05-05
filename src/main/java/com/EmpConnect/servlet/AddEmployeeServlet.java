package com.EmpConnect.servlet;

import com.EmpConnect.model.Employee;
import com.EmpConnect.service.EmployeeService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/AddEmployeeServlet")
public class AddEmployeeServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private EmployeeService employeeService;

    @Override
    public void init() throws ServletException {
        employeeService = new EmployeeService();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Get form data
        String fullname = request.getParameter("fullname");
        String username = request.getParameter("username");  
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String department = request.getParameter("department");
        String role = request.getParameter("role");  
        String password = request.getParameter("password");

        Employee emp = new Employee(0, fullname, username, email, phone, department, role, password); // ID is set to 0 for new employee

        boolean isSuccess = employeeService.createEmployee(emp);

        if (isSuccess) {
            response.sendRedirect("emp_crud/success.jsp");
        } else {
            response.sendRedirect("emp_crud/error.jsp");
        }
    }
}
