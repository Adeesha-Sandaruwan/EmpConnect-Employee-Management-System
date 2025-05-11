package com.EmpConnect.servlet;

import com.EmpConnect.model.Attendance;
import com.EmpConnect.service.AttendanceService;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.Time;

@WebServlet("/AttendanceAddServlet")
public class AttendanceAddServlet extends HttpServlet {
    private AttendanceService attendanceService;

    @Override
    public void init() {
        attendanceService = new AttendanceService();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String name = request.getParameter("name");
            String inTimeStr = request.getParameter("in_time");
            String outTimeStr = request.getParameter("out_time");

            // Validate time format
            Time inTime = null;
            Time outTime = null;
            try {
                inTime = Time.valueOf(inTimeStr + ":00");  // Ensure proper time format (HH:mm:ss)
                outTime = Time.valueOf(outTimeStr + ":00"); // Ensure proper time format (HH:mm:ss)
            } catch (IllegalArgumentException e) {
                // Handle invalid time format
                request.setAttribute("errorMessage", "Invalid time format. Please use HH:mm format.");
                request.getRequestDispatcher("attendance/attendance_error.jsp").forward(request, response);
                return;
            }

            // Calculate hours worked
            long diffInMillies = outTime.getTime() - inTime.getTime();
            double hours = (double) diffInMillies / (1000 * 60 * 60); // Convert milliseconds to hours

            Attendance att = new Attendance(name, inTimeStr, outTimeStr, hours);
            boolean result = attendanceService.addAttendance(att);

            if (result) {
                response.sendRedirect("attendance_crud/attendance_list.jsp");
            } else {
                response.sendRedirect("attendance/attendance_error.jsp");
            }
        } catch (Exception e) {
            // Handle other exceptions (e.g., missing parameters)
            request.setAttribute("errorMessage", "Error occurred while adding attendance.");
            request.getRequestDispatcher("attendance/attendance_error.jsp").forward(request, response);
        }
    }
}
