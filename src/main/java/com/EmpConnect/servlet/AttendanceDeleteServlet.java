package com.EmpConnect.servlet;

import com.EmpConnect.service.AttendanceService;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/AttendanceDeleteServlet")
public class AttendanceDeleteServlet extends HttpServlet {
    private AttendanceService attendanceService;

    @Override
    public void init() {
        attendanceService = new AttendanceService();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        boolean result = attendanceService.deleteAttendance(id);

        if (result) {
            response.sendRedirect("attendance_crud/attendance_list.jsp");
        } else {
            response.sendRedirect("attendance/attendance_error.jsp");
        }
    }
}
