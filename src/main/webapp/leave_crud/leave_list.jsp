<%@ page import="java.sql.*" %>
<%@ page import="com.EmpConnect.util.DBConnection" %>
<%@ page import="java.util.List" %>
<%@ page import="com.EmpConnect.model.Leave" %>
<%@ page import="com.EmpConnect.service.LeaveService" %>
<%
    LeaveService service = new LeaveService();
    List<Leave> list = service.getAllLeaves();
%>

<!DOCTYPE html>
<html>
<head>
    <title>Leave List</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 p-6">
    <div class="max-w-5xl mx-auto bg-white shadow-lg rounded-xl p-6">
        <h2 class="text-2xl font-bold text-blue-600 mb-4 text-center">All Leave Records</h2>
        <table class="min-w-full bg-white border border-gray-300 text-sm text-left">
            <thead class="bg-gray-200 text-gray-700">
                <tr>
                    <th class="py-2 px-4 border">ID</th>
                    <th class="py-2 px-4 border">Employee ID</th>
                    <th class="py-2 px-4 border">Date</th>
                    <th class="py-2 px-4 border">Type</th>
                    <th class="py-2 px-4 border">Reason</th>
                    <th class="py-2 px-4 border">Actions</th>
                </tr>
            </thead>
            <tbody>
            <%
                for(Leave l : list){
            %>
                <tr class="hover:bg-gray-50">
                    <td class="py-2 px-4 border"><%= l.getLeaveId() %></td>
                    <td class="py-2 px-4 border"><%= l.getEmployeeId() %></td>
                    <td class="py-2 px-4 border"><%= l.getLeaveDate() %></td>
                    <td class="py-2 px-4 border"><%= l.getLeaveType() %></td>
                    <td class="py-2 px-4 border"><%= l.getReason() %></td>
                    <td class="py-2 px-4 border space-x-2">
                        <a href="<%= request.getContextPath() %>/leave_crud/update_leave.jsp?id=<%= l.getLeaveId() %>" 
                           class="text-blue-500 hover:underline">Edit</a>
                        <a href="<%= request.getContextPath() %>/DeleteLeaveServlet?id=<%= l.getLeaveId() %>" 
                           onclick="return confirm('Are you sure?')" 
                           class="text-red-500 hover:underline">Delete</a>
                    </td>
                </tr>
            <%
                }
            %>
            </tbody>
        </table>
        <div class="mt-6 text-center">
            <a href="<%= request.getContextPath() %>/leave_crud/LeaveDataInsert_Form.jsp" 
               class="inline-block bg-blue-500 text-white px-4 py-2 rounded-lg hover:bg-blue-600 transition">
               Apply New Leave
            </a>
        </div>
    </div>
</body>
</html>
