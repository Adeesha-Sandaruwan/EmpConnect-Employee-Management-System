package com.EmpConnect.servlet;

import com.EmpConnect.service.EmployeeService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/DeleteEmployeeServlet")
public class DeleteEmployeeServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private EmployeeService employeeService;

    @Override
    public void init() throws ServletException {
        employeeService = new EmployeeService();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String idStr = request.getParameter("id");

        try {
            int id = Integer.parseInt(idStr);
            boolean deleted = employeeService.deleteEmployee(id);

            if (deleted) {
                response.sendRedirect("emp_crud/success.jsp");
            } else {
            	response.sendRedirect("emp_crud/error.jsp");        
            	}

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().write("Error: " + e.getMessage());
        }
    }
}
