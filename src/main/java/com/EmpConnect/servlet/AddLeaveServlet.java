package com.EmpConnect.servlet;
import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.EmpConnect.model.Leave;
import com.EmpConnect.service.LeaveService;

@WebServlet("/AddLeaveServlet")
public class AddLeaveServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        try {
            Leave l = new Leave();
            l.setEmployeeId(Integer.parseInt(request.getParameter("employeeId")));
            l.setLeaveDate(request.getParameter("leaveDate"));
            l.setLeaveType(request.getParameter("leaveType"));
            l.setReason(request.getParameter("reason"));

            LeaveService service = new LeaveService();
            service.addLeave(l);
            response.sendRedirect("leave_crud/leave_list.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}