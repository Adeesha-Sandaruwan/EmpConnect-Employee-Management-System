package com.EmpConnect.servlet;

import com.EmpConnect.model.Attendance;
import com.EmpConnect.service.AttendanceService;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.Time;

@WebServlet("/AttendanceUpdateServlet")
public class AttendanceUpdateServlet extends HttpServlet {
    private AttendanceService attendanceService;

    @Override
    public void init() {
        attendanceService = new AttendanceService();
    }

    // Handle GET request to show the attendance update form
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));

        // Fetch the attendance record from the database
        Attendance attendance = attendanceService.getAttendanceById(id);

        if (attendance != null) {
            // Set the attendance object in request scope
            request.setAttribute("attendance", attendance);
            RequestDispatcher dispatcher = request.getRequestDispatcher("attendance_crud/attendance_update.jsp");
            dispatcher.forward(request, response);
        } else {
            response.sendRedirect("attendance/attendance_error.jsp");
        }
    }

    // Handle POST request to update the attendance record
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String inTimeStr = request.getParameter("in_time");
        String outTimeStr = request.getParameter("out_time");

        // Calculate hours worked
        long diffInMillies = Time.valueOf(outTimeStr + ":00").getTime() - Time.valueOf(inTimeStr + ":00").getTime();
        double hours = (double) diffInMillies / (1000 * 60 * 60); // Convert milliseconds to hours

        Attendance att = new Attendance(id, name, inTimeStr, outTimeStr, hours);
        boolean result = attendanceService.updateAttendance(att);

        if (result) {
            response.sendRedirect("attendance_crud/attendance_list.jsp");
        } else {
            response.sendRedirect("attendance/attendance_error.jsp");
        }
    }
}
