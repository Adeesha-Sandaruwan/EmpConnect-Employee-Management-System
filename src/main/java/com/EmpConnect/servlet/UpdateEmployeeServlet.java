package com.EmpConnect.servlet;

import com.EmpConnect.model.Employee;
import com.EmpConnect.service.EmployeeService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/UpdateEmployeeServlet")
public class UpdateEmployeeServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private EmployeeService employeeService;

    @Override
    public void init() throws ServletException {
        employeeService = new EmployeeService();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));
        Employee emp = employeeService.getEmployeeById(id);

        if (emp != null) {
            request.setAttribute("employee", emp);
            request.getRequestDispatcher("emp_crud/update_employee.jsp").forward(request, response);
        } else {
            response.sendRedirect("emp_crud/error.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));
        String fullname = request.getParameter("fullname");
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String department = request.getParameter("department");
        String role = request.getParameter("role");
        String password = request.getParameter("password");

        Employee emp = new Employee(id, fullname, username, email, phone, department, role, password);

        boolean isSuccess = employeeService.updateEmployee(emp);

        if (isSuccess) {
            response.sendRedirect("emp_crud/success.jsp");
        } else {
            response.sendRedirect("emp_crud/error.jsp");
        }
    }
}
