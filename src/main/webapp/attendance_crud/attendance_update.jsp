<%@ page import="com.EmpConnect.model.Attendance" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.EmpConnect.util.DBConnection" %>
<!DOCTYPE html>
<html>
<head>
    <title>Update Attendance</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 p-6">
    <div class="max-w-md mx-auto bg-white p-6 rounded shadow">
        <h2 class="text-xl font-bold mb-4 text-blue-700 text-center">
            Update Attendance
        </h2>
        
        <% 
            // Ensure the attendance object is not null before using it
            Attendance attendance = (Attendance) request.getAttribute("attendance");
            if (attendance != null) {
        %>

        <form action="<%=request.getContextPath()%>/AttendanceUpdateServlet" method="post" class="space-y-4">
            <input type="hidden" name="id" value="<%= attendance.getId() %>" />
            <input type="text" name="name" value="<%= attendance.getName() %>" class="w-full border px-4 py-2 rounded" required />
            <input type="time" name="in_time" value="<%= attendance.getInTime() %>" class="w-full border px-4 py-2 rounded" required />
            <input type="time" name="out_time" value="<%= attendance.getOutTime() %>" class="w-full border px-4 py-2 rounded" required />
            <button type="submit" class="w-full bg-blue-600 text-white py-2 rounded hover:bg-blue-700">Update</button>
        </form>

        <% } else { %>
            <p class="text-red-500">Attendance data not found.</p>
        <% } %>

    </div>
</body>
</html>
