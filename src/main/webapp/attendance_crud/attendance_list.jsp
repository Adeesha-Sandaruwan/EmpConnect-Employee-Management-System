<%@ page import="java.sql.*, com.EmpConnect.util.DBConnection" %>
<!DOCTYPE html>
<html>
<head>
    <title>Attendance Records</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 p-6">
    <div class="max-w-5xl mx-auto bg-white p-4 rounded shadow">
        <h3 class="text-lg font-semibold mb-3 text-center text-gray-800">Attendance List</h3>
        <table class="w-full border text-sm">
            <tr class="bg-blue-100">
                <th class="border px-2 py-1">ID</th>
                <th class="border px-2 py-1">Name</th>
                <th class="border px-2 py-1">In Time</th>
                <th class="border px-2 py-1">Out Time</th>
                <th class="border px-2 py-1">Hours</th>
                <th colspan="2" class="border px-2 py-1">Action</th>
            </tr>
            <%
                try {
                    Connection conn = DBConnection.getConnection();
                    PreparedStatement ps = conn.prepareStatement("SELECT * FROM attendance ORDER BY id DESC");
                    ResultSet rs = ps.executeQuery();
                    while (rs.next()) {
            %>
            <tr class="even:bg-gray-50 odd:bg-white">
                <td class="border px-2 py-1"><%= rs.getInt("id") %></td>
                <td class="border px-2 py-1"><%= rs.getString("name") %></td>
                <td class="border px-2 py-1"><%= rs.getString("in_time") %></td>
                <td class="border px-2 py-1"><%= rs.getString("out_time") %></td>
                <td class="border px-2 py-1"><%= rs.getDouble("hours") %></td>
                <td class="border px-2 py-1">
                    <a href="<%=request.getContextPath()%>/AttendanceUpdateServlet?id=<%= rs.getInt("id") %>"
                       class="bg-green-600 text-white px-3 py-1 rounded hover:bg-green-700">Update</a>
                </td>
                <td class="border px-2 py-1">
                    <a href="<%=request.getContextPath()%>/AttendanceDeleteServlet?id=<%= rs.getInt("id") %>"
                       class="bg-red-600 text-white px-3 py-1 rounded hover:bg-red-700">Delete</a>
                </td>
            </tr>
            <%
                    }
                    rs.close();
                    ps.close();
                    conn.close();
                } catch (Exception e) {
                    out.println("<tr><td colspan='7' class='text-center text-red-600 py-2'>Error loading data.</td></tr>");
                }
            %>
        </table>
    </div>
</body>
</html>
