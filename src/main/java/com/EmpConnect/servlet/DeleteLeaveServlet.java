package com.EmpConnect.servlet;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.EmpConnect.service.EmployeeService;
import com.EmpConnect.service.LeaveService;

@WebServlet("/DeleteLeaveServlet")
public class DeleteLeaveServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            LeaveService service = new LeaveService();
            service.deleteLeave(id);
            response.sendRedirect("leave_crud/leave_list.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}